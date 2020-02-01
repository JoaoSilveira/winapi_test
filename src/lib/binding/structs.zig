pub const WNDCLASSA = extern struct {
    style: c_uint,
    lpfnWndProc: fn (?*c_void, c_uint, usize, isize) callconv(.Stdcall) isize,
    cbClsExtra: c_int,
    cbWndExtra: c_int,
    hInstance: ?*c_void,
    hIcon: ?*c_void,
    hCursor: ?*c_void,
    hbrBackground: ?*c_void,
    lpszMenuName: ?[*:0]const u8,
    lpszClassName: ?[*:0]const u8,
};

pub const MSG = extern struct {
    hwnd: ?*c_void,
    message: c_uint,
    wParam: usize,
    lParam: isize,
    time: u32,
    pt: POINT,
};

pub const POINT = extern struct {
    x: c_int,
    y: c_int,
};

pub const PAINTSTRUCT = extern struct {
    hdc: ?*c_void,
    fErase: c_int,
    rcPaint: RECT,
    fRestore: c_int,
    fIncUpdate: c_int,
    rgbReserved: [32]u8,
};

pub const RECT = extern struct {
    left: c_long,
    top: c_long,
    right: c_long,
    bottom: c_long,
};

pub const INITCOMMONCONTROLSEX = extern struct {
    dwSize: c_uint = @sizeOf(INITCOMMONCONTROLSEX),
    dwICC: c_uint,
};

pub const DLLVERSIONINFO = extern struct {
    cbSize: c_uint = @sizeOf(DLLVERSIONINFO),
    dwMajorVersion: c_uint,
    dwMinorVersion: c_uint,
    dwBuildNumber: c_uint,
    dwPlatformID: c_uint,
};

pub const CREATESTRUCTA = extern struct {
    lpCreateParams: ?*c_void,
    hInstance: ?*c_void,
    hMenu: ?*c_void,
    hwndParent: ?*c_void,
    cy: c_int,
    cx: c_int,
    y: c_int,
    x: c_int,
    style: c_long,
    lpszName: [*:0]const u8,
    lpszClass: [*:0]const u8,
    dwExStyle: c_uint,
};

pub const NMHDR = extern struct {
    hwndFrom: ?*c_void,
    idFrom: usize,
    code: c_uint,
};