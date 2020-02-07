usingnamespace @import("lib/winapi.zig");
usingnamespace binding;

const std = @import("std");

const warn = std.debug.warn;

var alloc: *std.mem.Allocator = undefined;
pub fn main(hInstance: ?*c_void) c_uint {
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

    if (RegisterClassExW(&wndClass) == 0) return 0xFFFFFFFF;

    var hwnd = CreateWindowExW(0, appName, STW(alloc, "Hello, World"), WS_OVERLAPPEDWINDOW, CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT, null, null, hInstance, null) orelse return 0xFFFFFFFF;

    var aux = ShowWindow(hwnd, SW_SHOWDEFAULT);
    aux = UpdateWindow(hwnd);

    var msg: MSG = undefined;
    while (GetMessageW(&msg, null, 0, 0) > 0) {
        _ = TranslateMessage(&msg);
        _ = DispatchMessageW(&msg);
    }

    return @truncate(c_uint, msg.wParam);
}

fn proc_teste(hWnd: ?*c_void, msg: c_uint, wParam: usize, lParam: isize) callconv(.Stdcall) isize {
    switch (msg) {
        WM_CREATE => {
            const create_params = @intToPtr(*CREATESTRUCTW, @bitCast(usize, lParam));

            return 0;
        },
        WM_DESTROY => {
            PostQuitMessage(0);
            return 0;
        },
        else => return DefWindowProcW(hWnd, msg, wParam, lParam),
    }
}
