usingnamespace @import("lib/winapi.zig");
usingnamespace @import("lib/util.zig");

const std = @import("std");

const warn = std.debug.warn;
var alloc: *std.mem.Allocator = undefined;
pub fn empty(hInstance: ?*c_void) c_uint {
    var heap = std.heap.HeapAllocator.init();
    defer heap.deinit();
    alloc = &heap.allocator;

    const appName = STW(alloc, "HelloWin");
    defer alloc.free(appName);

    const initArgs = INITCOMMONCONTROLSEX{ .dwICC = 0xFFFF };
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

    var hwnd = CreateWindowExW(
        0,
        appName,
        STW(alloc, "Hello, World"),
        WS_OVERLAPPEDWINDOW,
        CW_USEDEFAULT,
        CW_USEDEFAULT,
        CW_USEDEFAULT,
        CW_USEDEFAULT,
        null,
        null,
        hInstance,
        null,
    ) orelse return 0xFFFFFFFF;

    var aux = ShowWindow(hwnd, SW_SHOWDEFAULT);
    aux = UpdateWindow(hwnd);

    var msg: MSG = undefined;
    while (GetMessageW(&msg, null, 0, 0) > 0) {
        _ = TranslateMessage(&msg);
        _ = DispatchMessageW(&msg);
    }

    return @truncate(c_uint, msg.wParam);

    fn proc_teste(hWnd: ?*c_void, msg: c_uint, wParam: usize, lParam: isize) callconv(.Stdcall) isize{switch (msg) {
        WM_CREATE => {
            const create_params = @intToPtr(*CREATESTRUCTW, @bitCast(usize, lParam));

            return 0;
        },
        WM_DESTROY => {
            PostQuitMessage(0);
            return 0;
        },
        else => return DefWindowProcW(hWnd, msg, wParam, lParam),
    }};
}

pub fn usingWindows(hInstance: ?*c_void) u32 {
    var heap = std.heap.HeapAllocator.init();
    defer heap.deinit();
    alloc = &heap.allocator;

    const appName = STW(alloc, "using_windows");
    defer alloc.free(appName);

    const initArgs = INITCOMMONCONTROLSEX{ .dwICC = 0x0FFF };
    if (InitCommonControlsEx(&initArgs) == 0) {
        warn("Could not Load common controls", .{});
    }

    var wndClass = WNDCLASSEXW{
        .style = CS_HREDRAW | CS_VREDRAW | CS_DBLCLKS,
        .lpfnWndProc = procedure,
        .cbClsExtra = 0,
        .cbWndExtra = 0,
        .hInstance = hInstance,
        .hIcon = LoadImageW(null, @ptrCast([*:0]const u16, @intToPtr(*c_void, OIC_WINLOGO)), IMAGE_ICON, 0, 0, LR_DEFAULTSIZE | LR_SHARED),
        .hCursor = LoadImageW(null, @ptrCast([*:0]const u16, @intToPtr(*c_void, OCR_NORMAL)), IMAGE_CURSOR, 0, 0, LR_DEFAULTSIZE | LR_SHARED),
        .hbrBackground = GetStockObject(WHITE_BRUSH),
        .lpszMenuName = null,
        .lpszClassName = appName,
        .hIconSm = LoadImageW(null, @ptrCast([*:0]const u16, @intToPtr(*c_void, OIC_WINLOGO)), IMAGE_ICON, 0, 0, LR_DEFAULTSIZE | LR_SHARED),
    };

    if (RegisterClassExW(&wndClass) == 0) return 0xFFFFFFFF;

    var hwnd = CreateWindowExW(
        0,
        appName.ptr,
        appName.ptr,
        WS_OVERLAPPEDWINDOW | WS_HSCROLL | WS_VSCROLL,
        CW_USEDEFAULT,
        CW_USEDEFAULT,
        CW_USEDEFAULT,
        CW_USEDEFAULT,
        null,
        null,
        hInstance,
        null,
    ) orelse return 0xFFFFFFFF;

    _ = ShowWindow(hwnd, SW_SHOWDEFAULT);
    _ = UpdateWindow(hwnd);

    var msg: MSG = undefined;
    while (GetMessageW(&msg, null, 0, 0) > 0) {
        _ = TranslateMessage(&msg);
        _ = DispatchMessageW(&msg);
    }

    return @truncate(u32, msg.wParam);
}

fn procedure(hwnd: ?*c_void, msg: u32, wparam: usize, lparam: isize) callconv(.Stdcall) isize {
    switch (msg) {
        WM_CREATE => {
            var i: usize = 0;
            while (i < 3) : (i += 1) {
                const childName = STW(alloc, "static");
                defer alloc.free(childName);

                var create: *CREATESTRUCTW = @intToPtr(*CREATESTRUCTW, @bitCast(usize, lparam));

                _ = CreateWindowExW(
                    0,
                    childName.ptr,
                    null,
                    WS_CHILD | WS_BORDER,
                    0,0,0,0,
                    hwnd,
                    @intToPtr(*allowzero c_void, i),
                    create.*.hInstance,
                    null
                );
            }

            return 0;
        },
        WM_SIZE => {
            var rc: RECT = undefined;
            _ = GetClientRect(hwnd, &rc);

            _ = EnumChildWindows(hwnd, enumChildProc, @bitCast(isize, @ptrToInt(&rc)));
            return 0;
        },
        WM_CLOSE => {
            const confirm = STW(alloc, "You are sure you want to close the window?");
            const caption = STW(alloc, "Generic caption");
            defer {
                alloc.free(confirm);
                alloc.free(caption);
            }

            if (MessageBoxW(hwnd, confirm, caption, MB_YESNOCANCEL) == IDYES) {
                _ = DestroyWindow(hwnd);
            }

            return 0;
        },
        WM_DESTROY => {
            PostQuitMessage(0);
            return 0;
        },
        else => return DefWindowProcW(hwnd, msg, wparam, lparam),
    }
}

fn enumChildProc(hwnd: *c_void, lparam: isize) callconv(.Stdcall) i32 {
    const id = GetWindowLongPtrW(hwnd, GWLP_ID);

    var rc_parent = @intToPtr(*RECT, @bitCast(usize, lparam));
    _ = MoveWindow(
        hwnd,
        @divTrunc(rc_parent.*.right, 3) * @truncate(i32, id),
        0,
        @divTrunc(rc_parent.*.right, 3),
        rc_parent.*.bottom,
        1,
    );

    _ = ShowWindow(hwnd, SW_SHOW);

    return 1;
}