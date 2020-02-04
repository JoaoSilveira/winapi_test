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

pub const IID_IUnknown = DEFINE_GUID(0x00000000, 0x0000, 0x0000, 0x00, 0x00, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x46);
pub const IUnknown = Interface(IUnknownVtbl);
pub const IUnknownVtbl = extern struct {
    const Self = IUnknown;

    QueryInterface: fn (this: *Self, riid: *const GUID, ppvObject: **c_void) callconv(.Stdcall) c_long,
    AddRef: fn (this: *Self) callconv(.Stdcall) c_ulong,
    Release: fn (this: *Self) callconv(.Stdcall) c_ulong,
};

pub const IID_IDWriteFactory = GUID_STRING("b859ee5a-d838-4b5b-a2e8-1adc7d93db48");
pub const IDWriteFactory = Interface(IDWriteFactoryVtbl);
pub const IDWriteFactoryVtbl = extern struct {
    const Self = IDWriteFactory;

    // IUnkown
    QueryInterface: fn (this: *Self, riid: *const GUID, ppvObject: **c_void) callconv(.Stdcall) c_long,
    AddRef: fn (this: *Self) callconv(.Stdcall) c_ulong,
    Release: fn (this: *Self) callconv(.Stdcall) c_ulong,

    // IDWriteFactory
    GetSystemFontCollection: fn (this: *Self, fontCollection: **IDWriteFontCollection, checkForUpdates: c_int) callconv(.Stdcall) c_long,
    CreateCustomFontCollection: fn (this: *Self, collectionLoader: *IDWriteFontCollectionLoader, collectionKey: *const c_void, collectionKeySize: c_uint, fontCollection: **IDWriteFontCollection) callconv(.Stdcall) c_long,
    RegisterFontCollectionLoader: fn (this: *Self, fontCollectionLoader: *IDWriteFontCollectionLoader) callconv(.Stdcall) c_long,
    UnregisterFontCollectionLoader: fn (this: *Self, fontCollectionLoader: *IDWriteFontCollectionLoader) callconv(.Stdcall) c_long,
    CreateFontFileReference: fn (this: *Self, filePath: ?[*:0]const u16, lastWriteTime: ?*const FILETIME, fontFile: **IDWriteFontFile) callconv(.Stdcall) c_long,
    CreateCustomFontFileReference: fn (this: *Self, fontFileReferenceKey: *const c_void, fontFileReferenceKeySize: c_uint, fontFileLoader: *IDWriteFontFileLoader, fontFile: **IDWriteFontFile) callconv(.Stdcall) c_long,
    CreateFontFace: fn (this: *Self, fontFaceType: DWRITE_FONT_FACE_TYPE, numberOfFiles: c_uint, fontFiles: [*]const *IDWriteFontFile, faceIndex: c_uint, fontFaceSimulationFlags: DWRITE_FONT_SIMULATIONS, fontFace: **IDWriteFontFace) callconv(.Stdcall) c_long,
    CreateRenderingParams: fn (this: *Self, renderingParams: **IDWriteRenderingParams) callconv(.Stdcall) c_long,
    CreateMonitorRenderingParams: fn (this: *Self, monitor: HMONITOR, renderingParams: **IDWriteRenderingParams) callconv(.Stdcall) c_long,
    CreateCustomRenderingParams: fn (this: *Self, gamma: f32, enhancedContrast: f32, clearTypeLevel: f32, pixelGeometry: DWRITE_PIXEL_GEOMETRY, renderingMode: DWRITE_RENDERING_MODE, renderingParams: **IDWriteRenderingParams) callconv(.Stdcall) c_long,
    RegisterFontFileLoader: fn (this: *Self, fontFileLoader: *IDWriteFontFileLoader) callconv(.Stdcall) c_long,
    UnregisterFontFileLoader: fn (this: *Self, fontFileLoader: *IDWriteFontFileLoader) callconv(.Stdcall) c_long,
    CreateTextFormat: fn (this: *Self, fontFamilyName: [*:0]const c_ushort, fontCollection: *IDWriteFontCollection, fontWeight: DWRITE_FONT_WEIGHT, fontStyle: DWRITE_FONT_STYLE, fontStretch: DWRITE_FONT_STRETCH, fontSize: f32, localeName: [*:0]const c_ushort, textFormat: **IDWriteTextFormat) callconv(.Stdcall) c_long,
    CreateTypography: fn (this: *Self, typography: **IDWriteTypography) callconv(.Stdcall) c_long,
    GetGdiInterop: fn (this: *Self, gdiInterop: **IDWriteGdiInterop) callconv(.Stdcall) c_long,
    CreateTextLayout: fn (this: *Self, string: [*:0]const c_ushort, stringLength: c_uint, textFormat: *IDWriteTextFormat, maxWidth: f32, maxHeight: f32, textLayout: **IDWriteTextLayout) callconv(.Stdcall) c_long,
    CreateGdiCompatibleTextLayout: fn (this: *Self, string: [*:0]const c_ushort, stringLength: c_uint, textFormat: *IDWriteTextFormat, layoutWidth: f32, layoutHeight: f32, pixelsPerDip: f32, transform: *const DWRITE_MATRIX, useGdiNatural: c_int, textLayout: **IDWriteTextLayout) callconv(.Stdcall) c_long,
    CreateEllipsisTrimmingSign: fn (this: *Self, textFormat: *IDWriteTextFormat, trimmingSign: **IDWriteInlineObject) callconv(.Stdcall) c_long,
    CreateTextAnalyzer: fn (this: *Self, textAnalyzer: **IDWriteTextAnalyzer) callconv(.Stdcall) c_long,
    CreateNumberSubstitution: fn (this: *Self, substitutionMethod: DWRITE_NUMBER_SUBSTITUTION_METHOD, localeName: [*:0]const c_ushort, ignoreUserOverride: c_int, numberSubstitution: **IDWriteNumberSubstitution) callconv(.Stdcall) c_long,
    CreateGlyphRunAnalysis: fn (this: *Self, glyphRun: *const DWRITE_GLYPH_RUN, pixelsPerDip: f32, transform: *const DWRITE_MATRIX, renderingMode: DWRITE_RENDERING_MODE, measuringMode: DWRITE_MEASURING_MODE, baselineOriginX: f32, baselineOriginY: f32, glyphRunAnalysis: **IDWriteGlyphRunAnalysis) callconv(.Stdcall) c_long,
};

