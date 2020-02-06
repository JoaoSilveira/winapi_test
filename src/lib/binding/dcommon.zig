usingnamespace @import("structs.zig").RECT;
usingnamespace @import("structs.zig").POINT;

pub const DWRITE_MEASURING_MODE = extern enum {
    DWRITE_MEASURING_MODE_NATURAL,
    DWRITE_MEASURING_MODE_GDI_CLASSIC,
    DWRITE_MEASURING_MODE_GDI_NATURAL,
};

pub const DWRITE_GLYPH_IMAGE_FORMATS = extern enum {
    DWRITE_GLYPH_IMAGE_FORMATS_NONE = 0x00000000,
    DWRITE_GLYPH_IMAGE_FORMATS_TRUETYPE = 0x00000001,
    DWRITE_GLYPH_IMAGE_FORMATS_CFF = 0x00000002,
    DWRITE_GLYPH_IMAGE_FORMATS_COLR = 0x00000004,
    DWRITE_GLYPH_IMAGE_FORMATS_SVG = 0x00000008,
    DWRITE_GLYPH_IMAGE_FORMATS_PNG = 0x00000010,
    DWRITE_GLYPH_IMAGE_FORMATS_JPEG = 0x00000020,
    DWRITE_GLYPH_IMAGE_FORMATS_TIFF = 0x00000040,
    DWRITE_GLYPH_IMAGE_FORMATS_PREMULTIPLIED_B8G8R8A8 = 0x00000080,
};

pub const D2D1_ALPHA_MODE = extern enum {
    D2D1_ALPHA_MODE_UNKNOWN = 0,
    D2D1_ALPHA_MODE_PREMULTIPLIED = 1,
    D2D1_ALPHA_MODE_STRAIGHT = 2,
    D2D1_ALPHA_MODE_IGNORE = 3,
    D2D1_ALPHA_MODE_FORCE_DWORD = 0xffffffff,
};

pub const D2D1_PIXEL_FORMAT = extern struct {
    format: DXGI_FORMAT,
    alphaMode: D2D1_ALPHA_MODE,
};

pub const D2D_POINT_2U = extern struct {
    x: c_uint,
    y: c_uint,
};

pub const D2D_POINT_2F = extern struct {
    x: f32,
    y: f32,
};

pub const D2D_VECTOR_2F = extern struct {
    x: f32,
    y: f32,
};

pub const D2D_VECTOR_3F = extern struct {
    x: f32,
    y: f32,
    z: f32,
};

pub const D2D_VECTOR_4F = extern struct {
    x: f32,
    y: f32,
    z: f32,
    w: f32,
};

pub const D2D_RECT_F = extern struct {
    left: f32,
    top: f32,
    right: f32,
    bottom: f32,
};

pub const D2D_RECT_U = extern struct {
    left: c_uint,
    top: c_uint,
    right: c_uint,
    bottom: c_uint,
};

pub const D2D_SIZE_F = extern struct {
    width: f32,
    height: f32,
};

pub const D2D_SIZE_U = extern struct {
    width: c_uint,
    height: c_uint,
};

pub const D2D_MATRIX_3X2_F = extern union {
    m: [3][2]f32,
    matrix: extern struct {
        _11: f32,
        _12: f32,
        _21: f32,
        _22: f32,
        _31: f32,
        _32: f32,
    },

    transform: extern struct {
        m11: f32,
        m12: f32,
        m21: f32,
        m22: f32,
        dx: f32,
        dy: f32,
    },
};

pub const D2D_MATRIX_4X3_F = extern union {
    m: [4][3]f32,
    matrix: extern struct {
        _11: f32,
        _12: f32,
        _13: f32,
        _21: f32,
        _22: f32,
        _23: f32,
        _31: f32,
        _32: f32,
        _33: f32,
        _41: f32,
        _42: f32,
        _43: f32,
    },
};

pub const D2D_MATRIX_4X4_F = extern union {
    m: [4][4]f32,
    matrix: extern struct {
        _11: f32,
        _12: f32,
        _13: f32,
        _14: f32,
        _21: f32,
        _22: f32,
        _23: f32,
        _24: f32,
        _31: f32,
        _32: f32,
        _33: f32,
        _34: f32,
        _41: f32,
        _42: f32,
        _43: f32,
        _44: f32,
    },
};

pub const D2D_MATRIX_5X4_F = extern union {
    m: [5][4]f32,
    matrix: extern struct {
        _11: f32,
        _12: f32,
        _13: f32,
        _14: f32,
        _21: f32,
        _22: f32,
        _23: f32,
        _24: f32,
        _31: f32,
        _32: f32,
        _33: f32,
        _34: f32,
        _41: f32,
        _42: f32,
        _43: f32,
        _44: f32,
        _51: f32,
        _52: f32,
        _53: f32,
        _54: f32,
    },
};

