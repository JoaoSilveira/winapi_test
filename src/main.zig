const std = @import("std");
usingnamespace @import("lib/winapi.zig");
usingnamespace @import("lib/winapi.zig").binding;
const warn = std.debug.warn;

var alloc: *std.mem.Allocator = undefined;

// leavind WinMain because wWinMain is not recognized as a main function
pub export fn WinMain(hInstance: ?*c_void, hPrevInstance: ?*c_void, szCmdLine: ?[*:0]u8, iCmdShow: c_int) callconv(.Stdcall) c_int {
    @setAlignStack(16);

    var heap = std.heap.HeapAllocator.init();
    defer heap.deinit();
    alloc = &heap.allocator;

    const appName = STW(alloc, "HelloWin");
    
    const initArgs = INITCOMMONCONTROLSEX { .dwICC = 0xFFFF };
    if (InitCommonControlsEx(&initArgs) == 0) {
        warn("Could not Load common controls", .{});
    }

    var wndClass = WNDCLASSEXW{
        .style = CS_HREDRAW | CS_VREDRAW | CS_DBLCLKS,
        .lpfnWndProc = proc_teste,
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

    if (RegisterClassExW(&wndClass) == 0) return -1;

    var hwnd = CreateWindowExW(0, appName, STW(alloc, "Hello, World"), WS_OVERLAPPEDWINDOW, CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT, null, null, hInstance, null) orelse return -1;

    var aux = ShowWindow(hwnd, SW_SHOWDEFAULT);
    aux = UpdateWindow(hwnd);

    var msg: MSG = undefined;
    while (GetMessageW(&msg, null, 0, 0) > 0) {
        _ = TranslateMessage(&msg);
        _ = DispatchMessageW(&msg);
    }

    return @truncate(c_int, @bitCast(isize, msg.wParam));
}

var hwnd_button : ?*c_void = null;

fn proc_teste(hWnd: ?*c_void, msg: c_uint, wParam: usize, lParam: isize) callconv(.Stdcall) isize {
    
    switch (msg) {
        WM_CREATE => {
            const create_params = @intToPtr(*CREATESTRUCTW, @bitCast(usize, lParam));
            var info: NONCLIENTMETRICSW = std.mem.zeroes(NONCLIENTMETRICSW);
            info.cbSize = @sizeOf(NONCLIENTMETRICSW);

            if (SystemParametersInfoW(SPI_GETNONCLIENTMETRICS, @sizeOf(NONCLIENTMETRICSW), @ptrCast(?*c_void, &info), 0) != 0) {
                const btn = CreateWindowExW(0, STW(alloc, "BUTTON"), STW(alloc, "PUSHBUTTON"), WS_TABSTOP | WS_CHILD | WS_VISIBLE | BS_PUSHBUTTON, 20, 20, 120, 40, hWnd, create_params.hInstance, null, null);

                const font = CreateFontIndirectW(&info.lfMessageFont) orelse return 0;
                _ = SendMessageW(btn, WM_SETFONT, @ptrToInt(font), @boolToInt(true));
                //_ = DeleteObject(font);
            }

            return 0;
        },
        WM_DESTROY => {
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
            warn("Command = {} - {} |=| {} - {}\n", .{(wParam >> 16) & 0xFFFF, wParam & 0xFFFF, (lParam >> 16) & 0xFFFF, lParam & 0xFFFF });
            return 0;
        },
        WM_NOTIFY => {
            const nmhdr = @intToPtr(*NMHDR, @bitCast(usize, lParam));

            warn("{}\n", .{ @bitCast(c_int, nmhdr.code) });
            // switch (nmhdr.code) {
            //     BN_CLICKED => warn("Clicked\n\n", .{}),
            //     else => {},
            // }
            return 0;
        },
        else => return DefWindowProcW(hWnd, msg, wParam, lParam),
    }
}
