usingnamespace @import("lib/binding/dcommon.zig");
usingnamespace @import("lib/binding/dxgitype.zig");
usingnamespace @import("lib/binding/d2d1.zig");
usingnamespace @import("lib/binding/dwrite.zig");
usingnamespace @import("lib/binding/unknwn.zig");
usingnamespace @import("lib/winapi.zig");
usingnamespace binding;
usingnamespace @import("lib/util.zig");
usingnamespace @import("lib/binding/dxgiformat.zig");

const std = @import("std");

const warn = std.debug.warn;

pub fn listSystemFonts(hInstance: ?*c_void) c_uint {
    var factory: *IDWriteFactory = undefined;
    var heap = std.heap.HeapAllocator.init();
    defer heap.deinit();
    var alloc = &heap.allocator;

    if (DWriteCreateFactory(DWRITE_FACTORY_TYPE.DWRITE_FACTORY_TYPE_ISOLATED, &IID_IDWriteFactory, @ptrCast(**c_void, &factory)) < 0)
        return 0xFFFFFFFF;
    defer _ = factory.*.lpVtbl.*.iunknown.Release(@ptrCast(*IUnknown, factory));

    var fonts: *IDWriteFontCollection = undefined;

    if (factory.*.lpVtbl.*.GetSystemFontCollection(factory, &fonts, 0) < 0)
        return 0xFFFFFFFF;
    defer _ = fonts.*.lpVtbl.*.iunknown.Release(@ptrCast(*IUnknown, fonts));

    var family_count = fonts.*.lpVtbl.*.GetFontFamilyCount(fonts);

    var i: usize = 0;
    while (i < family_count) : (i += 1) {
        var font_family: *IDWriteFontFamily = undefined;

        if (fonts.*.lpVtbl.*.GetFontFamily(fonts, @truncate(c_uint, i), &font_family) < 0)
            continue;
        defer _ = font_family.*.lpVtbl.*.idwritefontlist.iunknown.Release(@ptrCast(*IUnknown, font_family));

        var family_names: *IDWriteLocalizedStrings = undefined;

        if (font_family.*.lpVtbl.*.GetFamilyNames(font_family, &family_names) < 0)
            continue;
        defer _ = family_names.*.lpVtbl.*.iunknown.Release(@ptrCast(*IUnknown, family_names));

        var locale_name = [_]u16{0} ** LOCALE_NAME_MAX_LENGTH;
        var index: c_uint = 0;
        var exists: c_int = 0;

        var default_locale_success = GetUserDefaultLocaleName(&locale_name, LOCALE_NAME_MAX_LENGTH);

        if (default_locale_success != 0) {
            if (family_names.*.lpVtbl.*.FindLocaleName(family_names, @ptrCast([*:0]u16, &locale_name), &index, &exists) < 0)
                continue;
        }

        if (exists == 0) {
            var locale = STW(alloc, "en-us");
            defer alloc.free(locale[0..6 :0]);

            if (family_names.*.lpVtbl.*.FindLocaleName(family_names, locale, &index, &exists) < 0)
                continue;
        }

        if (exists == 0)
            index = 0;

        var length: c_uint = 0;

        if (family_names.*.lpVtbl.*.GetStringLength(family_names, index, &length) < 0)
            continue;

        var name = alloc.alloc(u16, length + 1) catch continue;
        defer alloc.free(name);

        if (family_names.*.lpVtbl.*.GetString(family_names, index, @ptrCast([*:0]u16, name.ptr), length + 1) < 0)
            continue;

        warn("{}\n", .{WTS(alloc, @ptrCast([*:0]const u16, name.ptr)[0..length :0])});
    }

    return 0;
}

