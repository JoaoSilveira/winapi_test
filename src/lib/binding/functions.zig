usingnamespace @import("structs.zig");
const DWRITE_FACTORY_TYPE = @import("dwrite.zig").DWRITE_FACTORY_TYPE;

pub extern "user32" fn BeginPaint(hWnd: *c_void, lpPaint: *PAINTSTRUCT) callconv(.Stdcall) ?*c_void;
pub extern "user32" fn CreateWindowExW(dwExStyle: c_uint, lpClassName: ?[*:0]const u16, lpWindowName: ?[*:0]const u16, dwStyle: c_uint, X: c_int, Y: c_int, nWidth: c_int, nHeight: c_int, hWndParent: ?*c_void, hMenu: ?*c_void, hInstance: ?*c_void, lpParam: ?*c_void) callconv(.Stdcall) ?*c_void;
pub extern "user32" fn DefWindowProcW(hWnd: ?*c_void, Msg: c_uint, wParam: usize, lParam: isize) callconv(.Stdcall) isize;
pub extern "user32" fn DispatchMessageW(lpMsg: *const MSG) callconv(.Stdcall) isize;
pub extern "user32" fn DrawTextW(hDC: *c_void, lpchText: ?[*:0]const u16, cchText: c_int, lprc: *RECT, format: c_uint) callconv(.Stdcall) c_int;
pub extern "user32" fn EndPaint(hWnd: *c_void, lpPaint: *const PAINTSTRUCT) callconv(.Stdcall) c_int;
pub extern "user32" fn FillRect(hDC: *c_void, lprc: *const RECT, hbr: *c_void) callconv(.Stdcall) c_int;
pub extern "user32" fn GetMessageW(lpMsg: *MSG, hWnd: ?*c_void, wMsgFilterMin: c_uint, wMsgFilterMax: c_int) callconv(.Stdcall) c_int;
pub extern "user32" fn LoadCursorW(hInstance: ?*c_void, lpCursorName: ?[*:0]const u16) callconv(.Stdcall) ?*c_void;
pub extern "user32" fn LoadIconW(hInstance: ?*c_void, lpIconName: ?[*:0]const u16) callconv(.Stdcall) ?*c_void;
pub extern "user32" fn LoadImageW(hInst: ?*c_void, name: ?[*:0]const u16, wType: c_uint, cx: c_int, cy: c_int, fuLoad: c_uint) callconv(.Stdcall) ?*c_void;
pub extern "user32" fn MessageBoxW(hwnd: ?*c_void, text: [*:0]const u16, caption: [*:0]const u16, style: c_uint) callconv(.Stdcall) c_int;
pub extern "user32" fn PeekMessageW(lpMsg: *MSG, hWnd: ?*c_void, wMsgFilterMin: c_uint, wMsgFilterMax: c_int, wRemoveMsg: c_uint) c_int;
pub extern "user32" fn PostQuitMessage(nExitCode: c_int) callconv(.Stdcall) void;
pub extern "user32" fn RegisterClassExW(lpWndClass: *const WNDCLASSEXW) callconv(.Stdcall) c_ushort;
pub extern "user32" fn RegisterClassW(lpWndClass: *const WNDCLASSW) callconv(.Stdcall) c_ushort;
pub extern "user32" fn ShowWindow(hWnd: *c_void, nCmdShow: c_int) callconv(.Stdcall) c_int;
pub extern "user32" fn SystemParametersInfoW(uiAction: c_uint, uiParam: c_uint, pvParam: ?*c_void, fWinIni: c_uint) callconv(.Stdcall) c_uint;
pub extern "user32" fn TranslateMessage(lpMsg: *const MSG) callconv(.Stdcall) c_int;
pub extern "user32" fn UpdateWindow(hWnd: *c_void) callconv(.Stdcall) c_int;
pub extern "user32" fn SendMessageW(hWnd: ?*c_void, Msg: c_uint, wParam: usize, lParam: isize) callconv(.Stdcall) isize;

pub extern "comctl32" fn InitCommonControls() callconv(.Stdcall) void;
pub extern "comctl32" fn InitCommonControlsEx(picce: *const INITCOMMONCONTROLSEX) callconv(.Stdcall) c_int;

pub extern "kernel32" fn FreeLibrary(hLibModule: *c_void) callconv(.Stdcall) c_int;
pub extern "kernel32" fn GetModuleHandleW(lpModuleName: ?[*:0]const u16) callconv(.Stdcall) ?*c_void;
pub extern "kernel32" fn GetProcAddress(hModule: *c_void, lpProcName: [*:0]const u8) callconv(.Stdcall) ?(fn () callconv(.Stdcall) isize);
pub extern "kernel32" fn LoadLibraryW(lpLibFineName: [*:0]const u16) callconv(.Stdcall) ?*c_void;
pub extern "kernel32" fn GetUserDefaultLocaleName(lpLocaleName: [*]u16, ccLocaleName: c_int) callconv(.Stdcall) c_int;

pub extern "gdi32" fn GetStockObject(i: c_int) callconv(.Stdcall) ?*c_void;
pub extern "gdi32" fn CreateFontIndirectW(lplf: *LOGFONTW) callconv(.Stdcall) ?*c_void;
pub extern "gdi32" fn DeleteObject(ho: ?*c_void) callconv(.Stdcall) c_int;

pub extern "dwrite" fn DWriteCreateFactory(factoryType: DWRITE_FACTORY_TYPE, iid: *const GUID, factory: **c_void) callconv(.C) c_long;

pub fn DEFINE_GUID(comptime l: c_ulong, comptime w1: c_ushort, comptime w2: c_ushort, comptime b1: u8, comptime b2: u8, comptime b3: u8, comptime b4: u8, comptime b5: u8, comptime b6: u8, comptime b7: u8, comptime b8: u8) GUID {
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
        .Data1 = parseInt(c_ulong, guid[0..8], 16) catch unreachable,
        .Data2 = parseInt(c_ushort, guid[9..13], 16) catch unreachable,
        .Data3 = parseInt(c_ushort, guid[14..18], 16) catch unreachable,
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
