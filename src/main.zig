const std = @import("std");
usingnamespace @import("lib/winapi.zig").binding;
const warn = std.debug.warn;

pub export fn WinMain(hInstance: ?*c_void, hPrevInstance: ?*c_void, szCmdLine: ?[*:0]u8, iCmdShow: c_int) callconv(.Stdcall) c_int {
    @setAlignStack(16);
    const appName = "HelloWin";
    
    const initArgs = INITCOMMONCONTROLSEX { .dwICC = 0xFFFF };
    if (InitCommonControlsEx(&initArgs) == 0) {
        warn("Could not Load common controls", .{});
    }

    var wndClass = WNDCLASSA{
        .style = CS_HREDRAW | CS_VREDRAW | CS_DBLCLKS,
        .lpfnWndProc = proc_teste,
        .cbClsExtra = 0,
        .cbWndExtra = 0,
        .hInstance = hInstance,
        .hIcon = LoadIconA(null, @intToPtr([*:0]const u8, IDI_APPLICATION)),
        .hCursor = LoadCursorA(null, @intToPtr([*:0]const u8, IDC_ARROW)),
        .hbrBackground = GetStockObject(WHITE_BRUSH),
        .lpszMenuName = null,
        .lpszClassName = appName,
    };

    if (RegisterClassA(&wndClass) == 0) return -1;

    var hwnd = CreateWindowExA(0, appName, "Hello, World", WS_OVERLAPPEDWINDOW, CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT, null, null, hInstance, null);

    if (hwnd == null) return -1;

    _ = ShowWindow(hwnd, SW_SHOWDEFAULT);
    _ = UpdateWindow(hwnd);

    var msg: MSG = undefined;
    while (GetMessageA(&msg, null, 0, 0) > 0) {
        _ = TranslateMessage(&msg);
        _ = DispatchMessageA(&msg);
    }

    return @truncate(c_int, @bitCast(isize, msg.wParam));
}

var hwnd_button : ?*c_void = null;

fn proc_teste(hWnd: ?*c_void, msg: c_uint, wParam: usize, lParam: isize) callconv(.Stdcall) isize {
    
    switch (msg) {
        WM_CREATE => {
            const create_params = @intToPtr(*CREATESTRUCTA, @bitCast(usize, lParam));

            _ = CreateWindowExA(0, "BUTTON", "PUSHBUTTON", WS_TABSTOP | WS_CHILD | WS_VISIBLE | BS_PUSHBUTTON, 20, 20, 120, 40, hWnd, create_params.hInstance, null, null);

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

            _ = DrawTextA(hdc, "Hello, Windows!!!", -1, &ps.rcPaint, DT_SINGLELINE | DT_CENTER | DT_VCENTER);

            return DefWindowProcA(hWnd, msg, wParam, lParam);
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
        else => return DefWindowProcA(hWnd, msg, wParam, lParam),
    }
}
