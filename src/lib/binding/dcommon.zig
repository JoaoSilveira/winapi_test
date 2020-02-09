usingnamespace @import("dxgiformat.zig");

const structs = @import("structs.zig");

const POINT = structs.POINT;
const RECT = structs.RECT;

/// The measuring method used for text layout.
pub const DWRITE_MEASURING_MODE = extern enum {
    /// Text is measured using glyph ideal metrics whose values are independent to the current display resolution.
    NATURAL,

    /// Text is measured using glyph display compatible metrics whose values tuned for the current display resolution.
    GDI_CLASSIC,
    // Text is measured using the same glyph display metrics as text measured by GDI using a font
    // created with CLEARTYPE_NATURAL_QUALITY.
    GDI_NATURAL,
};

/// Fonts may contain multiple drawable data formats for glyphs. These flags specify which formats
/// are supported in the font, either at a font-wide level or per glyph, and the app may use them
/// to tell DWrite which formats to return when splitting a color glyph run.
pub const DWRITE_GLYPH_IMAGE_FORMATS = extern enum {
    /// Indicates no data is available for this glyph.
    NONE = 0x00000000,

    /// The glyph has TrueType outlines.
    TRUETYPE = 0x00000001,

    /// The glyph has CFF outlines.
    CFF = 0x00000002,

    /// The glyph has multilayered COLR data.
    COLR = 0x00000004,

    /// The glyph has SVG outlines as standard XML.
    ///
    /// > Fonts may store the content gzip'd rather than plain text,
    /// > indicated by the first two bytes as gzip header {0x1F 0x8B}.
    SVG = 0x00000008,

    /// The glyph has PNG image data, with standard PNG IHDR.
    PNG = 0x00000010,

    /// The glyph has JPEG image data, with standard JIFF SOI header.
    JPEG = 0x00000020,

    /// The glyph has TIFF image data.
    TIFF = 0x00000040,

    /// The glyph has raw 32-bit premultiplied BGRA data.
    PREMULTIPLIED_B8G8R8A8 = 0x00000080,
};

/// Qualifies how alpha is to be treated in a bitmap or render target containing
/// alpha.
pub const D2D1_ALPHA_MODE = extern enum(u32) {
    /// Alpha mode should be determined implicitly. Some target surfaces do not supply
    /// or imply this information in which case alpha must be specified.
    UNKNOWN = 0,

    /// Treat the alpha as premultipled.
    PREMULTIPLIED = 1,

    /// Opacity is in the 'A' component only.
    STRAIGHT = 2,

    /// Ignore any alpha channel information.
    IGNORE = 3,
    FORCE_DWORD = 0xffffffff,
};

/// Description of a pixel format.
pub const D2D1_PIXEL_FORMAT = extern struct {
    format: DXGI_FORMAT,
    alphaMode: D2D1_ALPHA_MODE,
};

/// Represents an x-coordinate and y-coordinate pair in two-dimensional space.
pub const D2D_POINT_2U = extern struct {
    x: u32,
    y: u32,
};

/// Represents an x-coordinate and y-coordinate pair in two-dimensional space.
pub const D2D_POINT_2F = extern struct {
    x: f32,
    y: f32,
};

/// A vector of 2 FLOAT values (x, y).
pub const D2D_VECTOR_2F = extern struct {
    x: f32,
    y: f32,
};

/// A vector of 3 FLOAT values (x, y, z).
pub const D2D_VECTOR_3F = extern struct {
    x: f32,
    y: f32,
    z: f32,
};

/// A vector of 4 FLOAT values (x, y, z, w).
pub const D2D_VECTOR_4F = extern struct {
    x: f32,
    y: f32,
    z: f32,
    w: f32,
};

/// Represents a rectangle defined by the coordinates of the upper-left corner
/// (left, top) and the coordinates of the lower-right corner (right, bottom).
pub const D2D_RECT_F = extern struct {
    left: f32,
    top: f32,
    right: f32,
    bottom: f32,
};

/// Represents a rectangle defined by the coordinates of the upper-left corner
/// (left, top) and the coordinates of the lower-right corner (right, bottom).
pub const D2D_RECT_U = extern struct {
    left: u32,
    top: u32,
    right: u32,
    bottom: u32,
};

/// Stores an ordered pair of floats, typically the width and height of a rectangle.
pub const D2D_SIZE_F = extern struct {
    width: f32,
    height: f32,
};

/// Stores an ordered pair of integers, typically the width and height of a
/// rectangle.
pub const D2D_SIZE_U = extern struct {
    width: u32,
    height: u32,
};

/// Represents a 3-by-2 matrix.
pub const D2D_MATRIX_3X2_F = extern union {
    m: [3][2]f32,
    matrix: extern struct {
        /// Horizontal scaling / cosine of rotation
        _11: f32,
        /// Vertical shear / sine of rotation
        _12: f32,
        /// Horizontal shear / negative sine of rotation
        _21: f32,
        /// Vertical scaling / cosine of rotation
        _22: f32,
        /// Horizontal shift (always orthogonal regardless of rotation)
        _31: f32,
        /// Vertical shift (always orthogonal regardless of rotation)
        _32: f32,
    },

    transform: extern struct {
        /// Horizontal scaling / cosine of rotation
        m11: f32,
        /// Vertical shear / sine of rotation
        m12: f32,
        /// Horizontal shear / negative sine of rotation
        m21: f32,
        /// Vertical scaling / cosine of rotation
        m22: f32,
        /// Horizontal shift (always orthogonal regardless of rotation)
        dx: f32,
        /// Vertical shift (always orthogonal regardless of rotation)
        dy: f32,
    },
};

/// Represents a 4-by-3 matrix.
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

/// Represents a 4-by-4 matrix.
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

/// Represents a 5-by-4 matrix.
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
