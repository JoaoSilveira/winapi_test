usingnamespace @import("constants.zig");

pub const WNDCLASSW = extern struct {
    style: u32,
    lpfnWndProc: fn (?*c_void, u32, usize, isize) callconv(.Stdcall) isize,
    cbClsExtra: i32,
    cbWndExtra: i32,
    hInstance: ?*c_void,
    hIcon: ?*c_void,
    hCursor: ?*c_void,
    hbrBackground: ?*c_void,
    lpszMenuName: ?[*:0]const u16,
    lpszClassName: ?[*:0]const u16,
};

pub const WNDCLASSEXW = extern struct {
    cbSize: u32 = @sizeOf(WNDCLASSEXW),
    style: u32,
    lpfnWndProc: fn (?*c_void, u32, usize, isize) callconv(.Stdcall) isize,
    cbClsExtra: i32,
    cbWndExtra: i32,
    hInstance: ?*c_void,
    hIcon: ?*c_void,
    hCursor: ?*c_void,
    hbrBackground: ?*c_void,
    lpszMenuName: ?[*:0]const u16,
    lpszClassName: ?[*:0]const u16,
    hIconSm: ?*c_void,
};

pub const MSG = extern struct {
    hwnd: ?*c_void,
    message: u32,
    wParam: usize,
    lParam: isize,
    time: u32,
    pt: POINT,
};

pub const POINT = extern struct {
    x: i32,
    y: i32,
};

pub const PAINTSTRUCT = extern struct {
    hdc: ?*c_void,
    fErase: i32,
    rcPaint: RECT,
    fRestore: i32,
    fIncUpdate: i32,
    rgbReserved: [32]u8,
};

pub const RECT = extern struct {
    left: i32,
    top: i32,
    right: i32,
    bottom: i32,
};

pub const INITCOMMONCONTROLSEX = extern struct {
    dwSize: u32 = @sizeOf(INITCOMMONCONTROLSEX),
    dwICC: u32,
};

pub const DLLVERSIONINFO = extern struct {
    cbSize: u32 = @sizeOf(DLLVERSIONINFO),
    dwMajorVersion: u32,
    dwMinorVersion: u32,
    dwBuildNumber: u32,
    dwPlatformID: u32,
};

pub const CREATESTRUCTW = extern struct {
    lpCreateParams: ?*c_void,
    hInstance: ?*c_void,
    hMenu: ?*c_void,
    hwndParent: ?*c_void,
    cy: i32,
    cx: i32,
    y: i32,
    x: i32,
    style: i32,
    lpszName: [*:0]const u16,
    lpszClass: [*:0]const u16,
    dwExStyle: u32,
};

pub const NMHDR = extern struct {
    hwndFrom: ?*c_void,
    idFrom: usize,
    code: u32,
};

pub const NONCLIENTMETRICSW = extern struct {
    cbSize: u32 = @sizeOf(NONCLIENTMETRICSW),
    iBorderWidth: i32,
    iScrollWidth: i32,
    iScrollHeight: i32,
    iCaptionWidth: i32,
    iCaptionHeight: i32,
    lfCaptionFont: LOGFONTW,
    iSmCaptionWidth: i32,
    iSmCaptionHeight: i32,
    lfSmCaptionFont: LOGFONTW,
    iMenuWidth: i32,
    iMenuHeight: i32,
    lfMenuFont: LOGFONTW,
    lfStatusFont: LOGFONTW,
    lfMessageFont: LOGFONTW,
    iPaddedBorderWidth: i32,
};

pub const LOGFONTW = extern struct {
    lfHeight: i32,
    lfWidth: i32,
    lfEscapement: i32,
    lfOrientation: i32,
    lfWeight: i32,
    lfItalic: u8,
    lfUnderline: u8,
    lfStrikeOut: u8,
    lfCharSet: u8,
    lfOutPrecision: u8,
    lfClipPrecision: u8,
    lfQuality: u8,
    lfPitchAndFamily: u8,
    lfFaceName: [LF_FACESIZE]u16,
};

pub const GUID = extern struct {
    Data1: u32,
    Data2: u16,
    Data3: u16,
    Data4: [8]u8,
};

pub const FILETIME = extern struct {
    dwLowDateTime: u32,
    dwHighDateTime: u32,
};

pub const SIZE = extern struct {
    cx: i32,
    cy: i32,
};
