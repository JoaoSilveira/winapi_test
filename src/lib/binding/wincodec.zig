const unknwn = @import("unknwn.zig");
const structs = @import("structs.zig");
const util = @import("../util.zig");

const Interface = util.Interface;
const GUID = structs.GUID;
const IUnknownVtbl = unknwn.IUnknownVtbl;

pub const IID_IWICBitmap = GUID_STRING("00000121-a8f2-4877-ba0a-fd2b6645fb94");
pub const IWICBitmap = Interface(IWICBitmapVtbl);
pub const IWICBitmapVtbl = extern struct {
    const Self = IWICBitmap;

    // IWICBitmapSource
    iwicbitmapsource: IWICBitmapSourceVtbl,

    // IWICBitmap
    Lock: fn (this: *Self, prcLock: ?*const WICRect, flags: c_uint, ppILock: **IWICBitmapLock) callconv(.Stdcall) c_long,
    SetPalette: fn (this: *Self, pIPalette: ?*IWICPalette) callconv(.Stdcall) c_long,
    SetResolution: fn (this: *Self, dpiX: f64, dpiY: f64) callconv(.Stdcall) c_long,
};

pub const IID_IWICBitmapSource = GUID_STRING("00000120-a8f2-4877-ba0a-fd2b6645fb94");
pub const IWICBitmapSource = Interface(IWICBitmapSourceVtbl);
pub const IWICBitmapSourceVtbl = extern struct {
    const Self = IWICBitmapSource;

    // IUnknown
    iunknown: IUnknownVtbl,

    // IWICBitmapSource
    GetSize: fn (this: *Self, puiWidth: *c_uint, puiHeight: c_uint) callconv(.Stdcall) c_long,
    GetPixelFormat: fn (this: *Self, pPixelFormat: *GUID) callconv(.Stdcall) c_long,
    GetResolution: fn (this: *Self, pDpiX: *f64, pDpiY: *f64) callconv(.Stdcall) c_long,
    CopyPalette: fn (this: *Self, pIPalette: ?*IWICPalette) callconv(.Stdcall) c_long,
    CopyPixels: fn (this: *Self, prc: ?*const WICRect, cbStride: c_uint, cbBufferSize: c_uint, pbBuffer: [*]u8) callconv(.Stdcall) c_long,
};

pub const IID_IWICPalette = GUID_STRING("00000040-a8f2-4877-ba0a-fd2b6645fb94");
pub const IWICPalette = Interface(IWICPaletteVtbl);
pub const IWICPaletteVtbl = extern struct {
    const Self = IWICPalette;

    // IUnknown
    iunknown: IUnknownVtbl,

    // IWICPalette
    InitializePredefined: fn (this: *Self, ePaletteType: WICBitmapPaletteType, fAddTransparentColor: c_int) callconv(.Stdcall) c_long,
    InitializeCustom: fn (this: *Self, pColors: [*]c_uint, cCount: c_uint) callconv(.Stdcall) c_long,
    InitializeFromBitmap: fn (this: *Self, pISurface: ?*IWICBitmapSource, cCount: c_uint, fAddTransparentColor: c_int) callconv(.Stdcall) c_long,
    InitializeFromPalette: fn (this: *Self, pIPalette: ?*IWICPalette) callconv(.Stdcall) c_long,
    GetType: fn (this: *Self, pePaletteType: *WICBitmapPaletteType) callconv(.Stdcall) c_long,
    GetColorCount: fn (this: *Self, pcCount: *c_uint) callconv(.Stdcall) c_long,
    GetColors: fn (this: *Self, cCount: c_uint, pColors: [*]c_uint, pcActualColors: *c_uint) callconv(.Stdcall) c_long,
    IsBlackWhite: fn (this: *Self, pfIsBlackWhite: *c_int) callconv(.Stdcall) c_long,
    IsGrayscale: fn (this: *Self, pfIsGrayscale: *c_int) callconv(.Stdcall) c_long,
    HasAlpha: fn (this: *Self, pfHasAlpha: *c_int) callconv(.Stdcall) c_long,
};

pub const IID_IWICBitmapLock = GUID_STRING("00000123-a8f2-4877-ba0a-fd2b6645fb94");
pub const IWICBitmapLock = Interface(IWICBitmapLockVtbl);
pub const IWICBitmapLockVtbl = extern struct {
    const Self = IWICBitmapLock;

    // IUnknown
    IUnknown: IUnknownVtbl,

    // IWICBitmapLock
    GetSize: fn (this: *Self, puiWidth: *c_uint, puiHeight: *c_uint) callconv(.Stdcall) c_long,
    GetStride: fn (this: *Self, pcbStride: *c_uint) callconv(.Stdcall) c_long,
    GetDataPointer: fn (this: *Self, pcbBufferSize: *c_uint, ppbData: ?**u8) callconv(.Stdcall) c_long,
    GetPixelFormat: fn (this: *Self, pPixelFormat: *GUID) callconv(.Stdcall) c_long,
};

pub const WICBitmapPaletteType = extern enum {
    WICBitmapPaletteTypeCustom = 0,
    WICBitmapPaletteTypeMedianCut = 0x1,
    WICBitmapPaletteTypeFixedBW = 0x2,
    WICBitmapPaletteTypeFixedHalftone8 = 0x3,
    WICBitmapPaletteTypeFixedHalftone27 = 0x4,
    WICBitmapPaletteTypeFixedHalftone64 = 0x5,
    WICBitmapPaletteTypeFixedHalftone125 = 0x6,
    WICBitmapPaletteTypeFixedHalftone216 = 0x7,
    WICBitmapPaletteTypeFixedHalftone252 = 0x8,
    WICBitmapPaletteTypeFixedHalftone256 = 0x9,
    WICBitmapPaletteTypeFixedGray4 = 0xa,
    WICBitmapPaletteTypeFixedGray16 = 0xb,
    WICBitmapPaletteTypeFixedGray256 = 0xc,
    WICBITMAPPALETTETYPE_FORCE_DWORD = 0x7fffffff,

    pub const WICBitmapPaletteTypeFixedWebPalette = @This().WICBitmapPaletteTypeFixedHalftone216;
};

pub const WICRect = extern struct {
    X: c_int,
    Y: c_int,
    Width: c_int,
    Height: c_int,
};
