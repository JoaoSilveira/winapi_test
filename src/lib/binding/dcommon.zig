usingnamespace @import("dxgiformat.zig");

const structs = @import("structs.zig");

const POINT = structs.POINT;
const RECT = structs.RECT;

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

pub const D2D1_ALPHA_MODE = extern enum(c_uint) {
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