pub const IID_IDWriteFontFileLoader = GUID_STRING("727cad4e-d6af-4c9e-8a08-d695b11caa49");
pub const IDWriteFontFileLoader = Interface(IDWriteFontFileLoaderVtbl);
pub const IDWriteFontFileLoaderVtbl = extern struct {
    const Self = IDWriteFontFileLoader;

    // IUnkown
    QueryInterface: fn (this: *Self, riid: *const GUID, ppvObject: **c_void) callconv(.Stdcall) c_long,
    AddRef: fn (this: *Self) callconv(.Stdcall) c_ulong,
    Release: fn (this: *Self) callconv(.Stdcall) c_ulong,

    // IDWriteFontFileLoader
    CreateStreamFromKey: fn (this: *Self, fontFileReferenceKey: *c_void, fontFileReferenceKeySize: c_uint, fontFileStream: **IDWriteFontFileStream) callconv(.Stdcall) c_ulong,
};

pub const DWRITE_FONT_FILE_TYPE = extern enum {
    DWRITE_FONT_FILE_TYPE_UNKNOWN,
    DWRITE_FONT_FILE_TYPE_CFF,
    DWRITE_FONT_FILE_TYPE_TRUETYPE,
    DWRITE_FONT_FILE_TYPE_OPENTYPE_COLLECTION,
    DWRITE_FONT_FILE_TYPE_TYPE1_PFM,
    DWRITE_FONT_FILE_TYPE_TYPE1_PFB,
    DWRITE_FONT_FILE_TYPE_VECTOR,
    DWRITE_FONT_FILE_TYPE_BITMAP,
    DWRITE_FONT_FILE_TYPE_TRUETYPE_COLLECTION = DWRITE_FONT_FILE_TYPE_OPENTYPE_COLLECTION,
};

