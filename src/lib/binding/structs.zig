usingnamespace @import("constants.zig");

pub const WNDCLASSW = extern struct {
    style: c_uint,
    lpfnWndProc: fn (?*c_void, c_uint, usize, isize) callconv(.Stdcall) isize,
    cbClsExtra: c_int,
    cbWndExtra: c_int,
    hInstance: ?*c_void,
    hIcon: ?*c_void,
    hCursor: ?*c_void,
    hbrBackground: ?*c_void,
    lpszMenuName: ?[*:0]const u16,
    lpszClassName: ?[*:0]const u16,
};

pub const WNDCLASSEXW = extern struct {
    cbSize: c_uint = @sizeOf(WNDCLASSEXW),
    style: c_uint,
    lpfnWndProc: fn (?*c_void, c_uint, usize, isize) callconv(.Stdcall) isize,
    cbClsExtra: c_int,
    cbWndExtra: c_int,
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

pub const CREATESTRUCTW = extern struct {
    lpCreateParams: ?*c_void,
    hInstance: ?*c_void,
    hMenu: ?*c_void,
    hwndParent: ?*c_void,
    cy: c_int,
    cx: c_int,
    y: c_int,
    x: c_int,
    style: c_long,
    lpszName: [*:0]const u16,
    lpszClass: [*:0]const u16,
    dwExStyle: c_uint,
};

pub const NMHDR = extern struct {
    hwndFrom: ?*c_void,
    idFrom: usize,
    code: c_uint,
};

pub const NONCLIENTMETRICSW = extern struct {
    cbSize: c_uint = @sizeOf(NONCLIENTMETRICSW),
    iBorderWidth: c_int,
    iScrollWidth: c_int,
    iScrollHeight: c_int,
    iCaptionWidth: c_int,
    iCaptionHeight: c_int,
    lfCaptionFont: LOGFONTW,
    iSmCaptionWidth: c_int,
    iSmCaptionHeight: c_int,
    lfSmCaptionFont: LOGFONTW,
    iMenuWidth: c_int,
    iMenuHeight: c_int,
    lfMenuFont: LOGFONTW,
    lfStatusFont: LOGFONTW,
    lfMessageFont: LOGFONTW,
    iPaddedBorderWidth: c_int,
};

pub const LOGFONTW = extern struct {
    lfHeight: c_long,
    lfWidth: c_long,
    lfEscapement: c_long,
    lfOrientation: c_long,
    lfWeight: c_long,
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
    Data1: c_ulong,
    Data2: c_ushort,
    Data3: c_ushort,
    Data4: [8]u8,
};

pub fn Interface(comptime vtbl: type) type {
    return extern struct {
        lpVtbl: *vtbl,
    };
}