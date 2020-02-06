const std = @import("std");
usingnamespace @import("lib/winapi.zig");
usingnamespace @import("lib/winapi.zig").binding;
usingnamespace @import("lib/binding/dwrite.zig");
const warn = std.debug.warn;

var alloc: *std.mem.Allocator = undefined;

// leavind WinMain because wWinMain is not recognized as a main function
pub export fn WinMain(hInstance: ?*c_void, hPrevInstance: ?*c_void, szCmdLine: ?[*:0]u8, iCmdShow: c_int) callconv(.Stdcall) c_int {
    @setAlignStack(16);
    var factory: *IDWriteFactory = undefined;
    var heap = std.heap.HeapAllocator.init();
    defer heap.deinit();
    alloc = &heap.allocator;

    if (DWriteCreateFactory(DWRITE_FACTORY_TYPE.DWRITE_FACTORY_TYPE_ISOLATED, &IID_IDWriteFactory, @ptrCast(**c_void, &factory)) < 0)
        return -1;
    defer _ = factory.*.lpVtbl.*.iunknown.Release(@ptrCast(*IUnknown, factory));

    var fonts: *IDWriteFontCollection = undefined;

    if (factory.*.lpVtbl.*.GetSystemFontCollection(factory, &fonts, 0) < 0)
        return -1;
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

    // var heap = std.heap.HeapAllocator.init();
    // defer heap.deinit();
    // alloc = &heap.allocator;

    // const appName = STW(alloc, "HelloWin");

    // const initArgs = INITCOMMONCONTROLSEX { .dwICC = 0xFFFF };
    // if (InitCommonControlsEx(&initArgs) == 0) {
    //     warn("Could not Load common controls", .{});
    // }

    // var wndClass = WNDCLASSEXW{
    //     .style = CS_HREDRAW | CS_VREDRAW | CS_DBLCLKS,
    //     .lpfnWndProc = proc_teste,
    //     .cbClsExtra = 0,
    //     .cbWndExtra = 0,
    //     .hInstance = hInstance,
    //     .hIcon = LoadImageW(null, @intToPtr([*:0]const u16, OIC_SAMPLE), IMAGE_ICON, 0, 0, LR_DEFAULTSIZE | LR_SHARED),
    //     .hCursor = LoadImageW(null, @intToPtr([*:0]const u16, OCR_NORMAL), IMAGE_CURSOR, 0, 0, LR_DEFAULTSIZE | LR_SHARED),
    //     .hbrBackground = GetStockObject(WHITE_BRUSH),
    //     .lpszMenuName = null,
    //     .lpszClassName = appName,
    //     .hIconSm = LoadImageW(null, @intToPtr([*:0]const u16, OIC_SAMPLE), IMAGE_ICON, 0, 0, LR_DEFAULTSIZE | LR_SHARED),
    // };

    // if (RegisterClassExW(&wndClass) == 0) return -1;

    // var hwnd = CreateWindowExW(0, appName, STW(alloc, "Hello, World"), WS_OVERLAPPEDWINDOW, CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT, null, null, hInstance, null) orelse return -1;

    // var aux = ShowWindow(hwnd, SW_SHOWDEFAULT);
    // aux = UpdateWindow(hwnd);

    // var msg: MSG = undefined;
    // while (GetMessageW(&msg, null, 0, 0) > 0) {
    //     _ = TranslateMessage(&msg);
    //     _ = DispatchMessageW(&msg);
    // }

    // return @truncate(c_int, @bitCast(isize, msg.wParam));
}

var btn: ?*c_void = null;
fn proc_teste(hWnd: ?*c_void, msg: c_uint, wParam: usize, lParam: isize) callconv(.Stdcall) isize {
    switch (msg) {
        WM_CREATE => {
            const create_params = @intToPtr(*CREATESTRUCTW, @bitCast(usize, lParam));
            var info: NONCLIENTMETRICSW = std.mem.zeroes(NONCLIENTMETRICSW);
            info.cbSize = @sizeOf(NONCLIENTMETRICSW);

            if (SystemParametersInfoW(SPI_GETNONCLIENTMETRICS, @sizeOf(NONCLIENTMETRICSW), @ptrCast(?*c_void, &info), 0) != 0) {
                btn = CreateWindowExW(0, STW(alloc, "BUTTON"), STW(alloc, "PUSHBUTTON"), WS_TABSTOP | WS_CHILD | WS_VISIBLE | BS_PUSHBUTTON | BS_NOTIFY, 20, 20, 120, 40, hWnd, create_params.hInstance, null, null);
                var other = CreateWindowExW(0, STW(alloc, "BUTTON"), STW(alloc, "Neighbor"), WS_TABSTOP | WS_CHILD | WS_VISIBLE | BS_PUSHBUTTON | BS_NOTIFY, 180, 20, 120, 40, hWnd, create_params.hInstance, null, null);

                const font = CreateFontIndirectW(&info.lfMessageFont) orelse return 0;
                _ = SendMessageW(btn, WM_SETFONT, @ptrToInt(font), @boolToInt(false));
                _ = SendMessageW(other, WM_SETFONT, @ptrToInt(font), @boolToInt(false));
            }

            return 0;
        },
        WM_DESTROY => {
            const font = @intToPtr(?*c_void, @bitCast(usize, SendMessageW(btn, WM_GETFONT, 0, 0)));

            if (font != null) {
                _ = DeleteObject(font);
            }
            PostQuitMessage(0);
            return 0;
        },
        WM_PAINT => {
            var ps: PAINTSTRUCT = undefined;
            var hdc = BeginPaint(hWnd, &ps);
            defer _ = EndPaint(hWnd, &ps);

            const txt = STW(alloc, "Hello, Windows!!!");
            _ = DrawTextW(hdc, txt, -1, &ps.rcPaint, DT_SINGLELINE | DT_CENTER | DT_VCENTER);
            alloc.free(txt[0..18]);

            return DefWindowProcW(hWnd, msg, wParam, lParam);
        },
        WM_COMMAND => {
            switch ((wParam >> 16) & 0xFFFF) {
                BN_CLICKED => warn("clicked\n", .{}),
                BN_DBLCLK => warn("double clicked\n", .{}),
                BN_DISABLE => warn("disable\n", .{}),
                BN_HILITE => warn("highlite\n", .{}),
                BN_KILLFOCUS => warn("kill focus\n", .{}),
                BN_PAINT => warn("paint\n", .{}),
                BN_SETFOCUS => warn("got focus\n", .{}),
                BN_UNHILITE => warn("unhighlight\n", .{}),
                else => warn("other message: {}\n", .{wParam}),
            }
            warn("Command = {} - {} |=| {} - {}\n", .{ (wParam >> 16) & 0xFFFF, wParam & 0xFFFF, (lParam >> 16) & 0xFFFF, lParam & 0xFFFF });
            return 0;
        },
        else => return DefWindowProcW(hWnd, msg, wParam, lParam),
    }
}