pub const DWRITE_FONT_FACE_TYPE = extern enum {
    DWRITE_FONT_FACE_TYPE_CFF,
    DWRITE_FONT_FACE_TYPE_TRUETYPE,
    DWRITE_FONT_FACE_TYPE_OPENTYPE_COLLECTION,
    DWRITE_FONT_FACE_TYPE_TYPE1,
    DWRITE_FONT_FACE_TYPE_VECTOR,
    DWRITE_FONT_FACE_TYPE_BITMAP,
    DWRITE_FONT_FACE_TYPE_UNKNOWN,
    DWRITE_FONT_FACE_TYPE_RAW_CFF,
    DWRITE_FONT_FACE_TYPE_TRUETYPE_COLLECTION = DWRITE_FONT_FACE_TYPE_OPENTYPE_COLLECTION,
};

pub const DWRITE_FONT_SIMULATIONS = extern enum {
    DWRITE_FONT_SIMULATIONS_NONE = 0x0000,
    DWRITE_FONT_SIMULATIONS_BOLD = 0x0001,
    DWRITE_FONT_SIMULATIONS_OBLIQUE = 0x0002,
};

pub const DWRITE_FONT_WEIGHT = extern enum 
{
    DWRITE_FONT_WEIGHT_THIN = 100,
    DWRITE_FONT_WEIGHT_EXTRA_LIGHT = 200,
    DWRITE_FONT_WEIGHT_ULTRA_LIGHT = 200,
    DWRITE_FONT_WEIGHT_LIGHT = 300,
    DWRITE_FONT_WEIGHT_SEMI_LIGHT = 350,
    DWRITE_FONT_WEIGHT_NORMAL = 400,
    DWRITE_FONT_WEIGHT_REGULAR = 400,
    DWRITE_FONT_WEIGHT_MEDIUM = 500,
    DWRITE_FONT_WEIGHT_DEMI_BOLD = 600,
    DWRITE_FONT_WEIGHT_SEMI_BOLD = 600,
    DWRITE_FONT_WEIGHT_BOLD = 700,
    DWRITE_FONT_WEIGHT_EXTRA_BOLD = 800,
    DWRITE_FONT_WEIGHT_ULTRA_BOLD = 800,
    DWRITE_FONT_WEIGHT_BLACK = 900,
    DWRITE_FONT_WEIGHT_HEAVY = 900,
    DWRITE_FONT_WEIGHT_EXTRA_BLACK = 950,
    DWRITE_FONT_WEIGHT_ULTRA_BLACK = 950
};

pub const DWRITE_FONT_STRETCH = extern enum 
{
    DWRITE_FONT_STRETCH_UNDEFINED = 0,
    DWRITE_FONT_STRETCH_ULTRA_CONDENSED = 1,
    DWRITE_FONT_STRETCH_EXTRA_CONDENSED = 2,
    DWRITE_FONT_STRETCH_CONDENSED = 3,
    DWRITE_FONT_STRETCH_SEMI_CONDENSED = 4,
    DWRITE_FONT_STRETCH_NORMAL = 5,
    DWRITE_FONT_STRETCH_MEDIUM = 5,
    DWRITE_FONT_STRETCH_SEMI_EXPANDED = 6,
    DWRITE_FONT_STRETCH_EXPANDED = 7,
    DWRITE_FONT_STRETCH_EXTRA_EXPANDED = 8,
    DWRITE_FONT_STRETCH_ULTRA_EXPANDED = 9
};

pub const DWRITE_FONT_STYLE = extern enum 
{
    DWRITE_FONT_STYLE_NORMAL,
    DWRITE_FONT_STYLE_OBLIQUE,
    DWRITE_FONT_STYLE_ITALIC
};

