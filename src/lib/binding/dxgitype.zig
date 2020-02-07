usingnamespace @import("dxgicommon.zig");

pub const DXGI_CPU_ACCESS_NONE = 0;
pub const DXGI_CPU_ACCESS_DYNAMIC = 1;
pub const DXGI_CPU_ACCESS_READ_WRITE = 2;
pub const DXGI_CPU_ACCESS_SCRATCH = 3;
pub const DXGI_CPU_ACCESS_FIELD = 15;

pub const DXGI_RGB = extern struct {
    Red: f32,
    Green: f32,
    Blue: f32,
};

pub const D3DCOLORVALUE = extern struct {
    r: f32,
    g: f32,
    b: f32,
    a: f32,
};

pub const DXGI_GAMMA_CONTROL = extern struct {
    Scale: D3DCOLORVALUE,
    Offset: D3DCOLORVALUE,
    GammaCurve: [1025]D3DCOLORVALUE,
};

pub const DXGI_GAMMA_CONTROL_CAPABILITIES = extern struct {
    ScaleAndOffsetSupported: c_int,
    MaxConvertedValue: f32,
    MinConvertedValue: f32,
    NumGammaControlPoints: c_uint,
    ControlPointPositions: [1025]f32,
};

pub const DXGI_MODE_SCANLINE_ORDER = extern enum {
    DXGI_MODE_SCANLINE_ORDER_UNSPECIFIED = 0,
    DXGI_MODE_SCANLINE_ORDER_PROGRESSIVE = 1,
    DXGI_MODE_SCANLINE_ORDER_UPPER_FIELD_FIRST = 2,
    DXGI_MODE_SCANLINE_ORDER_LOWER_FIELD_FIRST = 3,
};

pub const DXGI_MODE_SCALING = extern enum {
    DXGI_MODE_SCALING_UNSPECIFIED = 0,
    DXGI_MODE_SCALING_CENTERED = 1,
    DXGI_MODE_SCALING_STRETCHED = 2,
};

pub const DXGI_MODE_ROTATION = extern enum {
    DXGI_MODE_ROTATION_UNSPECIFIED = 0,
    DXGI_MODE_ROTATION_IDENTITY = 1,
    DXGI_MODE_ROTATION_ROTATE90 = 2,
    DXGI_MODE_ROTATION_ROTATE180 = 3,
    DXGI_MODE_ROTATION_ROTATE270 = 4,
};

pub const DXGI_MODE_DESC = extern struct {
    Width: c_uint,
    Height: c_uint,
    RefreshRate: DXGI_RATIONAL,
    Format: DXGI_FORMAT,
    ScanlineOrdering: DXGI_MODE_SCANLINE_ORDER,
    Scaling: DXGI_MODE_SCALING,
};

pub const DXGI_JPEG_DC_HUFFMAN_TABLE = extern struct {
    CodeCounts: [12]u8,
    CodeValues: [12]u8,
};

pub const DXGI_JPEG_AC_HUFFMAN_TABLE = extern struct {
    CodeCounts: [16]u8,
    CodeValues: [162]u8,
};

pub const DXGI_JPEG_QUANTIZATION_TABLE = extern struct {
    Elements: [64]u8,
};