pub const DXGI_FORMAT = extern enum {
    DXGI_FORMAT_UNKNOWN = 0,
    DXGI_FORMAT_R32G32B32A32_TYPELESS = 1,
    DXGI_FORMAT_R32G32B32A32_FLOAT = 2,
    DXGI_FORMAT_R32G32B32A32_UINT = 3,
    DXGI_FORMAT_R32G32B32A32_SINT = 4,
    DXGI_FORMAT_R32G32B32_TYPELESS = 5,
    DXGI_FORMAT_R32G32B32_FLOAT = 6,
    DXGI_FORMAT_R32G32B32_UINT = 7,
    DXGI_FORMAT_R32G32B32_SINT = 8,
    DXGI_FORMAT_R16G16B16A16_TYPELESS = 9,
    DXGI_FORMAT_R16G16B16A16_FLOAT = 10,
    DXGI_FORMAT_R16G16B16A16_UNORM = 11,
    DXGI_FORMAT_R16G16B16A16_UINT = 12,
    DXGI_FORMAT_R16G16B16A16_SNORM = 13,
    DXGI_FORMAT_R16G16B16A16_SINT = 14,
    DXGI_FORMAT_R32G32_TYPELESS = 15,
    DXGI_FORMAT_R32G32_FLOAT = 16,
    DXGI_FORMAT_R32G32_UINT = 17,
    DXGI_FORMAT_R32G32_SINT = 18,
    DXGI_FORMAT_R32G8X24_TYPELESS = 19,
    DXGI_FORMAT_D32_FLOAT_S8X24_UINT = 20,
    DXGI_FORMAT_R32_FLOAT_X8X24_TYPELESS = 21,
    DXGI_FORMAT_X32_TYPELESS_G8X24_UINT = 22,
    DXGI_FORMAT_R10G10B10A2_TYPELESS = 23,
    DXGI_FORMAT_R10G10B10A2_UNORM = 24,
    DXGI_FORMAT_R10G10B10A2_UINT = 25,
    DXGI_FORMAT_R11G11B10_FLOAT = 26,
    DXGI_FORMAT_R8G8B8A8_TYPELESS = 27,
    DXGI_FORMAT_R8G8B8A8_UNORM = 28,
    DXGI_FORMAT_R8G8B8A8_UNORM_SRGB = 29,
    DXGI_FORMAT_R8G8B8A8_UINT = 30,
    DXGI_FORMAT_R8G8B8A8_SNORM = 31,
    DXGI_FORMAT_R8G8B8A8_SINT = 32,
    DXGI_FORMAT_R16G16_TYPELESS = 33,
    DXGI_FORMAT_R16G16_FLOAT = 34,
    DXGI_FORMAT_R16G16_UNORM = 35,
    DXGI_FORMAT_R16G16_UINT = 36,
    DXGI_FORMAT_R16G16_SNORM = 37,
    DXGI_FORMAT_R16G16_SINT = 38,
    DXGI_FORMAT_R32_TYPELESS = 39,
    DXGI_FORMAT_D32_FLOAT = 40,
    DXGI_FORMAT_R32_FLOAT = 41,
    DXGI_FORMAT_R32_UINT = 42,
    DXGI_FORMAT_R32_SINT = 43,
    DXGI_FORMAT_R24G8_TYPELESS = 44,
    DXGI_FORMAT_D24_UNORM_S8_UINT = 45,
    DXGI_FORMAT_R24_UNORM_X8_TYPELESS = 46,
    DXGI_FORMAT_X24_TYPELESS_G8_UINT = 47,
    DXGI_FORMAT_R8G8_TYPELESS = 48,
    DXGI_FORMAT_R8G8_UNORM = 49,
    DXGI_FORMAT_R8G8_UINT = 50,
    DXGI_FORMAT_R8G8_SNORM = 51,
    DXGI_FORMAT_R8G8_SINT = 52,
    DXGI_FORMAT_R16_TYPELESS = 53,
    DXGI_FORMAT_R16_FLOAT = 54,
    DXGI_FORMAT_D16_UNORM = 55,
    DXGI_FORMAT_R16_UNORM = 56,
    DXGI_FORMAT_R16_UINT = 57,
    DXGI_FORMAT_R16_SNORM = 58,
    DXGI_FORMAT_R16_SINT = 59,
    DXGI_FORMAT_R8_TYPELESS = 60,
    DXGI_FORMAT_R8_UNORM = 61,
    DXGI_FORMAT_R8_UINT = 62,
    DXGI_FORMAT_R8_SNORM = 63,
    DXGI_FORMAT_R8_SINT = 64,
    DXGI_FORMAT_A8_UNORM = 65,
    DXGI_FORMAT_R1_UNORM = 66,
    DXGI_FORMAT_R9G9B9E5_SHAREDEXP = 67,
    DXGI_FORMAT_R8G8_B8G8_UNORM = 68,
    DXGI_FORMAT_G8R8_G8B8_UNORM = 69,
    DXGI_FORMAT_BC1_TYPELESS = 70,
    DXGI_FORMAT_BC1_UNORM = 71,
    DXGI_FORMAT_BC1_UNORM_SRGB = 72,
    DXGI_FORMAT_BC2_TYPELESS = 73,
    DXGI_FORMAT_BC2_UNORM = 74,
    DXGI_FORMAT_BC2_UNORM_SRGB = 75,
    DXGI_FORMAT_BC3_TYPELESS = 76,
    DXGI_FORMAT_BC3_UNORM = 77,
    DXGI_FORMAT_BC3_UNORM_SRGB = 78,
    DXGI_FORMAT_BC4_TYPELESS = 79,
    DXGI_FORMAT_BC4_UNORM = 80,
    DXGI_FORMAT_BC4_SNORM = 81,
    DXGI_FORMAT_BC5_TYPELESS = 82,
    DXGI_FORMAT_BC5_UNORM = 83,
    DXGI_FORMAT_BC5_SNORM = 84,
    DXGI_FORMAT_B5G6R5_UNORM = 85,
    DXGI_FORMAT_B5G5R5A1_UNORM = 86,
    DXGI_FORMAT_B8G8R8A8_UNORM = 87,
    DXGI_FORMAT_B8G8R8X8_UNORM = 88,
    DXGI_FORMAT_R10G10B10_XR_BIAS_A2_UNORM = 89,
    DXGI_FORMAT_B8G8R8A8_TYPELESS = 90,
    DXGI_FORMAT_B8G8R8A8_UNORM_SRGB = 91,
    DXGI_FORMAT_B8G8R8X8_TYPELESS = 92,
    DXGI_FORMAT_B8G8R8X8_UNORM_SRGB = 93,
    DXGI_FORMAT_BC6H_TYPELESS = 94,
    DXGI_FORMAT_BC6H_UF16 = 95,
    DXGI_FORMAT_BC6H_SF16 = 96,
    DXGI_FORMAT_BC7_TYPELESS = 97,
    DXGI_FORMAT_BC7_UNORM = 98,
    DXGI_FORMAT_BC7_UNORM_SRGB = 99,
    DXGI_FORMAT_AYUV = 100,
    DXGI_FORMAT_Y410 = 101,
    DXGI_FORMAT_Y416 = 102,
    DXGI_FORMAT_NV12 = 103,
    DXGI_FORMAT_P010 = 104,
    DXGI_FORMAT_P016 = 105,
    DXGI_FORMAT_420_OPAQUE = 106,
    DXGI_FORMAT_YUY2 = 107,
    DXGI_FORMAT_Y210 = 108,
    DXGI_FORMAT_Y216 = 109,
    DXGI_FORMAT_NV11 = 110,
    DXGI_FORMAT_AI44 = 111,
    DXGI_FORMAT_IA44 = 112,
    DXGI_FORMAT_P8 = 113,
    DXGI_FORMAT_A8P8 = 114,
    DXGI_FORMAT_B4G4R4A4_UNORM = 115,
    DXGI_FORMAT_P208 = 130,
    DXGI_FORMAT_V208 = 131,
    DXGI_FORMAT_V408 = 132,
    DXGI_FORMAT_FORCE_UINT = 0xffffffff,
};

pub const D2D_POINT_2L = POINT;
pub const D2D_RECT_L = RECT;
pub const D2D1_POINT_2F = D2D_POINT_2F;
pub const D2D1_POINT_2U = D2D_POINT_2U;
pub const D2D1_POINT_2L = D2D_POINT_2L;
pub const D2D1_RECT_F = D2D_RECT_F;
pub const D2D1_RECT_U = D2D_RECT_U;
pub const D2D1_RECT_L = D2D_RECT_L;
pub const D2D1_SIZE_F = D2D_SIZE_F;
pub const D2D1_SIZE_U = D2D_SIZE_U;
pub const D2D1_MATRIX_3X2_F = D2D_MATRIX_3X2_F;
