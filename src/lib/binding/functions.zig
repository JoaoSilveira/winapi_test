usingnamespace @import("structs.zig");

pub extern "user32" fn BeginPaint(hWnd: *c_void, lpPaint: *PAINTSTRUCT) callconv(.Stdcall) ?*c_void;
pub extern "user32" fn CreateWindowExW(dwExStyle: u32, lpClassName: ?[*:0]const u16, lpWindowName: ?[*:0]const u16, dwStyle: u32, X: i32, Y: i32, nWidth: i32, nHeight: i32, hWndParent: ?*c_void, hMenu: ?*c_void, hInstance: ?*c_void, lpParam: ?*c_void) callconv(.Stdcall) ?*c_void;
pub extern "user32" fn DefWindowProcW(hWnd: ?*c_void, Msg: u32, wParam: usize, lParam: isize) callconv(.Stdcall) isize;
pub extern "user32" fn DispatchMessageW(lpMsg: *const MSG) callconv(.Stdcall) isize;
pub extern "user32" fn DrawTextW(hDC: *c_void, lpchText: ?[*:0]const u16, cchText: i32, lprc: *RECT, format: u32) callconv(.Stdcall) i32;
pub extern "user32" fn EndPaint(hWnd: *c_void, lpPaint: *const PAINTSTRUCT) callconv(.Stdcall) i32;
pub extern "user32" fn FillRect(hDC: *c_void, lprc: *const RECT, hbr: *c_void) callconv(.Stdcall) i32;
pub extern "user32" fn GetMessageW(lpMsg: *MSG, hWnd: ?*c_void, wMsgFilterMin: u32, wMsgFilterMax: i32) callconv(.Stdcall) i32;
pub extern "user32" fn LoadCursorW(hInstance: ?*c_void, lpCursorName: ?[*:0]const u16) callconv(.Stdcall) ?*c_void;
pub extern "user32" fn LoadIconW(hInstance: ?*c_void, lpIconName: ?[*:0]const u16) callconv(.Stdcall) ?*c_void;
pub extern "user32" fn LoadImageW(hInst: ?*c_void, name: ?[*:0]const u16, wType: u32, cx: i32, cy: i32, fuLoad: u32) callconv(.Stdcall) ?*c_void;
pub extern "user32" fn MessageBoxW(hwnd: ?*c_void, text: [*:0]const u16, caption: [*:0]const u16, style: u32) callconv(.Stdcall) i32;
pub extern "user32" fn PeekMessageW(lpMsg: *MSG, hWnd: ?*c_void, wMsgFilterMin: u32, wMsgFilterMax: i32, wRemoveMsg: u32) i32;
pub extern "user32" fn PostQuitMessage(nExitCode: i32) callconv(.Stdcall) void;
pub extern "user32" fn RegisterClassExW(lpWndClass: *const WNDCLASSEXW) callconv(.Stdcall) u16;
pub extern "user32" fn RegisterClassW(lpWndClass: *const WNDCLASSW) callconv(.Stdcall) u16;
pub extern "user32" fn ShowWindow(hWnd: *c_void, nCmdShow: i32) callconv(.Stdcall) i32;
pub extern "user32" fn SystemParametersInfoW(uiAction: u32, uiParam: u32, pvParam: ?*c_void, fWinIni: u32) callconv(.Stdcall) u32;
pub extern "user32" fn TranslateMessage(lpMsg: *const MSG) callconv(.Stdcall) i32;
pub extern "user32" fn UpdateWindow(hWnd: *c_void) callconv(.Stdcall) i32;
pub extern "user32" fn SendMessageW(hWnd: ?*c_void, Msg: u32, wParam: usize, lParam: isize) callconv(.Stdcall) isize;
pub extern "user32" fn GetClientRect(hWnd: *c_void, lpRect: *RECT) callconv(.Stdcall) i32;
pub extern "user32" fn EnumChildWindows(hWnd: ?*c_void, lpEnumFunc: fn(*c_void, isize) callconv(.Stdcall) i32, lParam: isize) callconv(.Stdcall) i32;
pub extern "user32" fn GetWindowLongW(hWnd: *c_void, nIndex: i32) callconv(.Stdcall) i32;
pub extern "user32" fn GetWindowLongPtrW(hWnd: *c_void, nIndex: i32) callconv(.Stdcall) isize;
pub extern "user32" fn MoveWindow(hWnd: *c_void, X: i32, Y: i32, nWidth: i32, nHeight: i32, bRepaint: i32) callconv(.Stdcall) i32;
pub extern "user32" fn DestroyWindow(hWnd: *c_void) callconv(.Stdcall) i32;

pub extern "comctl32" fn InitCommonControls() callconv(.Stdcall) void;
pub extern "comctl32" fn InitCommonControlsEx(picce: *const INITCOMMONCONTROLSEX) callconv(.Stdcall) i32;

pub extern "kernel32" fn FreeLibrary(hLibModule: *c_void) callconv(.Stdcall) i32;
pub extern "kernel32" fn GetModuleHandleW(lpModuleName: ?[*:0]const u16) callconv(.Stdcall) ?*c_void;
pub extern "kernel32" fn GetProcAddress(hModule: *c_void, lpProcName: [*:0]const u8) callconv(.Stdcall) ?(fn () callconv(.Stdcall) isize);
pub extern "kernel32" fn LoadLibraryW(lpLibFineName: [*:0]const u16) callconv(.Stdcall) ?*c_void;
pub extern "kernel32" fn GetUserDefaultLocaleName(lpLocaleName: [*]u16, ccLocaleName: i32) callconv(.Stdcall) i32;
pub extern "kernel32" fn ExitProcess(exit_code: u32) callconv(.Stdcall) noreturn;
pub extern "kernel32" fn GetLastError() callconv(.Stdcall) u16;

pub extern "gdi32" fn GetStockObject(i: i32) callconv(.Stdcall) ?*c_void;
pub extern "gdi32" fn CreateFontIndirectW(lplf: *LOGFONTW) callconv(.Stdcall) ?*c_void;
pub extern "gdi32" fn DeleteObject(ho: ?*c_void) callconv(.Stdcall) i32;

pub fn DEFINE_GUID(comptime l: u32, comptime w1: u16, comptime w2: u16, comptime b1: u8, comptime b2: u8, comptime b3: u8, comptime b4: u8, comptime b5: u8, comptime b6: u8, comptime b7: u8, comptime b8: u8) GUID {
    return .{
        .Data1 = l,
        .Data2 = w1,
        .Data3 = w2,
        .Data4 = .{ b1, b2, b3, b4, b5, b6, b7, b8 },
    };
}

pub fn GUID_STRING(comptime guid: *const [36:0]u8) GUID {
    const parseInt = @import("std").fmt.parseInt;
    return .{
        .Data1 = parseInt(u32, guid[0..8], 16) catch unreachable,
        .Data2 = parseInt(u16, guid[9..13], 16) catch unreachable,
        .Data3 = parseInt(u16, guid[14..18], 16) catch unreachable,
        .Data4 = .{
            parseInt(u8, guid[19..21], 16) catch unreachable,
            parseInt(u8, guid[21..23], 16) catch unreachable,
            parseInt(u8, guid[24..26], 16) catch unreachable,
            parseInt(u8, guid[26..28], 16) catch unreachable,
            parseInt(u8, guid[28..30], 16) catch unreachable,
            parseInt(u8, guid[30..32], 16) catch unreachable,
            parseInt(u8, guid[32..34], 16) catch unreachable,
            parseInt(u8, guid[34..36], 16) catch unreachable,
        },
    };
}