var alloc: *std.mem.Allocator = undefined;
//https://docs.microsoft.com/en-gb/windows/win32/directwrite/getting-started-with-directwrite#drawing-simple-text
pub fn drawingSimpleText(hInstance: ?*c_void) c_uint {
    var heap = std.heap.HeapAllocator.init();
    defer heap.deinit();
    alloc = &heap.allocator;

    const appName = STW(alloc, "simple_text");
    defer free(alloc, appName);

    const initArgs = INITCOMMONCONTROLSEX{ .dwICC = 0xFFFF };
    if (InitCommonControlsEx(&initArgs) == 0) {
        warn("Could not Load common controls", .{});
    }

    var wndClass = WNDCLASSEXW{
        .style = CS_HREDRAW | CS_VREDRAW | CS_DBLCLKS,
        .lpfnWndProc = simpleTextProc,
        .cbClsExtra = 0,
        .cbWndExtra = 0,
        .hInstance = hInstance,
        .hIcon = LoadImageW(null, @intToPtr([*:0]const u16, OIC_SAMPLE), IMAGE_ICON, 0, 0, LR_DEFAULTSIZE | LR_SHARED),
        .hCursor = LoadImageW(null, @intToPtr([*:0]const u16, OCR_NORMAL), IMAGE_CURSOR, 0, 0, LR_DEFAULTSIZE | LR_SHARED),
        .hbrBackground = GetStockObject(WHITE_BRUSH),
        .lpszMenuName = null,
        .lpszClassName = appName,
        .hIconSm = LoadImageW(null, @intToPtr([*:0]const u16, OIC_SAMPLE), IMAGE_ICON, 0, 0, LR_DEFAULTSIZE | LR_SHARED),
    };

    if (RegisterClassExW(&wndClass) == 0) return 0xFFFFFFFF;

    const caption = STW(alloc, "Drawing a simple text with DirectWrite");
    defer free(alloc, caption);

    var hwnd = CreateWindowExW(0, appName, caption, WS_OVERLAPPEDWINDOW, CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT, null, null, hInstance, null) orelse return 0xFFFFFFFF;

    var aux = ShowWindow(hwnd, SW_SHOWDEFAULT);
    aux = UpdateWindow(hwnd);

    var msg: MSG = undefined;
    while (GetMessageW(&msg, null, 0, 0) > 0) {
        _ = TranslateMessage(&msg);
        _ = DispatchMessageW(&msg);
    }

    return @truncate(c_uint, msg.wParam);
}

const Params = struct {
    write_fac: *IDWriteFactory,
    txt_fmt: *IDWriteTextFormat,
    d2d_fac: *ID2D1Factory,
    render_tgt: ?*ID2D1HwndRenderTarget,
    black_brush: ?*ID2D1SolidColorBrush,
    text: [*:0]u16,
    font: [*:0]u16,
    locale: [*:0]u16,
};

