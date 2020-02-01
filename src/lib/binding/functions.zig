usingnamespace @import("structs.zig");

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

pub extern "gdi32" fn GetStockObject(i: c_int) callconv(.Stdcall) ?*c_void;
pub extern "gdi32" fn CreateFontIndirectW(lplf: *LOGFONTW) callconv(.Stdcall) ?*c_void;
pub extern "gdi32" fn DeleteObject(ho: ?*c_void) callconv(.Stdcall) c_int;