pub const DWRITE_INFORMATIONAL_STRING_ID = extern enum 
{
    DWRITE_INFORMATIONAL_STRING_NONE,
    DWRITE_INFORMATIONAL_STRING_COPYRIGHT_NOTICE,
    DWRITE_INFORMATIONAL_STRING_VERSION_STRINGS,
    DWRITE_INFORMATIONAL_STRING_TRADEMARK,
    DWRITE_INFORMATIONAL_STRING_MANUFACTURER,
    DWRITE_INFORMATIONAL_STRING_DESIGNER,
    DWRITE_INFORMATIONAL_STRING_DESIGNER_URL,
    DWRITE_INFORMATIONAL_STRING_DESCRIPTION,
    DWRITE_INFORMATIONAL_STRING_FONT_VENDOR_URL,
    DWRITE_INFORMATIONAL_STRING_LICENSE_DESCRIPTION,
    DWRITE_INFORMATIONAL_STRING_LICENSE_INFO_URL,
    DWRITE_INFORMATIONAL_STRING_WIN32_FAMILY_NAMES,
    DWRITE_INFORMATIONAL_STRING_WIN32_SUBFAMILY_NAMES,
    DWRITE_INFORMATIONAL_STRING_TYPOGRAPHIC_FAMILY_NAMES,
    DWRITE_INFORMATIONAL_STRING_TYPOGRAPHIC_SUBFAMILY_NAMES,
    DWRITE_INFORMATIONAL_STRING_SAMPLE_TEXT,
    DWRITE_INFORMATIONAL_STRING_FULL_NAME,
    DWRITE_INFORMATIONAL_STRING_POSTSCRIPT_NAME,
    DWRITE_INFORMATIONAL_STRING_POSTSCRIPT_CID_NAME,
    DWRITE_INFORMATIONAL_STRING_WEIGHT_STRETCH_STYLE_FAMILY_NAME,
    DWRITE_INFORMATIONAL_STRING_DESIGN_SCRIPT_LANGUAGE_TAG,
    DWRITE_INFORMATIONAL_STRING_SUPPORTED_SCRIPT_LANGUAGE_TAG,
    DWRITE_INFORMATIONAL_STRING_PREFERRED_FAMILY_NAMES = DWRITE_INFORMATIONAL_STRING_TYPOGRAPHIC_FAMILY_NAMES,
    DWRITE_INFORMATIONAL_STRING_PREFERRED_SUBFAMILY_NAMES = DWRITE_INFORMATIONAL_STRING_TYPOGRAPHIC_SUBFAMILY_NAMES,
    DWRITE_INFORMATIONAL_STRING_WWS_FAMILY_NAME = DWRITE_INFORMATIONAL_STRING_WEIGHT_STRETCH_STYLE_FAMILY_NAME,
};

pub const DWRITE_FONT_METRICS = extern struct 
{
    designUnitsPerEm: c_ushort,
    ascent: c_ushort,
    descent: c_ushort,
    lineGap: c_short,
    capHeight: c_ushort,
    xHeight: c_ushort,
    underlinePosition: c_short,
    underlineThickness: c_ushort,
    strikethroughPosition: c_short,
    strikethroughThickness: c_ushort,
};

pub const DWRITE_GLYPH_METRICS = extern struct 
{
    leftSideBearing: c_int,
    advanceWidth: c_uint,
    rightSideBearing: c_int,
    topSideBearing: c_int,
    advanceHeight: c_uint,
    bottomSideBearing: c_int,
    verticalOriginY: c_int,
};

pub const DWRITE_GLYPH_OFFSET = extern struct 
{
    advanceOffset: f32,
    ascenderOffset: f32,
};

pub const DWRITE_FACTORY_TYPE = extern enum 
{
    DWRITE_FACTORY_TYPE_SHARED,
    DWRITE_FACTORY_TYPE_ISOLATED
};

fn DWRITE_MAKE_OPENTYPE_TAG(a: u8, b: u8, c: u8, d: u8) u32 {
    return (@as(u32, d) << 24) | (@as(u32, c) << 16) | (@as(u32, b) << 8) | a;
}

fn DEFINE_GUID(comptime l: c_ulong, comptime w1: c_ushort, comptime w2: c_ushort, comptime b1: u8, comptime b2: u8, comptime b3: u8, comptime b4: u8, comptime b5: u8, comptime b6: u8, comptime b7: u8, comptime b8: u8) GUID {
    return .{
        .Data1 = l,
        .Data2 = w1,
        .Data3 = w2,
        .Data4 = .{ b1, b2, b3, b4, b5, b6, b7, b8 },
    };
}

fn GUID_STRING(comptime guid: *const [36:0]u8) GUID {
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