var par: Params = undefined;
fn simpleTextProc(hwnd: ?*c_void, msg: c_uint, wparam: usize, lparam: isize) callconv(.Stdcall) isize {
    switch (msg) {
        WM_CREATE => {
            const fac_opt = D2D1_FACTORY_OPTIONS{
                .debugLevel = D2D1_DEBUG_LEVEL.D2D1_DEBUG_LEVEL_INFORMATION,
            };

            if (D2D1CreateFactory(D2D1_FACTORY_TYPE.D2D1_FACTORY_TYPE_SINGLE_THREADED, &IID_ID2D1Factory, &fac_opt, @ptrCast(**c_void, &par.d2d_fac)) < 0)
                return -1;

            if (DWriteCreateFactory(DWRITE_FACTORY_TYPE.DWRITE_FACTORY_TYPE_SHARED, &IID_IDWriteFactory, @ptrCast(**c_void, &par.write_fac)) < 0)
                return -1;

            par.text = STW(alloc, "Hello World using DirectWrite!");
            par.font = STW(alloc, "Gabriola");
            par.locale = STW(alloc, "en-us");

            if (par.write_fac.*.lpVtbl.*.CreateTextFormat(par.write_fac, par.font, null, DWRITE_FONT_WEIGHT.DWRITE_FONT_WEIGHT_REGULAR, DWRITE_FONT_STYLE.DWRITE_FONT_STYLE_NORMAL, DWRITE_FONT_STRETCH.DWRITE_FONT_STRETCH_NORMAL, 72, par.locale, &par.txt_fmt) < 0)
                return -1;

            if (par.txt_fmt.*.lpVtbl.*.SetTextAlignment(par.txt_fmt, DWRITE_TEXT_ALIGNMENT.DWRITE_TEXT_ALIGNMENT_CENTER) < 0)
                return -1;

            if (par.txt_fmt.*.lpVtbl.*.SetParagraphAlignment(par.txt_fmt, DWRITE_PARAGRAPH_ALIGNMENT.DWRITE_PARAGRAPH_ALIGNMENT_CENTER) < 0)
                return -1;

            return 0;
        },
        WM_PAINT => {
            var rc: RECT = undefined;
            if (GetClientRect(hwnd, &rc) == 0)
                return 0;

            const rt_prop = D2D1_RENDER_TARGET_PROPERTIES{
                ._type = D2D1_RENDER_TARGET_TYPE.D2D1_RENDER_TARGET_TYPE_DEFAULT,
                .pixelFormat = .{
                    .format = DXGI_FORMAT.DXGI_FORMAT_UNKNOWN,
                    .alphaMode = D2D1_ALPHA_MODE.D2D1_ALPHA_MODE_UNKNOWN,
                },
                .dpiX = 0,
                .dpiY = 0,
                .usage = D2D1_RENDER_TARGET_USAGE.D2D1_RENDER_TARGET_USAGE_NONE,
                .minLevel = D2D1_FEATURE_LEVEL.D2D1_FEATURE_LEVEL_DEFAULT,
            };
            const hwnd_prop = D2D1_HWND_RENDER_TARGET_PROPERTIES{
                .hwnd = hwnd,
                .pixelSize = .{
                    .width = @intCast(c_uint, rc.right - rc.left),
                    .height = @intCast(c_uint, rc.bottom - rc.top),
                },
                .presentOptions = D2D1_PRESENT_OPTIONS.D2D1_PRESENT_OPTIONS_NONE,
            };

            if (par.d2d_fac.*.lpVtbl.*.CreateHwndRenderTarget(par.d2d_fac, &rt_prop, &hwnd_prop, @ptrCast(**ID2D1HwndRenderTarget, &par.render_tgt)) < 0) {
                par.render_tgt = null;
                return 0;
            }
            defer _ = par.render_tgt.?.*.lpVtbl.*.id2d1rendertarget.id2d1resource.iunknown.Release(@ptrCast(*IUnknown, par.render_tgt.?));

            const black = D3DCOLORVALUE{
                .r = 0,
                .g = 0,
                .b = 0,
                .a = 1,
            };

            if (par.render_tgt.?.*.lpVtbl.*.id2d1rendertarget.CreateSolidColorBrush(@ptrCast(*ID2D1RenderTarget, par.render_tgt.?), &black, null, @ptrCast(**ID2D1SolidColorBrush, &par.black_brush)) < 0) {
                par.black_brush = null;
                return 0;
            }
            defer _ = par.black_brush.?.*.lpVtbl.*.id2d1brush.id2d1resource.iunknown.Release(@ptrCast(*IUnknown, par.black_brush.?));

            par.render_tgt.?.*.lpVtbl.id2d1rendertarget.BeginDraw(@ptrCast(*ID2D1RenderTarget, par.render_tgt.?));
            defer warn("{}\n", .{par.render_tgt.?.*.lpVtbl.id2d1rendertarget.EndDraw(@ptrCast(*ID2D1RenderTarget, par.render_tgt.?), null, null)});

            const identity = D2D1_MATRIX_3X2_F{
                .matrix = .{
                    ._11 = 1,
                    ._12 = 0,
                    ._21 = 0,
                    ._22 = 1,
                    ._31 = 0,
                    ._32 = 0,
                },
            };

            par.render_tgt.?.*.lpVtbl.id2d1rendertarget.SetTransform(@ptrCast(*ID2D1RenderTarget, par.render_tgt.?), &identity);

            const white = D3DCOLORVALUE{
                .r = 1,
                .g = 1,
                .b = 1,
                .a = 1,
            };

            par.render_tgt.?.*.lpVtbl.id2d1rendertarget.Clear(@ptrCast(*ID2D1RenderTarget, par.render_tgt.?), &white);

            var d2d_rc = D2D_RECT_F{
                .left = @intToFloat(f32, rc.left),
                .top = @intToFloat(f32, rc.top),
                .right = @intToFloat(f32, rc.right),
                .bottom = @intToFloat(f32, rc.bottom),
            };

            par.render_tgt.?.*.lpVtbl.id2d1rendertarget.DrawText(@ptrCast(*ID2D1RenderTarget, par.render_tgt.?), par.text, @truncate(c_uint, len(par.text)), par.txt_fmt, &d2d_rc, @ptrCast(*ID2D1Brush, par.black_brush.?), D2D1_DRAW_TEXT_OPTIONS.D2D1_DRAW_TEXT_OPTIONS_NONE, DWRITE_MEASURING_MODE.DWRITE_MEASURING_MODE_NATURAL);

            return 0;
        },
        WM_DESTROY => {
            free(alloc, par.text);
            free(alloc, par.font);
            free(alloc, par.locale);

            _ = par.txt_fmt.*.lpVtbl.iunknown.Release(@ptrCast(*IUnknown, par.txt_fmt));
            _ = par.write_fac.*.lpVtbl.iunknown.Release(@ptrCast(*IUnknown, par.write_fac));
            _ = par.d2d_fac.*.lpVtbl.iunknown.Release(@ptrCast(*IUnknown, par.d2d_fac));

            PostQuitMessage(0);

            return 0;
        },
        else => return DefWindowProcW(hwnd, msg, wparam, lparam),
    }
}
