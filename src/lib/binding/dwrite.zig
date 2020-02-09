const dcommon = @import("dcommon.zig");
const d2d1 = @import("d2d1.zig");
const unknwn = @import("unknwn.zig");
const structs = @import("structs.zig");
const functions = @import("functions.zig");
const util = @import("../util.zig");
const winerror = @import("winerror.zig");
const std = @import("std");

const DWRITE_MEASURING_MODE = dcommon.DWRITE_MEASURING_MODE;
pub const IDWriteGeometrySink = d2d1.ID2D1SimplifiedGeometrySink;
const Interface = util.Interface;
const FILETIME = structs.FILETIME;
const LOGFONTW = structs.LOGFONTW;
const RECT = structs.RECT;
const SIZE = structs.SIZE;
const GUID = structs.GUID;
const GUID_STRING = functions.GUID_STRING;
const IUnknown = unknwn.IUnknown;
const assert = std.debug.assert;

/// Maximum alpha value in a texture returned by IDWriteGlyphRunAnalysis::CreateAlphaTexture.
pub const DWRITE_ALPHA_MAX = 255;

/// Macros used to define DirectWrite error codes.
pub const FACILITY_DWRITE = 0x898;

/// Macros used to define DirectWrite error codes.
pub const DWRITE_ERR_BASE = 0x5000;

/// The type of a font represented by a single font file.
/// Font formats that consist of multiple files, e.g. Type 1 .PFM and .PFB, have
/// separate enum values for each of the file type.
pub const DWRITE_FONT_FILE_TYPE = extern enum {
    /// Font type is not recognized by the DirectWrite font system.
    UNKNOWN,

    /// OpenType font with CFF outlines.
    CFF,

    /// OpenType font with TrueType outlines.
    TRUETYPE,

    /// OpenType font that contains a TrueType collection.
    OPENTYPE_COLLECTION,

    /// Type 1 PFM font.
    TYPE1_PFM,

    /// Type 1 PFB font.
    TYPE1_PFB,

    /// Vector .FON font.
    VECTOR,

    /// Bitmap .FON font.
    BITMAP,
};

/// The file format of a complete font face.
/// Font formats that consist of multiple files, e.g. Type 1 .PFM and .PFB, have
/// a single enum entry.
pub const DWRITE_FONT_FACE_TYPE = extern enum {
    /// OpenType font face with CFF outlines.
    CFF,

    /// OpenType font face with TrueType outlines.
    TRUETYPE,

    /// OpenType font face that is a part of a TrueType or CFF collection.
    OPENTYPE_COLLECTION,

    /// A Type 1 font face.
    TYPE1,

    /// A vector .FON format font face.
    VECTOR,

    /// A bitmap .FON format font face.
    BITMAP,

    /// Font face type is not recognized by the DirectWrite font system.
    UNKNOWN,

    /// The font data includes only the CFF table from an OpenType CFF font.
    /// This font face type can be used only for embedded fonts (i.e., custom
    /// font file loaders) and the resulting font face object supports only the
    /// minimum functionality necessary to render glyphs.
    RAW_CFF,
};

/// Specifies algorithmic style simulations to be applied to the font face.
/// Bold and oblique simulations can be combined via bitwise OR operation.
pub const DWRITE_FONT_SIMULATIONS = extern enum {
    /// No simulations are performed.
    NONE = 0x0000,

    /// Algorithmic emboldening is performed.
    BOLD = 0x0001,

    /// Algorithmic italicization is performed.
    OBLIQUE = 0x0002,
};

/// The font weight enumeration describes common values for degree of blackness or thickness of strokes of characters in a font.
/// Font weight values less than 1 or greater than 999 are considered to be invalid, and they are rejected by font API functions.
pub const DWRITE_FONT_WEIGHT = extern enum {
    /// Predefined font weight : Thin (100).
    THIN = 100,

    /// Predefined font weight : Extra-light (200).
    EXTRA_LIGHT = 200,

    /// Predefined font weight : Ultra-light (200).
    ULTRA_LIGHT = 200,

    /// Predefined font weight : Light (300).
    LIGHT = 300,

    /// Predefined font weight : Semi-light (350).
    SEMI_LIGHT = 350,

    /// Predefined font weight : Normal (400).
    NORMAL = 400,

    /// Predefined font weight : Regular (400).
    REGULAR = 400,

    /// Predefined font weight : Medium (500).
    MEDIUM = 500,

    /// Predefined font weight : Demi-bold (600).
    DEMI_BOLD = 600,

    /// Predefined font weight : Semi-bold (600).
    SEMI_BOLD = 600,

    /// Predefined font weight : Bold (700).
    BOLD = 700,

    /// Predefined font weight : Extra-bold (800).
    EXTRA_BOLD = 800,

    /// Predefined font weight : Ultra-bold (800).
    ULTRA_BOLD = 800,

    /// Predefined font weight : Black (900).
    BLACK = 900,

    /// Predefined font weight : Heavy (900).
    HEAVY = 900,

    /// Predefined font weight : Extra-black (950).
    EXTRA_BLACK = 950,

    /// Predefined font weight : Ultra-black (950).
    ULTRA_BLACK = 950,
};

/// The font stretch enumeration describes relative change from the normal aspect ratio
/// as specified by a font designer for the glyphs in a font.
/// Values less than 1 or greater than 9 are considered to be invalid, and they are rejected by font API functions.
pub const DWRITE_FONT_STRETCH = extern enum {
    /// Predefined font stretch : Not known (0).
    UNDEFINED = 0,

    /// Predefined font stretch : Ultra-condensed (1).
    ULTRA_CONDENSED = 1,

    /// Predefined font stretch : Extra-condensed (2).
    EXTRA_CONDENSED = 2,

    /// Predefined font stretch : Condensed (3).
    CONDENSED = 3,

    /// Predefined font stretch : Semi-condensed (4).
    SEMI_CONDENSED = 4,

    /// Predefined font stretch : Normal (5).
    NORMAL = 5,

    /// Predefined font stretch : Medium (5).
    MEDIUM = 5,

    /// Predefined font stretch : Semi-expanded (6).
    SEMI_EXPANDED = 6,

    /// Predefined font stretch : Expanded (7).
    EXPANDED = 7,

    /// Predefined font stretch : Extra-expanded (8).
    EXTRA_EXPANDED = 8,

    /// Predefined font stretch : Ultra-expanded (9).
    ULTRA_EXPANDED = 9,
};

/// The font style enumeration describes the slope style of a font face, such as Normal, Italic or Oblique.
/// Values other than the ones defined in the enumeration are considered to be invalid, and they are rejected by font API functions.
pub const DWRITE_FONT_STYLE = extern enum {
    /// Font slope style : Normal.
    NORMAL,

    /// Font slope style : Oblique.
    OBLIQUE,

    /// Font slope style : Italic.
    ITALIC,
};

/// The informational string enumeration identifies a string in a font.
pub const DWRITE_INFORMATIONAL_STRING_ID = extern enum {
    /// Unspecified name ID.
    NONE,

    /// Copyright notice provided by the font.
    COPYRIGHT_NOTICE,

    /// String containing a version number.
    VERSION_STRINGS,

    /// Trademark information provided by the font.
    TRADEMARK,

    /// Name of the font manufacturer.
    MANUFACTURER,

    /// Name of the font designer.
    DESIGNER,

    /// URL of font designer (with protocol, e.g., http://, ftp://).
    DESIGNER_URL,

    /// Description of the font. Can contain revision information, usage recommendations, history, features, etc.
    DESCRIPTION,

    /// URL of font vendor (with protocol, e.g., http://, ftp://). If a unique serial number is embedded in the URL, it can be used to register the font.
    FONT_VENDOR_URL,

    /// Description of how the font may be legally used, or different example scenarios for licensed use. This field should be written in plain language, not legalese.
    LICENSE_DESCRIPTION,

    /// URL where additional licensing information can be found.
    LICENSE_INFO_URL,

    /// GDI-compatible family name. Because GDI allows a maximum of four fonts per family, fonts in the same family may have different GDI-compatible family names
    /// (e.g., "Arial", "Arial Narrow", "Arial Black").
    WIN32_FAMILY_NAMES,

    /// GDI-compatible subfamily name.
    WIN32_SUBFAMILY_NAMES,

    /// Typographic family name preferred by the designer. This enables font designers to group more than four fonts in a single family without losing compatibility with
    /// GDI. This name is typically only present if it differs from the GDI-compatible family name.
    TYPOGRAPHIC_FAMILY_NAMES,

    /// Typographic subfamily name preferred by the designer. This name is typically only present if it differs from the GDI-compatible subfamily name.
    TYPOGRAPHIC_SUBFAMILY_NAMES,

    /// Sample text. This can be the font name or any other text that the designer thinks is the best example to display the font in.
    SAMPLE_TEXT,

    /// The full name of the font, e.g. "Arial Bold", from name id 4 in the name table.
    FULL_NAME,

    /// The postscript name of the font, e.g. "GillSans-Bold" from name id 6 in the name table.
    POSTSCRIPT_NAME,

    /// The postscript CID findfont name, from name id 20 in the name table.
    POSTSCRIPT_CID_NAME,

    /// Family name for the weight-stretch-style model.
    WEIGHT_STRETCH_STYLE_FAMILY_NAME,

    /// Script/language tag to identify the scripts or languages that the font was
    /// primarily designed to support. See DWRITE_FONT_PROPERTY_ID_DESIGN_SCRIPT_LANGUAGE_TAG
    /// for a longer description.
    DESIGN_SCRIPT_LANGUAGE_TAG,

    /// Script/language tag to identify the scripts or languages that the font declares
    /// it is able to support.
    SUPPORTED_SCRIPT_LANGUAGE_TAG,
};

/// The DWRITE_FONT_METRICS structure specifies the metrics of a font face that
/// are applicable to all glyphs within the font face.
pub const DWRITE_FONT_METRICS = extern struct {
    /// The number of font design units per em unit.
    /// Font files use their own coordinate system of font design units.
    /// A font design unit is the smallest measurable unit in the em square,
    /// an imaginary square that is used to size and align glyphs.
    /// The concept of em square is used as a reference scale factor when defining font size and device transformation semantics.
    /// The size of one em square is also commonly used to compute the paragraph indentation value.
    designUnitsPerEm: u16,

    /// Ascent value of the font face in font design units.
    /// Ascent is the distance from the top of font character alignment box to English baseline.
    ascent: u16,

    /// Descent value of the font face in font design units.
    /// Descent is the distance from the bottom of font character alignment box to English baseline.
    descent: u16,

    /// Line gap in font design units.
    /// Recommended additional white space to add between lines to improve legibility. The recommended line spacing
    /// (baseline-to-baseline distance) is thus the sum of ascent, descent, and lineGap. The line gap is usually
    /// positive or zero but can be negative, in which case the recommended line spacing is less than the height
    /// of the character alignment box.
    lineGap: i16,

    /// Cap height value of the font face in font design units.
    /// Cap height is the distance from English baseline to the top of a typical English capital.
    /// Capital "H" is often used as a reference character for the purpose of calculating the cap height value.
    capHeight: u16,

    /// x-height value of the font face in font design units.
    /// x-height is the distance from English baseline to the top of lowercase letter "x", or a similar lowercase character.
    xHeight: u16,

    /// The underline position value of the font face in font design units.
    /// Underline position is the position of underline relative to the English baseline.
    /// The value is usually made negative in order to place the underline below the baseline.
    underlinePosition: i16,

    /// The suggested underline thickness value of the font face in font design units.
    underlineThickness: u16,

    /// The strikethrough position value of the font face in font design units.
    /// Strikethrough position is the position of strikethrough relative to the English baseline.
    /// The value is usually made positive in order to place the strikethrough above the baseline.
    strikethroughPosition: i16,

    /// The suggested strikethrough thickness value of the font face in font design units.
    strikethroughThickness: u16,
};

/// The DWRITE_GLYPH_METRICS structure specifies the metrics of an individual glyph.
/// The units depend on how the metrics are obtained.
pub const DWRITE_GLYPH_METRICS = extern struct {
    /// Specifies the X offset from the glyph origin to the left edge of the black box.
    /// The glyph origin is the current horizontal writing position.
    /// A negative value means the black box extends to the left of the origin (often true for lowercase italic 'f').
    leftSideBearing: i32,

    /// Specifies the X offset from the origin of the current glyph to the origin of the next glyph when writing horizontally.
    advanceWidth: u32,

    /// Specifies the X offset from the right edge of the black box to the origin of the next glyph when writing horizontally.
    /// The value is negative when the right edge of the black box overhangs the layout box.
    rightSideBearing: i32,

    /// Specifies the vertical offset from the vertical origin to the top of the black box.
    /// Thus, a positive value adds whitespace whereas a negative value means the glyph overhangs the top of the layout box.
    topSideBearing: i32,

    /// Specifies the Y offset from the vertical origin of the current glyph to the vertical origin of the next glyph when writing vertically.
    /// (Note that the term "origin" by itself denotes the horizontal origin. The vertical origin is different.
    /// Its Y coordinate is specified by verticalOriginY value,
    /// and its X coordinate is half the advanceWidth to the right of the horizontal origin).
    advanceHeight: u32,

    /// Specifies the vertical distance from the black box's bottom edge to the advance height.
    /// Positive when the bottom edge of the black box is within the layout box.
    /// Negative when the bottom edge of black box overhangs the layout box.
    bottomSideBearing: i32,

    /// Specifies the Y coordinate of a glyph's vertical origin, in the font's design coordinate system.
    /// The y coordinate of a glyph's vertical origin is the sum of the glyph's top side bearing
    /// and the top (i.e. yMax) of the glyph's bounding box.
    verticalOriginY: i32,
};

/// Optional adjustment to a glyph's position. A glyph offset changes the position of a glyph without affecting
/// the pen position. Offsets are in logical, pre-transform units.
pub const DWRITE_GLYPH_OFFSET = extern struct {
    /// Offset in the advance direction of the run. A positive advance offset moves the glyph to the right
    /// (in pre-transform coordinates) if the run is left-to-right or to the left if the run is right-to-left.
    advanceOffset: f32,

    /// Offset in the ascent direction, i.e., the direction ascenders point. A positive ascender offset moves
    /// the glyph up (in pre-transform coordinates).
    ascenderOffset: f32,
};

/// Specifies the type of DirectWrite factory object.
/// DirectWrite factory contains internal state such as font loader registration and cached font data.
/// In most cases it is recommended to use the shared factory object, because it allows multiple components
/// that use DirectWrite to share internal DirectWrite state and reduce memory usage.
/// However, there are cases when it is desirable to reduce the impact of a component,
/// such as a plug-in from an untrusted source, on the rest of the process by sandboxing and isolating it
/// from the rest of the process components. In such cases, it is recommended to use an isolated factory for the sandboxed
/// component.
pub const DWRITE_FACTORY_TYPE = extern enum {
    /// Shared factory allow for re-use of cached font data across multiple in process components.
    /// Such factories also take advantage of cross process font caching components for better performance.
    SHARED,

    /// Objects created from the isolated factory do not interact with internal DirectWrite state from other components.
    ISOLATED,
};

/// Represents the internal structure of a device pixel (i.e., the physical arrangement of red,
/// green, and blue color components) that is assumed for purposes of rendering text.
pub const DWRITE_PIXEL_GEOMETRY = extern enum {
    /// The red, green, and blue color components of each pixel are assumed to occupy the same point.
    FLAT,

    /// Each pixel comprises three vertical stripes, with red on the left, green in the center, and
    /// blue on the right. This is the most common pixel geometry for LCD monitors.
    RGB,

    /// Each pixel comprises three vertical stripes, with blue on the left, green in the center, and
    /// red on the right.
    BGR,
};

/// Represents a method of rendering glyphs.
pub const DWRITE_RENDERING_MODE = extern enum {
    /// Specifies that the rendering mode is determined automatically based on the font and size.
    DEFAULT,

    /// Specifies that no antialiasing is performed. Each pixel is either set to the foreground
    /// color of the text or retains the color of the background.
    ALIASED,

    /// Specifies that antialiasing is performed in the horizontal direction and the appearance
    /// of glyphs is layout-compatible with GDI using CLEARTYPE_QUALITY. Use DWRITE_MEASURING_MODE_GDI_CLASSIC
    /// to get glyph advances. The antialiasing may be either ClearType or grayscale depending on
    /// the text antialiasing mode.
    GDI_CLASSIC,

    /// Specifies that antialiasing is performed in the horizontal direction and the appearance
    /// of glyphs is layout-compatible with GDI using CLEARTYPE_NATURAL_QUALITY. Glyph advances
    /// are close to the font design advances, but are still rounded to whole pixels. Use
    /// DWRITE_MEASURING_MODE_GDI_NATURAL to get glyph advances. The antialiasing may be either
    /// ClearType or grayscale depending on the text antialiasing mode.
    GDI_NATURAL,

    /// Specifies that antialiasing is performed in the horizontal direction. This rendering
    /// mode allows glyphs to be positioned with subpixel precision and is therefore suitable
    /// for natural (i.e., resolution-independent) layout. The antialiasing may be either
    /// ClearType or grayscale depending on the text antialiasing mode.
    NATURAL,

    /// Similar to natural mode except that antialiasing is performed in both the horizontal
    /// and vertical directions. This is typically used at larger sizes to make curves and
    /// diagonal lines look smoother. The antialiasing may be either ClearType or grayscale
    /// depending on the text antialiasing mode.
    NATURAL_SYMMETRIC,

    /// Specifies that rendering should bypass the rasterizer and use the outlines directly.
    /// This is typically used at very large sizes.
    OUTLINE,
};

/// The DWRITE_MATRIX structure specifies the graphics transform to be applied
/// to rendered glyphs.
pub const DWRITE_MATRIX = extern struct {
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
};

/// Indicates additional shaping requirements for text.
pub const DWRITE_SCRIPT_SHAPES = extern enum {
    /// No additional shaping requirement. Text is shaped with the writing system default behavior.
    DWRITE_SCRIPT_SHAPES_DEFAULT = 0,

    /// Text should leave no visual on display i.e. control or format control characters.
    DWRITE_SCRIPT_SHAPES_NO_VISUAL = 1,
};

/// Association of text and its writing system script as well as some display attributes.
pub const DWRITE_SCRIPT_ANALYSIS = extern struct {
    /// Zero-based index representation of writing system script.
    script: u16,

    /// Additional shaping requirement of text.
    shapes: DWRITE_SCRIPT_SHAPES,
};

/// Condition at the edges of inline object or text used to determine
/// line-breaking behavior.
pub const DWRITE_BREAK_CONDITION = extern enum {
    /// Whether a break is allowed is determined by the condition of the
    /// neighboring text span or inline object.
    NEUTRAL,

    /// A break is allowed, unless overruled by the condition of the
    /// neighboring text span or inline object, either prohibited by a
    /// May Not or forced by a Must.
    CAN_BREAK,

    /// There should be no break, unless overruled by a Must condition from
    /// the neighboring text span or inline object.
    MAY_NOT_BREAK,

    /// The break must happen, regardless of the condition of the adjacent
    /// text span or inline object.
    MUST_BREAK,
};

/// Line breakpoint characteristics of a character.
pub const DWRITE_LINE_BREAKPOINT = extern struct {
    const Self = @This();
    // UINT8 breakConditionBefore  : 2;2
    // UINT8 breakConditionAfter   : 2;4
    // UINT8 isWhitespace          : 1;5
    // UINT8 isSoftHyphen          : 1;6
    // UINT8 padding               : 2;8
    data: u8,

    /// Breaking condition before the character.
    pub inline fn breakConditionBefore(self: Self) u2 {
        return @truncate(u2, self.data);
    }

    /// Breaking condition before the character.
    pub inline fn setBreakConditionBefore(self: *Self, value: u2) void {
        self.data = (self.data & 0xFC) | value;
    }

    /// Breaking condition after the character.
    pub inline fn breakConditionAfter(self: Self) u2 {
        return @truncate(u2, self.data >> 2);
    }

    /// Breaking condition after the character.
    pub inline fn setBreakConditionAfter(self: *Self, value: u2) void {
        self.data = (self.data & 0xF3) | (@as(u8, value) << 2);
    }

    /// The character is some form of whitespace, which may be meaningful
    /// for justification.
    pub inline fn isWhitespace(self: Self) bool {
        return self.data & 0x10 != 0;
    }

    /// The character is some form of whitespace, which may be meaningful
    /// for justification.
    pub inline fn setIsWhitespace(self: *Self, value: bool) void {
        self.data = (self.data & 0xEF) | (@as(u8, @boolToInt(value)) << 4);
    }

    /// The character is a soft hyphen, often used to indicate hyphenation
    /// points inside words.
    pub inline fn isSoftHyphen(self: Self) bool {
        return self.data & 0x20 != 0;
    }

    /// The character is a soft hyphen, often used to indicate hyphenation
    /// points inside words.
    pub inline fn setIsSoftHyphen(self: *Self, value: bool) void {
        self.data = (self.data & 0xDF) | (@as(u8, @boolToInt(value)) << 5);
    }
};

/// How to apply number substitution on digits and related punctuation.
pub const DWRITE_NUMBER_SUBSTITUTION_METHOD = extern enum {
    /// Specifies that the substitution method should be determined based
    /// on LOCALE_IDIGITSUBSTITUTION value of the specified text culture.
    FROM_CULTURE,

    /// If the culture is Arabic or Farsi, specifies that the number shape
    /// depend on the context. Either traditional or nominal number shape
    /// are used depending on the nearest preceding strong character or (if
    /// there is none) the reading direction of the paragraph.
    CONTEXTUAL,

    /// Specifies that code points 0x30-0x39 are always rendered as nominal numeral
    /// shapes (ones of the European number), i.e., no substitution is performed.
    NONE,

    /// Specifies that number are rendered using the national number shape
    /// as specified by the LOCALE_SNATIVEDIGITS value of the specified text culture.
    NATIONAL,

    /// Specifies that number are rendered using the traditional shape
    /// for the specified culture. For most cultures, self is the same as
    /// NativeNational. However, NativeNational results in Latin number
    /// for some Arabic cultures, whereas self value results in Arabic
    /// number for all Arabic cultures.
    TRADITIONAL,
};

/// Shaping output properties per input character.
pub const DWRITE_SHAPING_TEXT_PROPERTIES = extern struct {
    const Self = @This();
    // UINT16  isShapedAlone       : 1;1
    // UINT16  reserved            : 15;16
    data: u16,

    /// This character can be shaped independently from the others
    /// (usually set for the space character).
    pub inline fn isShapedAlone(self: Self) bool {
        return self.data & 0x0001 != 0;
    }

    /// This character can be shaped independently from the others
    /// (usually set for the space character).
    pub inline fn setIsShapedAlone(self: *Self, value: bool) void {
        self.data = (self.data & 0xFFFE) | @boolToInt(value);
    }
};

/// Shaping output properties per output glyph.
pub const DWRITE_SHAPING_GLYPH_PROPERTIES = extern struct {
    const Self = @This();
    // UINT16  justification       : 4;4
    // UINT16  isClusterStart      : 1;5
    // UINT16  isDiacritic         : 1;6
    // UINT16  isZeroWidthSpace    : 1;7
    // UINT16  reserved            : 9;16
    data: u16,

    /// Justification class, whether to use spacing, kashidas, or
    /// another method. This exists for backwards compatibility
    /// with Uniscribe's SCRIPT_JUSTIFY enum.
    pub inline fn justification(self: Self) u4 {
        return @truncate(u4, self.data);
    }

    /// Justification class, whether to use spacing, kashidas, or
    /// another method. This exists for backwards compatibility
    /// with Uniscribe's SCRIPT_JUSTIFY enum.
    pub inline fn setJustification(self: *Self, value: u4) void {
        self.data = (self.data & 0xFFF0) | value;
    }

    /// Indicates glyph is the first of a cluster.
    pub inline fn isClusterStart(self: Self) bool {
        return self.data & 0x0010 != 0;
    }

    /// Indicates glyph is the first of a cluster.
    pub inline fn setIsClusterStart(self: *Self, value: bool) void {
        self.data = (self.data & 0xFFEF) | (@as(u16, @boolToInt(value)) << 4);
    }

    /// Glyph is a diacritic.
    pub inline fn isDiacritic(self: Self) bool {
        return self.data & 0x0020 != 0;
    }

    /// Glyph is a diacritic.
    pub inline fn setIsDiacritic(self: *Self, value: bool) void {
        self.data = (self.data & 0xFFDF) | (@as(u16, @boolToInt(value)) << 5);
    }

    /// Glyph has no width, blank, ZWJ, ZWNJ etc.
    pub inline fn isZeroWidthSpace(self: Self) bool {
        return self.data & 0x0040 != 0;
    }

    /// Glyph has no width, blank, ZWJ, ZWNJ etc.
    pub inline fn setIsZeroWidthSpace(self: *Self, value: bool) void {
        self.data = (self.data & 0xFFBF) | (@as(u16, @boolToInt(value)) << 6);
    }
};

/// The DWRITE_GLYPH_RUN structure contains the information needed by renderers
/// to draw glyph runs. All coordinates are in device independent pixels (DIPs).
pub const DWRITE_GLYPH_RUN = extern struct {
    /// The physical font face to draw with.
    fontFace: *IDWriteFontFace,

    /// Logical size of the font in DIPs, not points (equals 1/96 inch).
    fontEmSize: f32,

    /// The number of glyphs.
    glyphCount: u32,

    /// The indices to render.
    glyphIndices: [*]const u16,

    /// Glyph advance widths.
    glyphAdvances: ?[*]const f32,

    /// Glyph offsets.
    glyphOffsets: ?[*]const DWRITE_GLYPH_OFFSET,

    /// If true, specifies that glyphs are rotated 90 degrees to the left and
    /// vertical metrics are used. Vertical writing is achieved by specifying
    /// isSideways = true and rotating the entire run 90 degrees to the right
    /// via a rotate transform.
    isSideways: i32,

    /// The implicit resolved bidi level of the run. Odd levels indicate
    /// right-to-left languages like Hebrew and Arabic, while even levels
    /// indicate left-to-right languages like English and Japanese (when
    /// written horizontally). For right-to-left languages, the text origin
    /// is on the right, and text should be drawn to the left.
    bidiLevel: u32,
};

/// The DWRITE_GLYPH_RUN_DESCRIPTION structure contains additional properties
/// related to those in DWRITE_GLYPH_RUN.
pub const DWRITE_GLYPH_RUN_DESCRIPTION = extern struct {
    /// The locale name associated with self run.
    localeName: [*:0]const u16,

    /// The text associated with the glyphs.
    string: [*]const u16,

    /// The number of characters (UTF16 code-units).
    /// Note that self may be different than the number of glyphs.
    stringLength: u32,

    /// An array of indices to the glyph indices array, of the first glyphs of
    /// all the glyph clusters of the glyphs to render.
    clusterMap: ?[*]const u16,

    /// Corresponding text position in the original string
    /// self glyph run came from.
    textPosition: u32,
};

/// The DWRITE_UNDERLINE structure contains information about the size and
/// placement of underlines. All coordinates are in device independent
/// pixels (DIPs).
pub const DWRITE_UNDERLINE = extern struct {
    /// Width of the underline, measured parallel to the baseline.
    width: f32,

    /// Thickness of the underline, measured perpendicular to the
    /// baseline.
    thickness: f32,

    /// Offset of the underline from the baseline.
    /// A positive offset represents a position below the baseline and
    /// a negative offset is above.
    offset: f32,

    /// Height of the tallest run where the underline applies.
    runHeight: f32,

    /// Reading direction of the text associated with the underline.  This
    /// value is used to interpret whether the width value runs horizontally
    /// or vertically.
    readingDirection: DWRITE_READING_DIRECTION,

    /// Flow direction of the text associated with the underline.  This value
    /// is used to interpret whether the thickness value advances top to
    /// bottom, left to right, or right to left.
    flowDirection: DWRITE_FLOW_DIRECTION,

    /// Locale of the text the underline is being drawn under. Can be
    /// pertinent where the locale affects how the underline is drawn.
    /// For example, in vertical text, the underline belongs on the
    /// left for Chinese but on the right for Japanese.
    /// This choice is completely left up to higher levels.
    localeName: [*:0]const u16,

    /// The measuring mode can be useful to the renderer to determine how
    /// underlines are rendered, e.g. rounding the thickness to a whole pixel
    /// in GDI-compatible modes.
    measuringMode: DWRITE_MEASURING_MODE,
};

/// The DWRITE_STRIKETHROUGH structure contains information about the size and
/// placement of strikethroughs. All coordinates are in device independent
/// pixels (DIPs).
pub const DWRITE_STRIKETHROUGH = extern struct {
    /// Width of the strikethrough, measured parallel to the baseline.
    width: f32,

    /// Thickness of the strikethrough, measured perpendicular to the
    /// baseline.
    thickness: f32,

    /// Offset of the strikethrough from the baseline.
    /// A positive offset represents a position below the baseline and
    /// a negative offset is above.
    offset: f32,

    /// Reading direction of the text associated with the strikethrough.  This
    /// value is used to interpret whether the width value runs horizontally
    /// or vertically.
    readingDirection: DWRITE_READING_DIRECTION,

    /// Flow direction of the text associated with the strikethrough.  This
    /// value is used to interpret whether the thickness value advances top to
    /// bottom, left to right, or right to left.
    flowDirection: DWRITE_FLOW_DIRECTION,

    /// Locale of the range. Can be pertinent where the locale affects the style.
    localeName: [*:0]const u16,

    /// The measuring mode can be useful to the renderer to determine how
    /// underlines are rendered, e.g. rounding the thickness to a whole pixel
    /// in GDI-compatible modes.
    measuringMode: DWRITE_MEASURING_MODE,
};

/// The DWRITE_LINE_METRICS structure contains information about a formatted
/// line of text.
pub const DWRITE_LINE_METRICS = extern struct {
    /// The number of total text positions in the line.
    /// This includes any trailing whitespace and newline characters.
    length: u32,

    /// The number of whitespace positions at the end of the line.  Newline
    /// sequences are considered whitespace.
    trailingWhitespaceLength: u32,

    /// The number of characters in the newline sequence at the end of the line.
    /// If the count is zero, then the line was either wrapped or it is the
    /// end of the text.
    newlineLength: u32,

    /// Height of the line as measured from top to bottom.
    height: f32,

    /// Distance from the top of the line to its baseline.
    baseline: f32,

    /// The line is trimmed.
    isTrimmed: i32,
};

/// The DWRITE_CLUSTER_METRICS structure contains information about a glyph cluster.
pub const DWRITE_CLUSTER_METRICS = extern struct {
    const Self = @This();

    /// The total advance width of all glyphs in the cluster.
    width: f32,

    /// The number of text positions in the cluster.
    length: u16,

    // UINT16 canWrapLineAfter : 1;1
    // UINT16 isWhitespace : 1;2
    // UINT16 isNewline : 1;3
    // UINT16 isSoftHyphen : 1;4
    // UINT16 isRightToLeft : 1;5
    // UINT16 padding : 11;16
    data: u16,

    /// Indicate whether line can be broken right after the cluster.
    pub inline fn canWrapLineAfter(self: Self) bool {
        return self.data & 0x0001 != 0;
    }

    /// Indicate whether line can be broken right after the cluster.
    pub inline fn setCanWrapLineAfter(self: *Self, value: bool) void {
        self.data = (self.data & 0xFFFE) | @boolToInt(value);
    }

    /// Indicate whether the cluster corresponds to whitespace character.
    pub inline fn isWhitespace(self: Self) bool {
        return self.data & 0x0002 != 0;
    }

    /// Indicate whether the cluster corresponds to whitespace character.
    pub inline fn setIsWhitespace(self: *Self, value: bool) void {
        self.data = (self.data & 0xFFFD) | (@as(u16, @boolToInt(value)) << 1);
    }

    /// Indicate whether the cluster corresponds to a newline character.
    pub inline fn isNewline(self: Self) bool {
        return self.data & 0x0004 != 0;
    }

    /// Indicate whether the cluster corresponds to a newline character.
    pub inline fn setIsNewline(self: *Self, value: bool) void {
        self.data = (self.data & 0xFFFB) | (@as(u16, @boolToInt(value)) << 2);
    }

    /// Indicate whether the cluster corresponds to soft hyphen character.
    pub inline fn isSoftHyphen(self: Self) bool {
        return self.data & 0x0008 != 0;
    }

    /// Indicate whether the cluster corresponds to soft hyphen character.
    pub inline fn setIsSoftHyphen(self: *Self, value: bool) void {
        self.data = (self.data & 0xFFF7) | (@as(u16, @boolToInt(value)) << 3);
    }

    /// Indicate whether the cluster is read from right to left.
    pub inline fn isRightToLeft(self: Self) bool {
        return self.data & 0x0010 != 0;
    }

    /// Indicate whether the cluster is read from right to left.
    pub inline fn setIsRightToLeft(self: *Self, value: bool) void {
        self.data = (self.data & 0xFFEF) | (@as(u16, @boolToInt(value)) << 4);
    }
};

/// Overall metrics associated with text after layout.
/// All coordinates are in device independent pixels (DIPs).
pub const DWRITE_TEXT_METRICS = extern struct {
    /// Left-most point of formatted text relative to layout box
    /// (excluding any glyph overhang).
    left: f32,

    /// Top-most point of formatted text relative to layout box
    /// (excluding any glyph overhang).
    top: f32,

    /// The width of the formatted text ignoring trailing whitespace
    /// at the end of each line.
    width: f32,

    /// The width of the formatted text taking into account the
    /// trailing whitespace at the end of each line.
    widthIncludingTrailingWhitespace: f32,

    /// The height of the formatted text. The height of an empty string
    /// is determined by the size of the default font's line height.
    height: f32,

    /// Initial width given to the layout. Depending on whether the text
    /// was wrapped or not, it can be either larger or smaller than the
    /// text content width.
    layoutWidth: f32,

    /// Initial height given to the layout. Depending on the length of the
    /// text, it may be larger or smaller than the text content height.
    layoutHeight: f32,

    /// The maximum reordering count of any line of text, used
    /// to calculate the most number of hit-testing boxes needed.
    /// If the layout has no bidirectional text or no text at all,
    /// the minimum level is 1.
    maxBidiReorderingDepth: u32,

    /// Total number of lines.
    lineCount: u32,
};

/// Properties describing the geometric measurement of an
/// application-defined inline object.
pub const DWRITE_INLINE_OBJECT_METRICS = extern struct {
    /// Width of the inline object.
    width: f32,

    /// Height of the inline object as measured from top to bottom.
    height: f32,

    /// Distance from the top of the object to the baseline where it is lined up with the adjacent text.
    /// If the baseline is at the bottom, baseline simply equals height.
    baseline: f32,

    /// Flag indicating whether the object is to be placed upright or alongside the text baseline
    /// for vertical text.
    supportsSideways: i32,
};

/// The DWRITE_OVERHANG_METRICS structure holds how much any visible pixels
/// (in DIPs) overshoot each side of the layout or inline objects.
///
/// > Positive overhangs indicate that the visible area extends outside the layout
/// > box or inline object, while negative values mean there is whitespace inside.
/// > The returned values are unaffected by rendering transforms or pixel snapping.
/// > Additionally, they may not exactly match final target's pixel bounds after
/// > applying grid fitting and hinting.
pub const DWRITE_OVERHANG_METRICS = extern struct {
    /// The distance from the left-most visible DIP to its left alignment edge.
    left: f32,

    /// The distance from the top-most visible DIP to its top alignment edge.
    top: f32,

    /// The distance from the right-most visible DIP to its right alignment edge.
    right: f32,

    /// The distance from the bottom-most visible DIP to its bottom alignment edge.
    bottom: f32,
};

/// Geometry enclosing of text positions.
pub const DWRITE_HIT_TEST_METRICS = extern struct {
    /// First text position within the geometry.
    textPosition: u32,

    /// Number of text positions within the geometry.
    length: u32,

    /// Left position of the top-left coordinate of the geometry.
    left: f32,

    /// Top position of the top-left coordinate of the geometry.
    top: f32,

    /// Geometry's width.
    width: f32,

    /// Geometry's height.
    height: f32,

    /// Bidi level of text positions enclosed within the geometry.
    bidiLevel: u32,

    /// Geometry encloses text?
    isText: i32,

    /// Range is trimmed.
    isTrimmed: i32,
};

/// The DWRITE_TEXTURE_TYPE enumeration identifies a type of alpha texture. An alpha texture is a bitmap of alpha values, each
/// representing the darkness (i.e., opacity) of a pixel or subpixel.
pub const DWRITE_TEXTURE_TYPE = extern enum {
    /// Specifies an alpha texture for aliased text rendering (i.e., bi-level, where each pixel is either fully opaque or fully transparent),
    /// with one byte per pixel.
    ALIASED_1x1,

    /// Specifies an alpha texture for ClearType text rendering, with three bytes per pixel in the horizontal dimension and
    /// one byte per pixel in the vertical dimension.
    CLEARTYPE_3x1,
};

/// Direction for how reading progresses.
pub const DWRITE_READING_DIRECTION = extern enum {
    /// Reading progresses from left to right.
    LEFT_TO_RIGHT = 0,

    /// Reading progresses from right to left.
    RIGHT_TO_LEFT = 1,

    /// Reading progresses from top to bottom.
    TOP_TO_BOTTOM = 2,

    /// Reading progresses from bottom to top.
    BOTTOM_TO_TOP = 3,
};

/// Direction for how lines of text are placed relative to one another.
pub const DWRITE_FLOW_DIRECTION = extern enum {
    /// Text lines are placed from top to bottom.
    TOP_TO_BOTTOM = 0,

    /// Text lines are placed from bottom to top.
    BOTTOM_TO_TOP = 1,

    /// Text lines are placed from left to right.
    LEFT_TO_RIGHT = 2,

    /// Text lines are placed from right to left.
    RIGHT_TO_LEFT = 3,
};

/// Alignment of paragraph text along the reading direction axis relative to
/// the leading and trailing edge of the layout box.
pub const DWRITE_TEXT_ALIGNMENT = extern enum {
    /// The leading edge of the paragraph text is aligned to the layout box's leading edge.
    LEADING,

    /// The trailing edge of the paragraph text is aligned to the layout box's trailing edge.
    TRAILING,

    /// The center of the paragraph text is aligned to the center of the layout box.
    CENTER,

    /// Align text to the leading side, and also justify text to fill the lines.
    JUSTIFIED,
};

/// Alignment of paragraph text along the flow direction axis relative to the
/// flow's beginning and ending edge of the layout box.
pub const DWRITE_PARAGRAPH_ALIGNMENT = extern enum {
    /// The first line of paragraph is aligned to the flow's beginning edge of the layout box.
    NEAR,

    /// The last line of paragraph is aligned to the flow's ending edge of the layout box.
    FAR,

    /// The center of the paragraph is aligned to the center of the flow of the layout box.
    CENTER,
};

/// Word wrapping in multiline paragraph.
pub const DWRITE_WORD_WRAPPING = extern enum {
    /// Words are broken across lines to avoid text overflowing the layout box.
    WRAP = 0,

    /// Words are kept within the same line even when it overflows the layout box.
    /// This option is often used with scrolling to reveal overflow text.
    NO_WRAP = 1,

    /// Words are broken across lines to avoid text overflowing the layout box.
    /// Emergency wrapping occurs if the word is larger than the maximum width.
    EMERGENCY_BREAK = 2,

    /// Only wrap whole words, never breaking words (emergency wrapping) when the
    /// layout width is too small for even a single word.
    WHOLE_WORD = 3,

    /// Wrap between any valid characters clusters.
    CHARACTER = 4,
};

/// The method used for line spacing in layout.
pub const DWRITE_LINE_SPACING_METHOD = extern enum {
    /// Line spacing depends solely on the content, growing to accommodate the size of fonts and inline objects.
    DEFAULT,

    /// Lines are explicitly set to uniform spacing, regardless of contained font sizes.
    /// This can be useful to avoid the uneven appearance that can occur from font fallback.
    UNIFORM,

    /// Line spacing and baseline distances are proportional to the computed values based on the content, the size of the fonts and inline objects.
    PROPORTIONAL,
};

/// Text granularity used to trim text overflowing the layout box.
pub const DWRITE_TRIMMING_GRANULARITY = extern enum {
    /// No trimming occurs. Text flows beyond the layout width.
    NONE,

    /// Trimming occurs at character cluster boundary.
    CHARACTER,

    /// Trimming occurs at word boundary.
    WORD,
};

/// Typographic feature of text supplied by the font.
///
/// > Use `DWRITE_MAKE_FONT_FEATURE_TAG` to create a custom one.
pub const DWRITE_FONT_FEATURE_TAG = extern enum {
    DWRITE_FONT_FEATURE_TAG_ALTERNATIVE_FRACTIONS = DWRITE_MAKE_OPENTYPE_TAG('a', 'f', 'r', 'c'),
    DWRITE_FONT_FEATURE_TAG_PETITE_CAPITALS_FROM_CAPITALS = DWRITE_MAKE_OPENTYPE_TAG('c', '2', 'p', 'c'),
    DWRITE_FONT_FEATURE_TAG_SMALL_CAPITALS_FROM_CAPITALS = DWRITE_MAKE_OPENTYPE_TAG('c', '2', 's', 'c'),
    DWRITE_FONT_FEATURE_TAG_CONTEXTUAL_ALTERNATES = DWRITE_MAKE_OPENTYPE_TAG('c', 'a', 'l', 't'),
    DWRITE_FONT_FEATURE_TAG_CASE_SENSITIVE_FORMS = DWRITE_MAKE_OPENTYPE_TAG('c', 'a', 's', 'e'),
    DWRITE_FONT_FEATURE_TAG_GLYPH_COMPOSITION_DECOMPOSITION = DWRITE_MAKE_OPENTYPE_TAG('c', 'c', 'm', 'p'),
    DWRITE_FONT_FEATURE_TAG_CONTEXTUAL_LIGATURES = DWRITE_MAKE_OPENTYPE_TAG('c', 'l', 'i', 'g'),
    DWRITE_FONT_FEATURE_TAG_CAPITAL_SPACING = DWRITE_MAKE_OPENTYPE_TAG('c', 'p', 's', 'p'),
    DWRITE_FONT_FEATURE_TAG_CONTEXTUAL_SWASH = DWRITE_MAKE_OPENTYPE_TAG('c', 's', 'w', 'h'),
    DWRITE_FONT_FEATURE_TAG_CURSIVE_POSITIONING = DWRITE_MAKE_OPENTYPE_TAG('c', 'u', 'r', 's'),
    DWRITE_FONT_FEATURE_TAG_DEFAULT = DWRITE_MAKE_OPENTYPE_TAG('d', 'f', 'l', 't'),
    DWRITE_FONT_FEATURE_TAG_DISCRETIONARY_LIGATURES = DWRITE_MAKE_OPENTYPE_TAG('d', 'l', 'i', 'g'),
    DWRITE_FONT_FEATURE_TAG_EXPERT_FORMS = DWRITE_MAKE_OPENTYPE_TAG('e', 'x', 'p', 't'),
    DWRITE_FONT_FEATURE_TAG_FRACTIONS = DWRITE_MAKE_OPENTYPE_TAG('f', 'r', 'a', 'c'),
    DWRITE_FONT_FEATURE_TAG_FULL_WIDTH = DWRITE_MAKE_OPENTYPE_TAG('f', 'w', 'i', 'd'),
    DWRITE_FONT_FEATURE_TAG_HALF_FORMS = DWRITE_MAKE_OPENTYPE_TAG('h', 'a', 'l', 'f'),
    DWRITE_FONT_FEATURE_TAG_HALANT_FORMS = DWRITE_MAKE_OPENTYPE_TAG('h', 'a', 'l', 'n'),
    DWRITE_FONT_FEATURE_TAG_ALTERNATE_HALF_WIDTH = DWRITE_MAKE_OPENTYPE_TAG('h', 'a', 'l', 't'),
    DWRITE_FONT_FEATURE_TAG_HISTORICAL_FORMS = DWRITE_MAKE_OPENTYPE_TAG('h', 'i', 's', 't'),
    DWRITE_FONT_FEATURE_TAG_HORIZONTAL_KANA_ALTERNATES = DWRITE_MAKE_OPENTYPE_TAG('h', 'k', 'n', 'a'),
    DWRITE_FONT_FEATURE_TAG_HISTORICAL_LIGATURES = DWRITE_MAKE_OPENTYPE_TAG('h', 'l', 'i', 'g'),
    DWRITE_FONT_FEATURE_TAG_HALF_WIDTH = DWRITE_MAKE_OPENTYPE_TAG('h', 'w', 'i', 'd'),
    DWRITE_FONT_FEATURE_TAG_HOJO_KANJI_FORMS = DWRITE_MAKE_OPENTYPE_TAG('h', 'o', 'j', 'o'),
    DWRITE_FONT_FEATURE_TAG_JIS04_FORMS = DWRITE_MAKE_OPENTYPE_TAG('j', 'p', '0', '4'),
    DWRITE_FONT_FEATURE_TAG_JIS78_FORMS = DWRITE_MAKE_OPENTYPE_TAG('j', 'p', '7', '8'),
    DWRITE_FONT_FEATURE_TAG_JIS83_FORMS = DWRITE_MAKE_OPENTYPE_TAG('j', 'p', '8', '3'),
    DWRITE_FONT_FEATURE_TAG_JIS90_FORMS = DWRITE_MAKE_OPENTYPE_TAG('j', 'p', '9', '0'),
    DWRITE_FONT_FEATURE_TAG_KERNING = DWRITE_MAKE_OPENTYPE_TAG('k', 'e', 'r', 'n'),
    DWRITE_FONT_FEATURE_TAG_STANDARD_LIGATURES = DWRITE_MAKE_OPENTYPE_TAG('l', 'i', 'g', 'a'),
    DWRITE_FONT_FEATURE_TAG_LINING_FIGURES = DWRITE_MAKE_OPENTYPE_TAG('l', 'n', 'u', 'm'),
    DWRITE_FONT_FEATURE_TAG_LOCALIZED_FORMS = DWRITE_MAKE_OPENTYPE_TAG('l', 'o', 'c', 'l'),
    DWRITE_FONT_FEATURE_TAG_MARK_POSITIONING = DWRITE_MAKE_OPENTYPE_TAG('m', 'a', 'r', 'k'),
    DWRITE_FONT_FEATURE_TAG_MATHEMATICAL_GREEK = DWRITE_MAKE_OPENTYPE_TAG('m', 'g', 'r', 'k'),
    DWRITE_FONT_FEATURE_TAG_MARK_TO_MARK_POSITIONING = DWRITE_MAKE_OPENTYPE_TAG('m', 'k', 'm', 'k'),
    DWRITE_FONT_FEATURE_TAG_ALTERNATE_ANNOTATION_FORMS = DWRITE_MAKE_OPENTYPE_TAG('n', 'a', 'l', 't'),
    DWRITE_FONT_FEATURE_TAG_NLC_KANJI_FORMS = DWRITE_MAKE_OPENTYPE_TAG('n', 'l', 'c', 'k'),
    DWRITE_FONT_FEATURE_TAG_OLD_STYLE_FIGURES = DWRITE_MAKE_OPENTYPE_TAG('o', 'n', 'u', 'm'),
    DWRITE_FONT_FEATURE_TAG_ORDINALS = DWRITE_MAKE_OPENTYPE_TAG('o', 'r', 'd', 'n'),
    DWRITE_FONT_FEATURE_TAG_PROPORTIONAL_ALTERNATE_WIDTH = DWRITE_MAKE_OPENTYPE_TAG('p', 'a', 'l', 't'),
    DWRITE_FONT_FEATURE_TAG_PETITE_CAPITALS = DWRITE_MAKE_OPENTYPE_TAG('p', 'c', 'a', 'p'),
    DWRITE_FONT_FEATURE_TAG_PROPORTIONAL_FIGURES = DWRITE_MAKE_OPENTYPE_TAG('p', 'n', 'u', 'm'),
    DWRITE_FONT_FEATURE_TAG_PROPORTIONAL_WIDTHS = DWRITE_MAKE_OPENTYPE_TAG('p', 'w', 'i', 'd'),
    DWRITE_FONT_FEATURE_TAG_QUARTER_WIDTHS = DWRITE_MAKE_OPENTYPE_TAG('q', 'w', 'i', 'd'),
    DWRITE_FONT_FEATURE_TAG_REQUIRED_LIGATURES = DWRITE_MAKE_OPENTYPE_TAG('r', 'l', 'i', 'g'),
    DWRITE_FONT_FEATURE_TAG_RUBY_NOTATION_FORMS = DWRITE_MAKE_OPENTYPE_TAG('r', 'u', 'b', 'y'),
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_ALTERNATES = DWRITE_MAKE_OPENTYPE_TAG('s', 'a', 'l', 't'),
    DWRITE_FONT_FEATURE_TAG_SCIENTIFIC_INFERIORS = DWRITE_MAKE_OPENTYPE_TAG('s', 'i', 'n', 'f'),
    DWRITE_FONT_FEATURE_TAG_SMALL_CAPITALS = DWRITE_MAKE_OPENTYPE_TAG('s', 'm', 'c', 'p'),
    DWRITE_FONT_FEATURE_TAG_SIMPLIFIED_FORMS = DWRITE_MAKE_OPENTYPE_TAG('s', 'm', 'p', 'l'),
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_1 = DWRITE_MAKE_OPENTYPE_TAG('s', 's', '0', '1'),
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_2 = DWRITE_MAKE_OPENTYPE_TAG('s', 's', '0', '2'),
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_3 = DWRITE_MAKE_OPENTYPE_TAG('s', 's', '0', '3'),
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_4 = DWRITE_MAKE_OPENTYPE_TAG('s', 's', '0', '4'),
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_5 = DWRITE_MAKE_OPENTYPE_TAG('s', 's', '0', '5'),
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_6 = DWRITE_MAKE_OPENTYPE_TAG('s', 's', '0', '6'),
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_7 = DWRITE_MAKE_OPENTYPE_TAG('s', 's', '0', '7'),
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_8 = DWRITE_MAKE_OPENTYPE_TAG('s', 's', '0', '8'),
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_9 = DWRITE_MAKE_OPENTYPE_TAG('s', 's', '0', '9'),
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_10 = DWRITE_MAKE_OPENTYPE_TAG('s', 's', '1', '0'),
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_11 = DWRITE_MAKE_OPENTYPE_TAG('s', 's', '1', '1'),
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_12 = DWRITE_MAKE_OPENTYPE_TAG('s', 's', '1', '2'),
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_13 = DWRITE_MAKE_OPENTYPE_TAG('s', 's', '1', '3'),
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_14 = DWRITE_MAKE_OPENTYPE_TAG('s', 's', '1', '4'),
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_15 = DWRITE_MAKE_OPENTYPE_TAG('s', 's', '1', '5'),
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_16 = DWRITE_MAKE_OPENTYPE_TAG('s', 's', '1', '6'),
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_17 = DWRITE_MAKE_OPENTYPE_TAG('s', 's', '1', '7'),
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_18 = DWRITE_MAKE_OPENTYPE_TAG('s', 's', '1', '8'),
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_19 = DWRITE_MAKE_OPENTYPE_TAG('s', 's', '1', '9'),
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_20 = DWRITE_MAKE_OPENTYPE_TAG('s', 's', '2', '0'),
    DWRITE_FONT_FEATURE_TAG_SUBSCRIPT = DWRITE_MAKE_OPENTYPE_TAG('s', 'u', 'b', 's'),
    DWRITE_FONT_FEATURE_TAG_SUPERSCRIPT = DWRITE_MAKE_OPENTYPE_TAG('s', 'u', 'p', 's'),
    DWRITE_FONT_FEATURE_TAG_SWASH = DWRITE_MAKE_OPENTYPE_TAG('s', 'w', 's', 'h'),
    DWRITE_FONT_FEATURE_TAG_TITLING = DWRITE_MAKE_OPENTYPE_TAG('t', 'i', 't', 'l'),
    DWRITE_FONT_FEATURE_TAG_TRADITIONAL_NAME_FORMS = DWRITE_MAKE_OPENTYPE_TAG('t', 'n', 'a', 'm'),
    DWRITE_FONT_FEATURE_TAG_TABULAR_FIGURES = DWRITE_MAKE_OPENTYPE_TAG('t', 'n', 'u', 'm'),
    DWRITE_FONT_FEATURE_TAG_TRADITIONAL_FORMS = DWRITE_MAKE_OPENTYPE_TAG('t', 'r', 'a', 'd'),
    DWRITE_FONT_FEATURE_TAG_THIRD_WIDTHS = DWRITE_MAKE_OPENTYPE_TAG('t', 'w', 'i', 'd'),
    DWRITE_FONT_FEATURE_TAG_UNICASE = DWRITE_MAKE_OPENTYPE_TAG('u', 'n', 'i', 'c'),
    DWRITE_FONT_FEATURE_TAG_VERTICAL_WRITING = DWRITE_MAKE_OPENTYPE_TAG('v', 'e', 'r', 't'),
    DWRITE_FONT_FEATURE_TAG_VERTICAL_ALTERNATES_AND_ROTATION = DWRITE_MAKE_OPENTYPE_TAG('v', 'r', 't', '2'),
    DWRITE_FONT_FEATURE_TAG_SLASHED_ZERO = DWRITE_MAKE_OPENTYPE_TAG('z', 'e', 'r', 'o'),
};

/// The DWRITE_TEXT_RANGE structure specifies a range of text positions where format is applied.
pub const DWRITE_TEXT_RANGE = extern struct {
    /// The start text position of the range.
    startPosition: u32,

    /// The number of text positions in the range.
    length: u32,
};

/// The DWRITE_FONT_FEATURE structure specifies properties used to identify and execute typographic feature in the font.
pub const DWRITE_FONT_FEATURE = extern struct {
    /// The feature OpenType name identifier.
    nameTag: DWRITE_FONT_FEATURE_TAG,

    /// Execution parameter of the feature.
    ///
    /// > The parameter should be non-zero to enable the feature.  Once enabled, a feature can't be disabled again within
    /// > the same range.  Features requiring a selector use self value to indicate the selector index.
    parameter: u32,
};

/// Defines a set of typographic features to be applied during shaping.
/// Notice the character range which self feature list spans is specified
/// as a separate parameter to GetGlyphs.
pub const DWRITE_TYPOGRAPHIC_FEATURES = extern struct {
    /// Array of font features.
    features: [*]DWRITE_FONT_FEATURE,

    /// The number of features.
    featureCount: u32,
};

/// The DWRITE_TRIMMING structure specifies the trimming option for text overflowing the layout box.
pub const DWRITE_TRIMMING = extern struct {
    /// Text granularity of which trimming applies.
    granularity: DWRITE_TRIMMING_GRANULARITY,

    /// Character code used as the delimiter signaling the beginning of the portion of text to be preserved,
    /// most useful for path ellipsis, where the delimiter would be a slash. Leave self zero if there is no
    /// delimiter.
    delimiter: u32,

    /// How many occurrences of the delimiter to step back. Leave self zero if there is no delimiter.
    delimiterCount: u32,
};

pub const IDWriteFactory = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("b859ee5a-d838-4b5b-a2e8-1adc7d93db48");
    pub const Vtbl = extern struct {

        // IUnknown
        iunknown: IUnknown.Vtbl,

        // IDWriteFactory
        GetSystemFontCollection: fn (self: *Self, fontCollection: *?*IDWriteFontCollection, checkForUpdates: i32) callconv(.Stdcall) i32,
        CreateCustomFontCollection: fn (self: *Self, collectionLoader: *IDWriteFontCollectionLoader, collectionKey: *const c_void, collectionKeySize: u32, fontCollection: *?*IDWriteFontCollection) callconv(.Stdcall) i32,
        RegisterFontCollectionLoader: fn (self: *Self, fontCollectionLoader: *IDWriteFontCollectionLoader) callconv(.Stdcall) i32,
        UnregisterFontCollectionLoader: fn (self: *Self, fontCollectionLoader: *IDWriteFontCollectionLoader) callconv(.Stdcall) i32,
        CreateFontFileReference: fn (self: *Self, filePath: [*:0]const u16, lastWriteTime: ?*const FILETIME, fontFile: *?*IDWriteFontFile) callconv(.Stdcall) i32,
        CreateCustomFontFileReference: fn (self: *Self, fontFileReferenceKey: *const c_void, fontFileReferenceKeySize: u32, fontFileLoader: *IDWriteFontFileLoader, fontFile: *?*IDWriteFontFile) callconv(.Stdcall) i32,
        CreateFontFace: fn (self: *Self, fontFaceType: DWRITE_FONT_FACE_TYPE, numberOfFiles: u32, fontFiles: [*]const *IDWriteFontFile, faceIndex: u32, fontFaceSimulationFlags: DWRITE_FONT_SIMULATIONS, fontFace: *?*IDWriteFontFace) callconv(.Stdcall) i32,
        CreateRenderingParams: fn (self: *Self, renderingParams: *?*IDWriteRenderingParams) callconv(.Stdcall) i32,
        CreateMonitorRenderingParams: fn (self: *Self, monitor: *c_void, renderingParams: *?*IDWriteRenderingParams) callconv(.Stdcall) i32,
        CreateCustomRenderingParams: fn (self: *Self, gamma: f32, enhancedContrast: f32, clearTypeLevel: f32, pixelGeometry: DWRITE_PIXEL_GEOMETRY, renderingMode: DWRITE_RENDERING_MODE, renderingParams: *?*IDWriteRenderingParams) callconv(.Stdcall) i32,
        RegisterFontFileLoader: fn (self: *Self, fontFileLoader: *IDWriteFontFileLoader) callconv(.Stdcall) i32,
        UnregisterFontFileLoader: fn (self: *Self, fontFileLoader: *IDWriteFontFileLoader) callconv(.Stdcall) i32,
        CreateTextFormat: fn (self: *Self, fontFamilyName: [*:0]const u16, fontCollection: ?*IDWriteFontCollection, fontWeight: DWRITE_FONT_WEIGHT, fontStyle: DWRITE_FONT_STYLE, fontStretch: DWRITE_FONT_STRETCH, fontSize: f32, localeName: [*:0]const u16, textFormat: *?*IDWriteTextFormat) callconv(.Stdcall) i32,
        CreateTypography: fn (self: *Self, typography: *?*IDWriteTypography) callconv(.Stdcall) i32,
        GetGdiInterop: fn (self: *Self, gdiInterop: *?*IDWriteGdiInterop) callconv(.Stdcall) i32,
        CreateTextLayout: fn (self: *Self, string: [*]const u16, stringLength: u32, textFormat: *IDWriteTextFormat, maxWidth: f32, maxHeight: f32, textLayout: *?*IDWriteTextLayout) callconv(.Stdcall) i32,
        CreateGdiCompatibleTextLayout: fn (self: *Self, string: [*]const u16, stringLength: u32, textFormat: *IDWriteTextFormat, layoutWidth: f32, layoutHeight: f32, pixelsPerDip: f32, transform: ?*const DWRITE_MATRIX, useGdiNatural: i32, textLayout: *?*IDWriteTextLayout) callconv(.Stdcall) i32,
        CreateEllipsisTrimmingSign: fn (self: *Self, textFormat: *IDWriteTextFormat, trimmingSign: *?*IDWriteInlineObject) callconv(.Stdcall) i32,
        CreateTextAnalyzer: fn (self: *Self, textAnalyzer: *?*IDWriteTextAnalyzer) callconv(.Stdcall) i32,
        CreateNumberSubstitution: fn (self: *Self, substitutionMethod: DWRITE_NUMBER_SUBSTITUTION_METHOD, localeName: [*:0]const u16, ignoreUserOverride: i32, numberSubstitution: *?*IDWriteNumberSubstitution) callconv(.Stdcall) i32,
        CreateGlyphRunAnalysis: fn (self: *Self, glyphRun: *const DWRITE_GLYPH_RUN, pixelsPerDip: f32, transform: ?*const DWRITE_MATRIX, renderingMode: DWRITE_RENDERING_MODE, measuringMode: DWRITE_MEASURING_MODE, baselineOriginX: f32, baselineOriginY: f32, glyphRunAnalysis: *?*IDWriteGlyphRunAnalysis) callconv(.Stdcall) i32,
    };

    lpVtbl: *Vtbl,

    pub inline fn QueryInterface(self: *Self, riid: *const GUID, ppvObject: *?*c_void) i32 {
        return @ptrCast(*IUnknown, self).QueryInterface(riid, ppvObject);
    }

    pub inline fn AddRef(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).AddRef();
    }

    pub inline fn Release(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).Release();
    }

    pub inline fn GetSystemFontCollection(
        self: *Self,
        fontCollection: *?*IDWriteFontCollection,
        checkForUpdates: bool,
    ) i32 {
        return self.lpVtbl.*.GetSystemFontCollection(
            self,
            fontCollection,
            @as(i32, @boolToInt(checkForUpdates)),
        );
    }

    pub inline fn CreateCustomFontCollection(
        self: *Self,
        collectionLoader: *IDWriteFontCollectionLoader,
        collectionKey: *const c_void,
        collectionKeySize: u32,
        fontCollection: *?*IDWriteFontCollection,
    ) i32 {
        return self.lpVtbl.*.CreateCustomFontCollection(
            self,
            collectionLoader,
            collectionKey,
            collectionKeySize,
            fontCollection,
        );
    }

    pub inline fn RegisterFontCollectionLoader(
        self: *Self,
        fontCollectionLoader: *IDWriteFontCollectionLoader,
    ) i32 {
        return self.lpVtbl.*.RegisterFontCollectionLoader(
            self,
            fontCollectionLoader,
        );
    }

    pub inline fn UnregisterFontCollectionLoader(
        self: *Self,
        fontCollectionLoader: *IDWriteFontCollectionLoader,
    ) i32 {
        return self.lpVtbl.*.UnregisterFontCollectionLoader(
            self,
            fontCollectionLoader,
        );
    }

    pub inline fn CreateFontFileReference(
        self: *Self,
        filePath: [:0]const u16,
        lastWriteTime: ?*const FILETIME,
        fontFile: *?*IDWriteFontFile,
    ) i32 {
        return self.lpVtbl.*.CreateFontFileReference(
            self,
            filePath.ptr,
            lastWriteTime,
            fontFile,
        );
    }

    pub inline fn CreateCustomFontFileReference(
        self: *Self,
        fontFileReferenceKey: *const c_void,
        fontFileReferenceKeySize: u32,
        fontFileLoader: *IDWriteFontFileLoader,
        fontFile: *?*IDWriteFontFile,
    ) i32 {
        return self.lpVtbl.*.CreateCustomFontFileReference(
            self,
            fontFileReferenceKey,
            fontFileReferenceKeySize,
            fontFileLoader,
            fontFile,
        );
    }

    pub inline fn CreateFontFace(
        self: *Self,
        fontFaceType: DWRITE_FONT_FACE_TYPE,
        fontFiles: []const *IDWriteFontFile,
        faceIndex: u32,
        fontFaceSimulationFlags: DWRITE_FONT_SIMULATIONS,
        fontFace: *?*IDWriteFontFace,
    ) i32 {
        return self.lpVtbl.*.CreateFontFace(
            self,
            fontFaceType,
            @truncate(u32, fontFiles.len),
            fontFiles.ptr,
            faceIndex,
            fontFaceSimulationFlags,
            fontFace,
        );
    }

    pub inline fn CreateRenderingParams(
        self: *Self,
        renderingParams: *?*IDWriteRenderingParams,
    ) i32 {
        return self.lpVtbl.*.CreateRenderingParams(
            self,
            renderingParams,
        );
    }

    pub inline fn CreateMonitorRenderingParams(
        self: *Self,
        monitor: *c_void,
        renderingParams: *?*IDWriteRenderingParams,
    ) i32 {
        return self.lpVtbl.*.CreateMonitorRenderingParams(
            self,
            monitor,
            renderingParams,
        );
    }

    pub inline fn CreateCustomRenderingParams(
        self: *Self,
        gamma: f32,
        enhancedContrast: f32,
        clearTypeLevel: f32,
        pixelGeometry: DWRITE_PIXEL_GEOMETRY,
        renderingMode: DWRITE_RENDERING_MODE,
        renderingParams: *?*IDWriteRenderingParams,
    ) i32 {
        return self.lpVtbl.*.CreateCustomRenderingParams(
            self,
            gamma,
            enhancedContrast,
            clearTypeLevel,
            pixelGeometry,
            renderingMode,
            renderingParams,
        );
    }

    pub inline fn RegisterFontFileLoader(
        self: *Self,
        fontFileLoader: *IDWriteFontFileLoader,
    ) i32 {
        return self.lpVtbl.*.RegisterFontFileLoader(
            self,
            fontFileLoader,
        );
    }

    pub inline fn UnregisterFontFileLoader(
        self: *Self,
        fontFileLoader: *IDWriteFontFileLoader,
    ) i32 {
        return self.lpVtbl.*.UnregisterFontFileLoader(
            self,
            fontFileLoader,
        );
    }

    pub inline fn CreateTextFormat(
        self: *Self,
        fontFamilyName: [:0]const u16,
        fontCollection: ?*IDWriteFontCollection,
        fontWeight: DWRITE_FONT_WEIGHT,
        fontStyle: DWRITE_FONT_STYLE,
        fontStretch: DWRITE_FONT_STRETCH,
        fontSize: f32,
        localeName: [:0]const u16,
        textFormat: *?*IDWriteTextFormat,
    ) i32 {
        return self.lpVtbl.*.CreateTextFormat(
            self,
            fontFamilyName.ptr,
            fontCollection,
            fontWeight,
            fontStyle,
            fontStretch,
            fontSize,
            localeName.ptr,
            textFormat,
        );
    }

    pub inline fn CreateTypography(
        self: *Self,
        typography: *?*IDWriteTypography,
    ) i32 {
        return self.lpVtbl.*.CreateTypography(
            self,
            typography,
        );
    }

    pub inline fn GetGdiInterop(
        self: *Self,
        gdiInterop: *?*IDWriteGdiInterop,
    ) i32 {
        return self.lpVtbl.*.GetGdiInterop(
            self,
            gdiInterop,
        );
    }

    pub inline fn CreateTextLayout(
        self: *Self,
        string: []const u16,
        textFormat: *IDWriteTextFormat,
        maxWidth: f32,
        maxHeight: f32,
        textLayout: *?*IDWriteTextLayout,
    ) i32 {
        return self.lpVtbl.*.CreateTextLayout(
            self,
            string.ptr,
            @truncate(u32, string.len),
            textFormat,
            maxWidth,
            maxHeight,
            textLayout,
        );
    }

    pub inline fn CreateGdiCompatibleTextLayout(
        self: *Self,
        string: []const u16,
        textFormat: *IDWriteTextFormat,
        layoutWidth: f32,
        layoutHeight: f32,
        pixelsPerDip: f32,
        transform: ?*const DWRITE_MATRIX,
        useGdiNatural: bool,
        textLayout: *?*IDWriteTextLayout,
    ) i32 {
        return self.lpVtbl.*.CreateGdiCompatibleTextLayout(
            self,
            string.ptr,
            @truncate(u32, string.len),
            textFormat,
            layoutWidth,
            layoutHeight,
            pixelsPerDip,
            transform,
            @as(i32, @boolToInt(useGdiNatural)),
            textLayout,
        );
    }

    pub inline fn CreateEllipsisTrimmingSign(
        self: *Self,
        textFormat: *IDWriteTextFormat,
        trimmingSign: *?*IDWriteInlineObject,
    ) i32 {
        return self.lpVtbl.*.CreateEllipsisTrimmingSign(
            self,
            textFormat,
            trimmingSign,
        );
    }

    pub inline fn CreateTextAnalyzer(
        self: *Self,
        textAnalyzer: *?*IDWriteTextAnalyzer,
    ) i32 {
        return self.lpVtbl.*.CreateTextAnalyzer(
            self,
            textAnalyzer,
        );
    }

    pub inline fn CreateNumberSubstitution(
        self: *Self,
        substitutionMethod: DWRITE_NUMBER_SUBSTITUTION_METHOD,
        localeName: [:0]const u16,
        ignoreUserOverride: bool,
        numberSubstitution: *?*IDWriteNumberSubstitution,
    ) i32 {
        return self.lpVtbl.*.CreateNumberSubstitution(
            self,
            substitutionMethod,
            localeName.ptr,
            @as(i32, @boolToInt(ignoreUserOverride)),
            numberSubstitution,
        );
    }

    pub inline fn CreateGlyphRunAnalysis(
        self: *Self,
        glyphRun: *const DWRITE_GLYPH_RUN,
        pixelsPerDip: f32,
        transform: ?*const DWRITE_MATRIX,
        renderingMode: DWRITE_RENDERING_MODE,
        measuringMode: DWRITE_MEASURING_MODE,
        baselineOriginX: f32,
        baselineOriginY: f32,
        glyphRunAnalysis: *?*IDWriteGlyphRunAnalysis,
    ) i32 {
        return self.lpVtbl.*.CreateGlyphRunAnalysis(
            self,
            glyphRun,
            pixelsPerDip,
            transform,
            renderingMode,
            measuringMode,
            baselineOriginX,
            baselineOriginY,
            glyphRunAnalysis,
        );
    }
};

pub const IDWriteFontFileLoader = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("727cad4e-d6af-4c9e-8a08-d695b11caa49");
    pub const Vtbl = extern struct {
        // IUnknown
        iunknown: IUnknown.Vtbl,

        // IDWriteFontFileLoader
        CreateStreamFromKey: fn (self: *Self, fontFileReferenceKey: *const c_void, fontFileReferenceKeySize: u32, fontFileStream: *?*IDWriteFontFileStream) callconv(.Stdcall) i32,
    };

    lpVtbl: *Vtbl,

    pub inline fn QueryInterface(self: *Self, riid: *const GUID, ppvObject: *?*c_void) i32 {
        return @ptrCast(*IUnknown, self).QueryInterface(riid, ppvObject);
    }

    pub inline fn AddRef(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).AddRef();
    }

    pub inline fn Release(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).Release();
    }

    pub inline fn CreateStreamFromKey(
        self: *Self,
        fontFileReferenceKey: *const c_void,
        fontFileReferenceKeySize: u32,
        fontFileStream: *?*IDWriteFontFileStream,
    ) i32 {
        return self.lpVtbl.*.CreateStreamFromKey(
            self,
            fontFileReferenceKey,
            fontFileReferenceKeySize,
            fontFileStream,
        );
    }
};

pub const IDWriteLocalFontFileLoader = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("b2d9f3ec-c9fe-4a11-a2ec-d86208f7c0a2");
    pub const Vtbl = extern struct {
        // IDWriteFontFileLoader
        idwritefontfileloader: IDWriteFontFileLoader.Vtbl,

        // IDWriteLocalFontFileLoader
        GetFilePathLengthFromKey: fn (self: *Self, fontFileReferenceKey: *const c_void, fontFileReferenceKeySize: u32, filePathLength: *u32) callconv(.Stdcall) i32,
        GetFilePathFromKey: fn (self: *Self, fontFileReferenceKey: *const c_void, fontFileReferenceKeySize: u32, filePath: [*:0]u16, filePathSize: u32) callconv(.Stdcall) i32,
        GetLastWriteTimeFromKey: fn (self: *Self, fontFileReferenceKey: *const c_void, fontFileReferenceKeySize: u32, lastWriteTime: *FILETIME) callconv(.Stdcall) i32,
    };

    lpVtbl: *Vtbl,

    pub inline fn QueryInterface(self: *Self, riid: *const GUID, ppvObject: *?*c_void) i32 {
        return @ptrCast(*IUnknown, self).QueryInterface(riid, ppvObject);
    }

    pub inline fn AddRef(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).AddRef();
    }

    pub inline fn Release(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).Release();
    }

    pub inline fn CreateStreamFromKey(
        self: *Self,
        fontFileReferenceKey: *const c_void,
        fontFileReferenceKeySize: u32,
        fontFileStream: *?*IDWriteFontFileStream,
    ) i32 {
        return @ptrCast(*IDWriteFontFileLoader, self).CreateStreamFromKey(
            fontFileReferenceKey,
            fontFileReferenceKeySize,
            fontFileStream,
        );
    }

    pub inline fn GetFilePathLengthFromKey(
        self: *Self,
        fontFileReferenceKey: *const c_void,
        fontFileReferenceKeySize: u32,
        filePathLength: *u32,
    ) i32 {
        return self.lpVtbl.*.GetFilePathLengthFromKey(
            self,
            fontFileReferenceKey,
            fontFileReferenceKeySize,
            filePathLength,
        );
    }

    pub inline fn GetFilePathFromKey(
        self: *Self,
        fontFileReferenceKey: *const c_void,
        fontFileReferenceKeySize: u32,
        filePath: [:0]u16,
    ) i32 {
        return self.lpVtbl.*.GetFilePathFromKey(
            self,
            fontFileReferenceKey,
            fontFileReferenceKeySize,
            filePath.ptr,
            @truncate(u32, filePath.len),
        );
    }

    pub inline fn GetLastWriteTimeFromKey(
        self: *Self,
        fontFileReferenceKey: *const c_void,
        fontFileReferenceKeySize: u32,
        lastWriteTime: *FILETIME,
    ) i32 {
        return self.lpVtbl.*.GetLastWriteTimeFromKey(
            self,
            fontFileReferenceKey,
            fontFileReferenceKeySize,
            lastWriteTime,
        );
    }
};

pub const IDWriteFontFileStream = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("6d4865fe-0ab8-4d91-8f62-5dd6be34a3e0");
    pub const Vtbl = extern struct {
        // IUnknown
        iunknown: IUnknown.Vtbl,

        // IDWriteFontFileStream
        ReadFileFragment: fn (self: *Self, fragmentStart: *?*const c_void, fileOffset: u64, fragmentSize: u64, fragmentContext: *?*c_void) callconv(.Stdcall) c_ulong,
        ReleaseFileFragment: fn (self: *Self, fragmentContext: *c_void) callconv(.Stdcall) void,
        GetFileSize: fn (self: *Self, fileSize: *u64) callconv(.Stdcall) i32,
        GetLastWriteTime: fn (self: *Self, lastWriteTime: *u64) callconv(.Stdcall) i32,
    };

    lpVtbl: *Vtbl,

    pub inline fn QueryInterface(self: *Self, riid: *const GUID, ppvObject: *?*c_void) i32 {
        return @ptrCast(*IUnknown, self).QueryInterface(riid, ppvObject);
    }

    pub inline fn AddRef(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).AddRef();
    }

    pub inline fn Release(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).Release();
    }

    pub inline fn ReadFileFragment(
        self: *Self,
        fragmentStart: *?*const c_void,
        fileOffset: u64,
        fragmentSize: u64,
        fragmentContext: *?*c_void,
    ) c_ulong {
        return self.lpVtbl.*.ReadFileFragment(
            self,
            fragmentStart,
            fileOffset,
            fragmentSize,
            fragmentContext,
        );
    }

    pub inline fn ReleaseFileFragment(
        self: *Self,
        fragmentContext: *c_void,
    ) void {
        self.lpVtbl.*.ReleaseFileFragment(
            self,
            fragmentContext,
        );
    }

    pub inline fn GetFileSize(
        self: *Self,
        fileSize: *u64,
    ) i32 {
        return self.lpVtbl.*.GetFileSize(
            self,
            fileSize,
        );
    }

    pub inline fn GetLastWriteTime(
        self: *Self,
        lastWriteTime: *u64,
    ) i32 {
        return self.lpVtbl.*.GetLastWriteTime(
            self,
            lastWriteTime,
        );
    }
};

pub const IDWriteFontFile = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("739d886a-cef5-47dc-8769-1a8b41bebbb0");
    pub const Vtbl = extern struct {
        // IUnknown
        iunknown: IUnknown.Vtbl,

        // IDWriteFontFile
        GetReferenceKey: fn (self: *Self, fontFileReferenceKey: *?*const c_void, fontFileReferenceKeySize: *u32) callconv(.Stdcall) c_ulong,
        GetLoader: fn (self: *Self, fontFileLoader: *?*IDWriteFontFileLoader) callconv(.Stdcall) c_ulong,
        Analyze: fn (self: *Self, isSupportedFontType: *i32, fontFileType: *DWRITE_FONT_FILE_TYPE, fontFaceType: ?*DWRITE_FONT_FACE_TYPE, numberOfFaces: *u32) callconv(.Stdcall) c_ulong,
    };

    lpVtbl: *Vtbl,

    pub inline fn QueryInterface(self: *Self, riid: *const GUID, ppvObject: *?*c_void) i32 {
        return @ptrCast(*IUnknown, self).QueryInterface(riid, ppvObject);
    }

    pub inline fn AddRef(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).AddRef();
    }

    pub inline fn Release(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).Release();
    }

    pub inline fn GetReferenceKey(
        self: *Self,
        fontFileReferenceKey: *?*const c_void,
        fontFileReferenceKeySize: *u32,
    ) c_ulong {
        return self.lpVtbl.*.GetReferenceKey(
            self,
            fontFileReferenceKey,
            fontFileReferenceKeySize,
        );
    }

    pub inline fn GetLoader(
        self: *Self,
        fontFileLoader: *?*IDWriteFontFileLoader,
    ) c_ulong {
        return self.lpVtbl.*.GetLoader(
            self,
            fontFileLoader,
        );
    }

    pub inline fn Analyze(
        self: *Self,
        isSupportedFontType: *bool,
        fontFileType: *DWRITE_FONT_FILE_TYPE,
        fontFaceType: ?*DWRITE_FONT_FACE_TYPE,
        numberOfFaces: *u32,
    ) c_ulong {
        var is_supported_font_type: i32 = 0;

        const ret = self.lpVtbl.*.Analyze(
            self,
            &is_supported_font_type,
            fontFileType,
            fontFaceType,
            numberOfFaces,
        );

        isSupportedFontType.* = is_supported_font_type != 0;
        return ret;
    }
};

pub const IDWriteRenderingParams = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("2f0da53a-2add-47cd-82ee-d9ec34688e75");
    pub const Vtbl = extern struct {
        // IUnknown
        iunknown: IUnknown.Vtbl,

        // IDWriteRenderingParams
        GetGamma: fn (self: *Self) callconv(.Stdcall) f32,
        GetEnhancedContrast: fn (self: *Self) callconv(.Stdcall) f32,
        GetClearTypeLevel: fn (self: *Self) callconv(.Stdcall) f32,
        GetPixelGeometry: fn (self: *Self) callconv(.Stdcall) DWRITE_PIXEL_GEOMETRY,
        GetRenderingMode: fn (self: *Self) callconv(.Stdcall) DWRITE_RENDERING_MODE,
    };

    lpVtbl: *Vtbl,

    pub inline fn QueryInterface(self: *Self, riid: *const GUID, ppvObject: *?*c_void) i32 {
        return @ptrCast(*IUnknown, self).QueryInterface(riid, ppvObject);
    }

    pub inline fn AddRef(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).AddRef();
    }

    pub inline fn Release(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).Release();
    }

    pub inline fn GetGamma(self: *Self) f32 {
        return self.lpVtbl.*.GetGamma(self);
    }

    pub inline fn GetEnhancedContrast(self: *Self) f32 {
        return self.lpVtbl.*.GetEnhancedContrast(self);
    }

    pub inline fn GetClearTypeLevel(self: *Self) f32 {
        return self.lpVtbl.*.GetClearTypeLevel(self);
    }

    pub inline fn GetPixelGeometry(self: *Self) DWRITE_PIXEL_GEOMETRY {
        return self.lpVtbl.*.GetPixelGeometry(self);
    }

    pub inline fn GetRenderingMode(self: *Self) DWRITE_RENDERING_MODE {
        return self.lpVtbl.*.GetRenderingMode(self);
    }
};

pub const IDWriteFontFace = extern struct {
    const Self = @This();
    const IID = GUID_STRING("5f49804d-7024-4d43-bfa9-d25984f53849");
    const Vtbl = extern struct {
        // IUnknown
        iunknown: IUnknown.Vtbl,

        // IDWriteRenderingParams
        GetType: fn (self: *Self) callconv(.Stdcall) DWRITE_FONT_FACE_TYPE,
        GetFiles: fn (self: *Self, numberOfFiles: *u32, fontFiles: ?[*]*IDWriteFontFile) callconv(.Stdcall) i32,
        GetIndex: fn (self: *Self) callconv(.Stdcall) u32,
        GetSimulations: fn (self: *Self) callconv(.Stdcall) DWRITE_FONT_SIMULATIONS,
        IsSymbolFont: fn (self: *Self) callconv(.Stdcall) i32,
        GetMetrics: fn (self: *Self, fontFaceMetrics: *DWRITE_FONT_METRICS) callconv(.Stdcall) void,
        GetGlyphCount: fn (self: *Self) callconv(.Stdcall) u16,
        GetDesignGlyphMetrics: fn (self: *Self, glyphIndices: [*]const u16, glyphCount: u32, glyphMetrics: [*]DWRITE_GLYPH_METRICS, isSideways: i32) callconv(.Stdcall) i32,
        GetGlyphIndices: fn (self: *Self, codePoints: [*]const u32, codePointCount: u32, glyphIndices: [*]u16) callconv(.Stdcall) i32,
        TryGetFontTable: fn (self: *Self, openTypeTableTag: u32, tableData: *?*c_void, tableSize: *u32, tableContext: *?*c_void, exists: *i32) callconv(.Stdcall) i32,
        ReleaseFontTable: fn (self: *Self, tableContext: *c_void) callconv(.Stdcall) void,
        GetGlyphRunOutline: fn (self: *Self, emSize: f32, glyphIndices: [*]const u16, glyphAdvances: ?[*]const f32, glyphOffsets: ?[*]const DWRITE_GLYPH_OFFSET, glyphCount: u32, isSideways: i32, isRightToLeft: i32, geometrySink: *IDWriteGeometrySink) callconv(.Stdcall) i32,
        GetRecommendedRenderingMode: fn (self: *Self, emSize: f32, pixelsPerDip: f32, measuringMode: DWRITE_MEASURING_MODE, renderingParams: *IDWriteRenderingParams, renderingMode: *DWRITE_RENDERING_MODE) callconv(.Stdcall) i32,
        GetGdiCompatibleMetrics: fn (self: *Self, emSize: f32, pixelsPerDip: f32, transform: ?*const DWRITE_MATRIX, fontFaceMetrics: *DWRITE_FONT_METRICS) callconv(.Stdcall) i32,
        GetGdiCompatibleGlyphMetrics: fn (self: *Self, emSize: f32, pixelsPerDip: f32, transform: ?*const DWRITE_MATRIX, useGdiNatural: i32, glyphIndices: [*]const u16, glyphCount: u32, glyphMetrics: [*]DWRITE_GLYPH_METRICS, isSideways: i32) callconv(.Stdcall) i32,
    };

    lpVtbl: *Vtbl,

    pub inline fn QueryInterface(self: *Self, riid: *const GUID, ppvObject: *?*c_void) i32 {
        return @ptrCast(*IUnknown, self).QueryInterface(riid, ppvObject);
    }

    pub inline fn AddRef(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).AddRef();
    }

    pub inline fn Release(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).Release();
    }

    pub inline fn GetType(self: *Self) DWRITE_FONT_FACE_TYPE {
        return self.lpVtbl.*.GetType(self);
    }

    pub inline fn GetFiles(
        self: *Self,
        numberOfFiles: *u32,
        fontFiles: ?[*]*IDWriteFontFile,
    ) i32 {
        return self.lpVtbl.*.GetFiles(
            self,
            numberOfFiles,
            fontFiles,
        );
    }

    pub inline fn GetIndex(self: *Self) u32 {
        return self.lpVtbl.*.GetIndex(self);
    }

    pub inline fn GetSimulations(self: *Self) DWRITE_FONT_SIMULATIONS {
        return self.lpVtbl.*.GetSimulations(self);
    }

    pub inline fn IsSymbolFont(self: *Self) bool {
        return self.lpVtbl.*.IsSymbolFont(self) != 0;
    }

    pub inline fn GetMetrics(self: *Self, fontFaceMetrics: *DWRITE_FONT_METRICS) void {
        self.lpVtbl.*.GetMetrics(self, fontFaceMetrics);
    }

    pub inline fn GetGlyphCount(self: *Self) u16 {
        return self.lpVtbl.*.GetGlyphCount(self);
    }

    pub inline fn GetDesignGlyphMetrics(
        self: *Self,
        glyphIndices: []const u16,
        glyphMetrics: []DWRITE_GLYPH_METRICS,
        isSideways: bool,
    ) i32 {
        assert(glyphIndices.len == glyphMetrics.len);

        return self.lpVtbl.*.GetDesignGlyphMetrics(
            self,
            glyphIndices.ptr,
            @truncate(u32, glyphIndices.len),
            glyphMetrics.ptr,
            @as(i32, @boolToInt(isSideways)),
        );
    }

    pub inline fn GetGlyphIndices(
        self: *Self,
        codePoints: []const u32,
        glyphIndices: []u16,
    ) i32 {
        assert(codePoints.len == glyphIndices.len);

        return self.lpVtbl.*.GetGlyphIndices(
            self,
            codePoints.ptr,
            @truncate(u32, codePoints.len),
            glyphIndices.ptr,
        );
    }

    pub inline fn TryGetFontTable(
        self: *Self,
        openTypeTableTag: u32,
        tableData: *?*c_void,
        tableSize: *u32,
        tableContext: *?*c_void,
        exists: *bool,
    ) i32 {
        var exists_aux: i32 = 0;
        const ret = self.lpVtbl.*.TryGetFontTable(
            self,
            openTypeTableTag,
            tableData,
            tableSize,
            tableContext,
            &exists_aux,
        );
        exists.* = exists_aux != 0;
        return ret;
    }

    pub inline fn ReleaseFontTable(self: *Self, tableContext: *c_void) void {
        self.lpVtbl.*.ReleaseFontTable(self, tableContext);
    }

    pub inline fn GetGlyphRunOutline(
        self: *Self,
        emSize: f32,
        glyphIndices: []const u16,
        glyphAdvances: ?[]const f32,
        glyphOffsets: ?[]const DWRITE_GLYPH_OFFSET,
        isSideways: bool,
        isRightToLeft: bool,
        geometrySink: *IDWriteGeometrySink,
    ) i32 {
        assert(if (glyphAdvances != null) glyphOffsets != null else glyphOffsets == null);
        assert(glyphAdvances == null or glyphAdvances.?.len == glyphOffsets.?.len);

        return self.lpVtbl.*.GetGlyphRunOutline(
            self,
            emSize,
            glyphIndices.ptr,
            glyphAdvances.?.ptr,
            glyphOffsets.?.ptr,
            @truncate(u32, glyphIndices.len),
            @as(i32, @boolToInt(isSideways)),
            @as(i32, @boolToInt(isRightToLeft)),
            geometrySink,
        );
    }

    pub inline fn GetRecommendedRenderingMode(
        self: *Self,
        emSize: f32,
        pixelsPerDip: f32,
        measuringMode: DWRITE_MEASURING_MODE,
        renderingParams: *IDWriteRenderingParams,
        renderingMode: *DWRITE_RENDERING_MODE,
    ) i32 {
        return self.lpVtbl.*.GetRecommendedRenderingMode(
            self,
            emSize,
            pixelsPerDip,
            measuringMode,
            renderingParams,
            renderingMode,
        );
    }

    pub inline fn GetGdiCompatibleMetrics(
        self: *Self,
        emSize: f32,
        pixelsPerDip: f32,
        transform: ?*const DWRITE_MATRIX,
        fontFaceMetrics: *DWRITE_FONT_METRICS,
    ) i32 {
        return self.lpVtbl.*.GetGdiCompatibleMetrics(
            self,
            emSize,
            pixelsPerDip,
            transform,
            fontFaceMetrics,
        );
    }

    pub inline fn GetGdiCompatibleGlyphMetrics(
        self: *Self,
        emSize: f32,
        pixelsPerDip: f32,
        transform: ?*const DWRITE_MATRIX,
        useGdiNatural: bool,
        glyphIndices: []const u16,
        glyphMetrics: []DWRITE_GLYPH_METRICS,
        isSideways: bool,
    ) i32 {
        assert(glyphIndices.len == glyphMetrics.len);

        return self.lpVtbl.*.GetGdiCompatibleGlyphMetrics(
            self,
            emSize,
            pixelsPerDip,
            transform,
            @as(i32, @boolToInt(useGdiNatural)),
            glyphIndices.ptr,
            @truncate(u32, glyphIndices.len),
            glyphMetrics.ptr,
            @as(i32, @boolToInt(isSideways)),
        );
    }
};

pub const IDWriteFontCollectionLoader = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("cca920e4-52f0-492b-bfa8-29c72ee0a468");
    pub const Vtbl = extern struct {
        // IUnknown
        iunknown: IUnknown.Vtbl,

        // IDWriteFontCollectionLoader
        CreateEnumeratorFromKey: fn (self: *Self, factory: *IDWriteFactory, collectionKey: *const c_void, collectionKeySize: u32, fontFileEnumerator: *?*IDWriteFontFileEnumerator) callconv(.Stdcall) i32,
    };

    lpVtbl: *Vtbl,

    pub inline fn QueryInterface(self: *Self, riid: *const GUID, ppvObject: *?*c_void) i32 {
        return @ptrCast(*IUnknown, self).QueryInterface(riid, ppvObject);
    }

    pub inline fn AddRef(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).AddRef();
    }

    pub inline fn Release(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).Release();
    }

    pub inline fn CreateEnumeratorFromKey(
        self: *Self,
        factory: *IDWriteFactory,
        collectionKey: *const c_void,
        collectionKeySize: u32,
        fontFileEnumerator: *?*IDWriteFontFileEnumerator,
    ) i32 {
        return self.lpVtbl.*.CreateEnumeratorFromKey(
            self,
            factory,
            collectionKey,
            collectionKeySize,
            fontFileEnumerator,
        );
    }
};

pub const IDWriteFontFileEnumerator = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("72755049-5ff7-435d-8348-4be97cfa6c7c");
    pub const Vtbl = extern struct {
        // IUnknown
        iunknown: IUnknown.Vtbl,

        // IDWriteFontFileEnumerator
        MoveNext: fn (self: *Self, hasCurrentFile: *i32) callconv(.Stdcall) i32,
        GetCurrentFontFile: fn (self: *Self, fontFile: *?*IDWriteFontFile) callconv(.Stdcall) i32,
    };

    lpVtbl: *Vtbl,

    pub inline fn QueryInterface(self: *Self, riid: *const GUID, ppvObject: *?*c_void) i32 {
        return @ptrCast(*IUnknown, self).QueryInterface(riid, ppvObject);
    }

    pub inline fn AddRef(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).AddRef();
    }

    pub inline fn Release(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).Release();
    }

    pub inline fn MoveNext(
        self: *Self,
        hasCurrentFile: *bool,
    ) i32 {
        var has_current_file: i32 = 0;

        const ret = self.lpVtbl.*.MoveNext(
            self,
            &has_current_file,
        );
        hasCurrentFile.* = has_current_file != 0;

        return ret;
    }

    pub inline fn GetCurrentFontFile(
        self: *Self,
        fontFile: *?*IDWriteFontFile,
    ) i32 {
        return self.lpVtbl.*.GetCurrentFontFile(
            self,
            fontFile,
        );
    }
};

pub const IDWriteLocalizedStrings = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("08256209-099a-4b34-b86d-c22b110e7771");
    pub const Vtbl = extern struct {
        // IUnknown
        iunknown: IUnknown.Vtbl,

        // IDWriteLocalizedStrings
        GetCount: fn (self: *Self) callconv(.Stdcall) u32,
        FindLocaleName: fn (self: *Self, localeName: [*:0]const u16, index: *u32, exists: *i32) callconv(.Stdcall) i32,
        GetLocaleNameLength: fn (self: *Self, index: u32, length: *u32) callconv(.Stdcall) i32,
        GetLocaleName: fn (self: *Self, index: u32, localeName: [*:0]u16, size: u32) callconv(.Stdcall) i32,
        GetStringLength: fn (self: *Self, index: u32, length: *u32) callconv(.Stdcall) i32,
        GetString: fn (self: *Self, index: u32, stringBuffer: [*:0]u16, size: u32) callconv(.Stdcall) i32,
    };

    lpVtbl: *Vtbl,

    pub inline fn QueryInterface(self: *Self, riid: *const GUID, ppvObject: *?*c_void) i32 {
        return @ptrCast(*IUnknown, self).QueryInterface(riid, ppvObject);
    }

    pub inline fn AddRef(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).AddRef();
    }

    pub inline fn Release(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).Release();
    }

    pub inline fn GetCount(self: *Self) u32 {
        return self.lpVtbl.*.GetCount(self);
    }

    pub inline fn FindLocaleName(
        self: *Self,
        localeName: [:0]const u16,
        index: *u32,
        exists: *bool,
    ) i32 {
        var exists_aux: i32 = 0;
        const ret = self.lpVtbl.*.FindLocaleName(
            self,
            localeName.ptr,
            index,
            &exists_aux,
        );

        exists.* = exists_aux != 0;
        return ret;
    }

    pub inline fn GetLocaleNameLength(
        self: *Self,
        index: u32,
        length: *u32,
    ) i32 {
        return self.lpVtbl.*.GetLocaleNameLength(
            self,
            index,
            length,
        );
    }

    pub inline fn GetLocaleName(
        self: *Self,
        index: u32,
        localeName: [:0]u16,
    ) i32 {
        return self.lpVtbl.*.GetLocaleName(
            self,
            index,
            localeName.ptr,
            @truncate(u32, localeName.len),
        );
    }

    pub inline fn GetStringLength(
        self: *Self,
        index: u32,
        length: *u32,
    ) i32 {
        return self.lpVtbl.*.GetStringLength(
            self,
            index,
            length,
        );
    }

    pub inline fn GetString(
        self: *Self,
        index: u32,
        stringBuffer: [:0]u16,
    ) i32 {
        return self.lpVtbl.*.GetString(
            self,
            index,
            stringBuffer.ptr,
            @truncate(u32, stringBuffer.len),
        );
    }
};

pub const IDWriteFontCollection = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("a84cee02-3eea-4eee-a827-87c1a02a0fcc");
    pub const Vtbl = extern struct {
        // IUnknown
        iunknown: IUnknown.Vtbl,

        // IDWriteFontCollection
        GetFontFamilyCount: fn (self: *Self) callconv(.Stdcall) u32,
        GetFontFamily: fn (self: *Self, index: u32, fontFamily: *?*IDWriteFontFamily) callconv(.Stdcall) i32,
        FindFamilyName: fn (self: *Self, familyName: [*:0]const u16, index: *u32, exists: *i32) callconv(.Stdcall) i32,
        GetFontFromFontFace: fn (self: *Self, fontFace: *IDWriteFontFace, font: *?*IDWriteFont) callconv(.Stdcall) i32,
    };

    lpVtbl: *Vtbl,

    pub inline fn QueryInterface(self: *Self, riid: *const GUID, ppvObject: *?*c_void) i32 {
        return @ptrCast(*IUnknown, self).QueryInterface(riid, ppvObject);
    }

    pub inline fn AddRef(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).AddRef();
    }

    pub inline fn Release(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).Release();
    }

    pub inline fn GetFontFamilyCount(self: *Self) u32 {
        return self.lpVtbl.*.GetFontFamilyCount(self);
    }

    pub inline fn GetFontFamily(
        self: *Self,
        index: u32,
        fontFamily: *?*IDWriteFontFamily,
    ) i32 {
        return self.lpVtbl.*.GetFontFamily(
            self,
            index,
            fontFamily,
        );
    }

    pub inline fn FindFamilyName(
        self: *Self,
        familyName: [:0]const u16,
        index: *u32,
        exists: *bool,
    ) i32 {
        var exists_aux: i32 = 0;
        const ret = self.lpVtbl.*.FindFamilyName(
            self,
            familyName.ptr,
            index,
            &exists_aux,
        );

        exists.* = exists_aux != 0;
        return ret;
    }

    pub inline fn GetFontFromFontFace(
        self: *Self,
        fontFace: *IDWriteFontFace,
        font: *?*IDWriteFont,
    ) i32 {
        return self.lpVtbl.*.GetFontFromFontFace(
            self,
            fontFace,
            font,
        );
    }
};

pub const IDWriteFontList = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("1a0d8438-1d97-4ec1-aef9-a2fb86ed6acb");
    pub const Vtbl = extern struct {
        // IUnknown
        iunknown: IUnknown.Vtbl,

        // IDWriteFontList
        GetFontCollection: fn (self: *Self, fontCollection: *?*IDWriteFontCollection) callconv(.Stdcall) i32,
        GetFontCount: fn (self: *Self) callconv(.Stdcall) u32,
        GetFont: fn (self: *Self, index: u32, font: *?*IDWriteFont) callconv(.Stdcall) i32,
    };

    lpVtbl: *Vtbl,

    pub inline fn QueryInterface(self: *Self, riid: *const GUID, ppvObject: *?*c_void) i32 {
        return @ptrCast(*IUnknown, self).QueryInterface(riid, ppvObject);
    }

    pub inline fn AddRef(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).AddRef();
    }

    pub inline fn Release(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).Release();
    }

    pub inline fn GetFontCollection(
        self: *Self,
        fontCollection: *?*IDWriteFontCollection,
    ) i32 {
        return self.lpVtbl.*.GetFontCollection(
            self,
            fontCollection,
        );
    }

    pub inline fn GetFontCount(self: *Self) u32 {
        return self.lpVtbl.*.GetFontCount(self);
    }

    pub inline fn GetFont(
        self: *Self,
        index: u32,
        font: *?*IDWriteFont,
    ) i32 {
        return self.lpVtbl.*.GetFont(
            self,
            index,
            font,
        );
    }
};

pub const IDWriteFontFamily = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("da20d8ef-812a-4c43-9802-62ec4abd7add");
    pub const Vtbl = extern struct {
        // IDWriteFontList
        idwritefontlist: IDWriteFontList.Vtbl,

        // IDWriteFontFamily
        GetFamilyNames: fn (self: *Self, names: *?*IDWriteLocalizedStrings) callconv(.Stdcall) i32,
        GetFirstMatchingFont: fn (self: *Self, weight: DWRITE_FONT_WEIGHT, stretch: DWRITE_FONT_STRETCH, style: DWRITE_FONT_STYLE, matchingFont: *?*IDWriteFont) callconv(.Stdcall) i32,
        GetMatchingFonts: fn (self: *Self, weight: DWRITE_FONT_WEIGHT, stretch: DWRITE_FONT_STRETCH, style: DWRITE_FONT_STYLE, matchingFonts: *?*IDWriteFontList) callconv(.Stdcall) i32,
    };

    lpVtbl: *Vtbl,

    pub inline fn QueryInterface(self: *Self, riid: *const GUID, ppvObject: *?*c_void) i32 {
        return @ptrCast(*IUnknown, self).QueryInterface(riid, ppvObject);
    }

    pub inline fn AddRef(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).AddRef();
    }

    pub inline fn Release(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).Release();
    }

    pub inline fn GetFontCollection(self: *Self, fontCollection: *?*IDWriteFontCollection) i32 {
        return @ptrCast(*IDWriteFontList, self).GetFontCollection(fontCollection);
    }

    pub inline fn GetFontCount(self: *Self) u32 {
        return @ptrCast(*IDWriteFontList, self).GetFontCount();
    }

    pub inline fn GetFont(
        self: *Self,
        index: u32,
        font: *?*IDWriteFont,
    ) i32 {
        return @ptrCast(*IDWriteFontList, self).GetFont(
            index,
            font,
        );
    }

    pub inline fn GetFamilyNames(self: *Self, names: *?*IDWriteLocalizedStrings) i32 {
        return self.lpVtbl.*.GetFamilyNames(self, names);
    }

    pub inline fn GetFirstMatchingFont(
        self: *Self,
        weight: DWRITE_FONT_WEIGHT,
        stretch: DWRITE_FONT_STRETCH,
        style: DWRITE_FONT_STYLE,
        matchingFont: *?*IDWriteFont,
    ) i32 {
        return self.lpVtbl.*.GetFirstMatchingFont(
            self,
            weight,
            stretch,
            style,
            matchingFont,
        );
    }

    pub inline fn GetMatchingFonts(
        self: *Self,
        weight: DWRITE_FONT_WEIGHT,
        stretch: DWRITE_FONT_STRETCH,
        style: DWRITE_FONT_STYLE,
        matchingFonts: *?*IDWriteFontList,
    ) i32 {
        return self.lpVtbl.*.GetMatchingFonts(
            self,
            weight,
            stretch,
            style,
            matchingFonts,
        );
    }
};

pub const IDWriteFont = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("acd16696-8c14-4f5d-877e-fe3fc1d32737");
    pub const Vtbl = extern struct {
        // IUnknown
        iunknown: IUnknown.Vtbl,

        // IDWriteFont
        GetFontFamily: fn (self: *Self, fontFamily: *?*IDWriteFontFamily) callconv(.Stdcall) i32,
        GetWeight: fn (self: *Self) callconv(.Stdcall) DWRITE_FONT_WEIGHT,
        GetStretch: fn (self: *Self) callconv(.Stdcall) DWRITE_FONT_STRETCH,
        GetStyle: fn (self: *Self) callconv(.Stdcall) DWRITE_FONT_STYLE,
        IsSymbolFont: fn (self: *Self) callconv(.Stdcall) i32,
        GetFaceNames: fn (self: *Self, names: *?*IDWriteLocalizedStrings) callconv(.Stdcall) i32,
        GetInformationalStrings: fn (self: *Self, informationalStringID: DWRITE_INFORMATIONAL_STRING_ID, informationalStrings: *?*IDWriteLocalizedStrings, exists: *i32) callconv(.Stdcall) i32,
        GetSimulations: fn (self: *Self) callconv(.Stdcall) DWRITE_FONT_SIMULATIONS,
        GetMetrics: fn (self: *Self, fontMetrics: *DWRITE_FONT_METRICS) callconv(.Stdcall) void,
        HasCharacter: fn (self: *Self, unicodeValue: u32, exists: *i32) callconv(.Stdcall) i32,
        CreateFontFace: fn (self: *Self, fontFace: *?*IDWriteFontFace) callconv(.Stdcall) i32,
    };

    lpVtbl: *Vtbl,

    pub inline fn QueryInterface(self: *Self, riid: *const GUID, ppvObject: *?*c_void) i32 {
        return @ptrCast(*IUnknown, self).QueryInterface(riid, ppvObject);
    }

    pub inline fn AddRef(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).AddRef();
    }

    pub inline fn Release(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).Release();
    }

    pub inline fn GetFontFamily(self: *Self, fontFamily: *?*IDWriteFontFamily) i32 {
        return self.lpVtbl.*.GetFontFamily(self, fontFamily);
    }

    pub inline fn GetWeight(self: *Self) DWRITE_FONT_WEIGHT {
        return self.lpVtbl.*.GetWeight(self);
    }

    pub inline fn GetStretch(self: *Self) DWRITE_FONT_STRETCH {
        return self.lpVtbl.*.GetStretch(self);
    }

    pub inline fn GetStyle(self: *Self) DWRITE_FONT_STYLE {
        return self.lpVtbl.*.GetStyle(self);
    }

    pub inline fn IsSymbolFont(self: *Self) bool {
        return self.lpVtbl.*.IsSymbolFont(self) != 0;
    }

    pub inline fn GetFaceNames(self: *Self, names: *?*IDWriteLocalizedStrings) i32 {
        return self.lpVtbl.*.GetFaceNames(self, names);
    }

    pub inline fn GetInformationalStrings(
        self: *Self,
        informationalStringID: DWRITE_INFORMATIONAL_STRING_ID,
        informationalStrings: *?*IDWriteLocalizedStrings,
        exists: *bool,
    ) i32 {
        var exists_aux: i32 = 0;
        const ret = self.lpVtbl.*.GetInformationalStrings(
            self,
            informationalStringID,
            informationalStrings,
            &exists_aux,
        );

        exists.* = exists_aux != 0;
        return ret;
    }

    pub inline fn GetSimulations(self: *Self) DWRITE_FONT_SIMULATIONS {
        return self.lpVtbl.*.GetSimulations(self);
    }

    pub inline fn GetMetrics(self: *Self, fontMetrics: *DWRITE_FONT_METRICS) void {
        self.lpVtbl.*.GetMetrics(self, fontMetrics);
    }

    pub inline fn HasCharacter(self: *Self, unicodeValue: u32, exists: *bool) i32 {
        var exists_aux: i32 = 0;

        const ret = self.lpVtbl.*.HasCharacter(self, unicodeValue, &exists_aux);

        exists.* = exists_aux != 0;
        return ret;
    }

    pub inline fn CreateFontFace(self: *Self, fontFace: *?*IDWriteFontFace) i32 {
        return self.lpVtbl.*.CreateFontFace(self, fontFace);
    }
};

pub const IDWriteTextFormat = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("9c906818-31d7-4fd3-a151-7c5e225db55a");
    pub const Vtbl = extern struct {
        // IUnknown
        iunknown: IUnknown.Vtbl,

        // IDWriteTextFormat
        SetTextAlignment: fn (self: *Self, textAlignment: DWRITE_TEXT_ALIGNMENT) callconv(.Stdcall) i32,
        SetParagraphAlignment: fn (self: *Self, paragraphAlignment: DWRITE_PARAGRAPH_ALIGNMENT) callconv(.Stdcall) i32,
        SetWordWrapping: fn (self: *Self, wordWrapping: DWRITE_WORD_WRAPPING) callconv(.Stdcall) i32,
        SetReadingDirection: fn (self: *Self, readingDirection: DWRITE_READING_DIRECTION) callconv(.Stdcall) i32,
        SetFlowDirection: fn (self: *Self, flowDirection: DWRITE_FLOW_DIRECTION) callconv(.Stdcall) i32,
        SetIncrementalTabStop: fn (self: *Self, incrementalTabStop: f32) callconv(.Stdcall) i32,
        SetTrimming: fn (self: *Self, trimmingOptions: *const DWRITE_TRIMMING, trimmingSign: ?*IDWriteInlineObject) callconv(.Stdcall) i32,
        SetLineSpacing: fn (self: *Self, lineSpacingMethod: DWRITE_LINE_SPACING_METHOD, lineSpacing: f32, baseline: f32) callconv(.Stdcall) i32,
        GetTextAlignment: fn (self: *Self) callconv(.Stdcall) DWRITE_TEXT_ALIGNMENT,
        GetParagraphAlignment: fn (self: *Self) callconv(.Stdcall) DWRITE_PARAGRAPH_ALIGNMENT,
        GetWordWrapping: fn (self: *Self) callconv(.Stdcall) DWRITE_WORD_WRAPPING,
        GetReadingDirection: fn (self: *Self) callconv(.Stdcall) DWRITE_READING_DIRECTION,
        GetFlowDirection: fn (self: *Self) callconv(.Stdcall) DWRITE_FLOW_DIRECTION,
        GetIncrementalTabStop: fn (self: *Self) callconv(.Stdcall) f32,
        GetTrimming: fn (self: *Self, trimmingOptions: *DWRITE_TRIMMING, trimmingSign: *?*IDWriteInlineObject) callconv(.Stdcall) i32,
        GetLineSpacing: fn (self: *Self, lineSpacingMethod: *DWRITE_LINE_SPACING_METHOD, lineSpacing: *f32, baseline: *f32) callconv(.Stdcall) i32,
        GetFontCollection: fn (self: *Self, fontCollection: *?*IDWriteFontCollection) callconv(.Stdcall) i32,
        GetFontFamilyNameLength: fn (self: *Self) callconv(.Stdcall) u32,
        GetFontFamilyName: fn (self: *Self, fontFamilyName: [*:0]u16, nameSize: u32) callconv(.Stdcall) i32,
        GetFontWeight: fn (self: *Self) callconv(.Stdcall) DWRITE_FONT_WEIGHT,
        GetFontStyle: fn (self: *Self) callconv(.Stdcall) DWRITE_FONT_STYLE,
        GetFontStretch: fn (self: *Self) callconv(.Stdcall) DWRITE_FONT_STRETCH,
        GetFontSize: fn (self: *Self) callconv(.Stdcall) f32,
        GetLocaleNameLength: fn (self: *Self) callconv(.Stdcall) u32,
        GetLocaleName: fn (self: *Self, localeName: [*:0]u16, nameSize: u32) callconv(.Stdcall) i32,
    };

    lpVtbl: *Vtbl,

    pub inline fn QueryInterface(self: *Self, riid: *const GUID, ppvObject: *?*c_void) i32 {
        return @ptrCast(*IUnknown, self).QueryInterface(riid, ppvObject);
    }

    pub inline fn AddRef(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).AddRef();
    }

    pub inline fn Release(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).Release();
    }

    pub inline fn SetTextAlignment(self: *Self, textAlignment: DWRITE_TEXT_ALIGNMENT) i32 {
        return self.lpVtbl.*.SetTextAlignment(self, textAlignment);
    }

    pub inline fn SetParagraphAlignment(self: *Self, paragraphAlignment: DWRITE_PARAGRAPH_ALIGNMENT) i32 {
        return self.lpVtbl.*.SetParagraphAlignment(self, paragraphAlignment);
    }

    pub inline fn SetWordWrapping(self: *Self, wordWrapping: DWRITE_WORD_WRAPPING) i32 {
        return self.lpVtbl.*.SetWordWrapping(self, wordWrapping);
    }

    pub inline fn SetReadingDirection(self: *Self, readingDirection: DWRITE_READING_DIRECTION) i32 {
        return self.lpVtbl.*.SetReadingDirection(self, readingDirection);
    }

    pub inline fn SetFlowDirection(self: *Self, flowDirection: DWRITE_FLOW_DIRECTION) i32 {
        return self.lpVtbl.*.SetFlowDirection(self, flowDirection);
    }

    pub inline fn SetIncrementalTabStop(self: *Self, incrementalTabStop: f32) i32 {
        return self.lpVtbl.*.SetIncrementalTabStop(self, incrementalTabStop);
    }

    pub inline fn SetTrimming(
        self: *Self,
        trimmingOptions: *const DWRITE_TRIMMING,
        trimmingSign: ?*IDWriteInlineObject,
    ) i32 {
        return self.lpVtbl.*.SetTrimming(
            self,
            trimmingOptions,
            trimmingSign,
        );
    }

    pub inline fn SetLineSpacing(
        self: *Self,
        lineSpacingMethod: DWRITE_LINE_SPACING_METHOD,
        lineSpacing: f32,
        baseline: f32,
    ) i32 {
        return self.lpVtbl.*.SetLineSpacing(
            self,
            lineSpacingMethod,
            lineSpacing,
            baseline,
        );
    }

    pub inline fn GetTextAlignment(self: *Self) DWRITE_TEXT_ALIGNMENT {
        return self.lpVtbl.*.GetTextAlignment(self);
    }

    pub inline fn GetParagraphAlignment(self: *Self) DWRITE_PARAGRAPH_ALIGNMENT {
        return self.lpVtbl.*.GetParagraphAlignment(self);
    }

    pub inline fn GetWordWrapping(self: *Self) DWRITE_WORD_WRAPPING {
        return self.lpVtbl.*.GetWordWrapping(self);
    }

    pub inline fn GetReadingDirection(self: *Self) DWRITE_READING_DIRECTION {
        return self.lpVtbl.*.GetReadingDirection(self);
    }

    pub inline fn GetFlowDirection(self: *Self) DWRITE_FLOW_DIRECTION {
        return self.lpVtbl.*.GetFlowDirection(self);
    }

    pub inline fn GetIncrementalTabStop(self: *Self) f32 {
        return self.lpVtbl.*.GetIncrementalTabStop(self);
    }

    pub inline fn GetTrimming(
        self: *Self,
        trimmingOptions: *DWRITE_TRIMMING,
        trimmingSign: *?*IDWriteInlineObject,
    ) i32 {
        return self.lpVtbl.*.GetTrimming(
            self,
            trimmingOptions,
            trimmingSign,
        );
    }

    pub inline fn GetLineSpacing(
        self: *Self,
        lineSpacingMethod: *DWRITE_LINE_SPACING_METHOD,
        lineSpacing: *f32,
        baseline: *f32,
    ) i32 {
        return self.lpVtbl.*.GetLineSpacing(
            self,
            lineSpacingMethod,
            lineSpacing,
            baseline,
        );
    }

    pub inline fn GetFontCollection(self: *Self, fontCollection: *?*IDWriteFontCollection) i32 {
        return self.lpVtbl.*.GetFontCollection(self, fontCollection);
    }

    pub inline fn GetFontFamilyNameLength(self: *Self) u32 {
        return self.lpVtbl.*.GetFontFamilyNameLength(self);
    }

    pub inline fn GetFontFamilyName(
        self: *Self,
        fontFamilyName: [:0]u16,
    ) i32 {
        return self.lpVtbl.*.GetFontFamilyName(
            self,
            fontFamilyName.ptr,
            @truncate(u32, fontFamilyName.len),
        );
    }

    pub inline fn GetFontWeight(self: *Self) DWRITE_FONT_WEIGHT {
        return self.lpVtbl.*.GetFontWeight(self);
    }

    pub inline fn GetFontStyle(self: *Self) DWRITE_FONT_STYLE {
        return self.lpVtbl.*.GetFontStyle(self);
    }

    pub inline fn GetFontStretch(self: *Self) DWRITE_FONT_STRETCH {
        return self.lpVtbl.*.GetFontStretch(self);
    }

    pub inline fn GetFontSize(self: *Self) f32 {
        return self.lpVtbl.*.GetFontSize(self);
    }

    pub inline fn GetLocaleNameLength(self: *Self) u32 {
        return self.lpVtbl.*.GetLocaleNameLength(self);
    }

    pub inline fn GetLocaleName(self: *Self, localeName: [:0]u16) i32 {
        return self.lpVtbl.*.GetLocaleName(self, localeName.ptr, @truncate(u32, localeName.len));
    }
};

pub const IDWriteTypography = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("55f1112b-1dc2-4b3c-9541-f46894ed85b6");
    pub const Vtbl = extern struct {
        // IUnknown
        iunknown: IUnknown.Vtbl,

        // IDWriteTypography
        AddFontFeature: fn (self: *Self, fontFeature: DWRITE_FONT_FEATURE) callconv(.Stdcall) i32,
        GetFontFeatureCount: fn (self: *Self) callconv(.Stdcall) u32,
        GetFontFeature: fn (self: *Self, fontFeatureIndex: u32, fontFeature: *DWRITE_FONT_FEATURE) callconv(.Stdcall) i32,
    };

    lpVtbl: *Vtbl,

    pub inline fn QueryInterface(self: *Self, riid: *const GUID, ppvObject: *?*c_void) i32 {
        return @ptrCast(*IUnknown, self).QueryInterface(riid, ppvObject);
    }

    pub inline fn AddRef(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).AddRef();
    }

    pub inline fn Release(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).Release();
    }

    pub inline fn AddFontFeature(self: *Self, fontFeature: DWRITE_FONT_FEATURE) i32 {
        return self.lpVtbl.*.AddFontFeature(self, fontFeature);
    }

    pub inline fn GetFontFeatureCount(self: *Self) u32 {
        return self.lpVtbl.*.GetFontFeatureCount(self);
    }

    pub inline fn GetFontFeature(
        self: *Self,
        fontFeatureIndex: u32,
        fontFeature: *DWRITE_FONT_FEATURE,
    ) i32 {
        return self.lpVtbl.*.GetFontFeature(
            self,
            fontFeatureIndex,
            fontFeature,
        );
    }
};

pub const IDWriteNumberSubstitution = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("14885CC9-BAB0-4f90-B6ED-5C366A2CD03D");
    pub const Vtbl = extern struct {
        // IUnknown
        iunknown: IUnknown.Vtbl,

        // IDWriteNumberSubstitution
    };

    lpVtbl: *Vtbl,

    pub inline fn QueryInterface(self: *Self, riid: *const GUID, ppvObject: *?*c_void) i32 {
        return @ptrCast(*IUnknown, self).QueryInterface(riid, ppvObject);
    }

    pub inline fn AddRef(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).AddRef();
    }

    pub inline fn Release(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).Release();
    }
};

pub const IDWriteTextAnalysisSource = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("688e1a58-5094-47c8-adc8-fbcea60ae92b");
    pub const Vtbl = extern struct {
        // IUnknown
        iunknown: IUnknown.Vtbl,

        // IDWriteTextAnalysisSource
        GetTextAtPosition: fn (self: *Self, textPosition: u32, textString: *?[*]const u16, textLength: *u32) callconv(.Stdcall) i32,
        GetTextBeforePosition: fn (self: *Self, textPosition: u32, textString: *?[*]const u16, textLength: *u32) callconv(.Stdcall) i32,
        GetParagraphReadingDirection: fn (self: *Self) callconv(.Stdcall) DWRITE_READING_DIRECTION,
        GetLocaleName: fn (self: *Self, textPosition: u32, textLength: *u32, localeName: *?[*]const u16) callconv(.Stdcall) i32,
        GetNumberSubstitution: fn (self: *Self, textPosition: u32, textLength: *u32, numberSubstitution: *?*IDWriteNumberSubstitution) callconv(.Stdcall) i32,
    };

    lpVtbl: *Vtbl,

    pub inline fn QueryInterface(self: *Self, riid: *const GUID, ppvObject: *?*c_void) i32 {
        return @ptrCast(*IUnknown, self).QueryInterface(riid, ppvObject);
    }

    pub inline fn AddRef(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).AddRef();
    }

    pub inline fn Release(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).Release();
    }

    pub inline fn GetTextAtPosition(
        self: *Self,
        textPosition: u32,
        textString: *?[*]const u16,
        textLength: *u32,
    ) i32 {
        return self.lpVtbl.*.GetTextAtPosition(
            self,
            textPosition,
            textString,
            textLength,
        );
    }

    pub inline fn GetTextBeforePosition(
        self: *Self,
        textPosition: u32,
        textString: *?[*]const u16,
        textLength: *u32,
    ) i32 {
        return self.lpVtbl.*.GetTextBeforePosition(
            self,
            textPosition,
            textString,
            textLength,
        );
    }

    pub inline fn GetParagraphReadingDirection(self: *Self) DWRITE_READING_DIRECTION {
        return self.lpVtbl.*.GetParagraphReadingDirection(self);
    }

    pub inline fn GetLocaleName(
        self: *Self,
        textPosition: u32,
        textLength: *u32,
        localeName: *?[*]const u16,
    ) i32 {
        return self.lpVtbl.*.GetLocaleName(
            self,
            textPosition,
            textLength,
            localeName,
        );
    }

    pub inline fn GetNumberSubstitution(
        self: *Self,
        textPosition: u32,
        textLength: *u32,
        numberSubstitution: *?*IDWriteNumberSubstitution,
    ) i32 {
        return self.lpVtbl.*.GetNumberSubstitution(
            self,
            textPosition,
            textLength,
            numberSubstitution,
        );
    }
};

pub const IDWriteTextAnalysisSink = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("5810cd44-0ca0-4701-b3fa-bec5182ae4f6");
    pub const Vtbl = extern struct {
        // IUnknown
        iunknown: IUnknown.Vtbl,

        // IDWriteTextAnalysisSink
        SetScriptAnalysis: fn (self: *Self, textPosition: u32, textLength: u32, scriptAnalysis: *const DWRITE_SCRIPT_ANALYSIS) callconv(.Stdcall) i32,
        SetLineBreakpoints: fn (self: *Self, textPosition: u32, textLength: u32, lineBreakpoints: [*]const DWRITE_LINE_BREAKPOINT) callconv(.Stdcall) i32,
        SetBidiLevel: fn (self: *Self, textPosition: u32, textLength: u32, explicitLevel: u8, resolvedLevel: u8) callconv(.Stdcall) i32,
        SetNumberSubstitution: fn (self: *Self, textPosition: u32, textLength: u32, numberSubstitution: *IDWriteNumberSubstitution) callconv(.Stdcall) i32,
    };

    lpVtbl: *Vtbl,

    pub inline fn QueryInterface(self: *Self, riid: *const GUID, ppvObject: *?*c_void) i32 {
        return @ptrCast(*IUnknown, self).QueryInterface(riid, ppvObject);
    }

    pub inline fn AddRef(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).AddRef();
    }

    pub inline fn Release(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).Release();
    }

    pub inline fn SetScriptAnalysis(
        self: *Self,
        textPosition: u32,
        textLength: u32,
        scriptAnalysis: *const DWRITE_SCRIPT_ANALYSIS,
    ) i32 {
        return self.lpVtbl.*.SetScriptAnalysis(
            self,
            textPosition,
            textLength,
            scriptAnalysis,
        );
    }

    pub inline fn SetLineBreakpoints(
        self: *Self,
        textPosition: u32,
        textLength: u32,
        lineBreakpoints: []const DWRITE_LINE_BREAKPOINT,
    ) i32 {
        return self.lpVtbl.*.SetLineBreakpoints(
            self,
            textPosition,
            textLength,
            lineBreakpoints.ptr,
        );
    }

    pub inline fn SetBidiLevel(
        self: *Self,
        textPosition: u32,
        textLength: u32,
        explicitLevel: u8,
        resolvedLevel: u8,
    ) i32 {
        return self.lpVtbl.*.SetBidiLevel(
            self,
            textPosition,
            textLength,
            explicitLevel,
            resolvedLevel,
        );
    }

    pub inline fn SetNumberSubstitution(
        self: *Self,
        textPosition: u32,
        textLength: u32,
        numberSubstitution: *IDWriteNumberSubstitution,
    ) i32 {
        return self.lpVtbl.*.SetNumberSubstitution(
            self,
            textPosition,
            textLength,
            numberSubstitution,
        );
    }
};

pub const IDWriteTextAnalyzer = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("b7e6163e-7f46-43b4-84b3-e4e6249c365d");
    pub const Vtbl = extern struct {
        // IUnknown
        iunknown: IUnknown.Vtbl,

        // IDWriteTextAnalyzer
        AnalyzeScript: fn (self: *Self, analysisSource: *IDWriteTextAnalysisSource, textPosition: u32, textLength: u32, analysisSink: *IDWriteTextAnalysisSink) callconv(.Stdcall) i32,
        AnalyzeBidi: fn (self: *Self, analysisSource: *IDWriteTextAnalysisSource, textPosition: u32, textLength: u32, analysisSink: *IDWriteTextAnalysisSink) callconv(.Stdcall) i32,
        AnalyzeNumberSubstitution: fn (self: *Self, analysisSource: *IDWriteTextAnalysisSource, textPosition: u32, textLength: u32, analysisSink: *IDWriteTextAnalysisSink) callconv(.Stdcall) i32,
        AnalyzeLineBreakpoints: fn (self: *Self, analysisSource: *IDWriteTextAnalysisSource, textPosition: u32, textLength: u32, analysisSink: *IDWriteTextAnalysisSink) callconv(.Stdcall) i32,
        GetGlyphs: fn (self: *Self, textString: [*]const u16, textLength: u32, fontFace: *IDWriteFontFace, isSideways: i32, isRightToLeft: i32, scriptAnalysis: *const DWRITE_SCRIPT_ANALYSIS, localeName: ?[*:0]const u16, numberSubstitution: ?*IDWriteNumberSubstitution, features: ?[*]*const DWRITE_TYPOGRAPHIC_FEATURES, featureRangeLengths: ?[*]const u32, featureRanges: u32, maxGlyphCount: u32, clusterMap: [*]u16, textProps: [*]DWRITE_SHAPING_TEXT_PROPERTIES, glyphIndices: [*]u16, glyphProps: [*]DWRITE_SHAPING_GLYPH_PROPERTIES, actualGlyphCount: *u32) callconv(.Stdcall) i32,
        GetGlyphPlacements: fn (self: *Self, textString: [*]const u16, clusterMap: [*]const u16, textProps: [*]DWRITE_SHAPING_TEXT_PROPERTIES, textLength: u32, glyphIndices: [*]const u16, glyphProps: [*]const DWRITE_SHAPING_GLYPH_PROPERTIES, glyphCount: u32, fontFace: *IDWriteFontFace, fontEmSize: f32, isSideways: i32, isRightToLeft: i32, scriptAnalysis: *const DWRITE_SCRIPT_ANALYSIS, localeName: ?[*:0]const u16, features: ?[*]*const DWRITE_TYPOGRAPHIC_FEATURES, featureRangeLengths: ?[*]const u32, featureRanges: u32, glyphAdvances: [*]f32, glyphOffsets: [*]DWRITE_GLYPH_OFFSET) callconv(.Stdcall) i32,
        GetGdiCompatibleGlyphPlacements: fn (self: *Self, textString: [*]const u16, clusterMap: [*]const u16, textProps: [*]DWRITE_SHAPING_TEXT_PROPERTIES, textLength: u32, glyphIndices: [*]const u16, glyphProps: [*]const DWRITE_SHAPING_GLYPH_PROPERTIES, glyphCount: u32, fontFace: *IDWriteFontFace, fontEmSize: f32, pixelsPerDip: f32, transform: ?*const DWRITE_MATRIX, useGdiNatural: i32, isSideways: i32, isRightToLeft: i32, scriptAnalysis: *const DWRITE_SCRIPT_ANALYSIS, localeName: ?[*:0]const u16, features: ?[*]*const DWRITE_TYPOGRAPHIC_FEATURES, featureRangeLengths: ?[*]const u32, featureRanges: u32, glyphAdvances: [*]f32, glyphOffsets: [*]DWRITE_GLYPH_OFFSET) callconv(.Stdcall) i32,
    };

    lpVtbl: *Vtbl,

    pub inline fn QueryInterface(self: *Self, riid: *const GUID, ppvObject: *?*c_void) i32 {
        return @ptrCast(*IUnknown, self).QueryInterface(riid, ppvObject);
    }

    pub inline fn AddRef(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).AddRef();
    }

    pub inline fn Release(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).Release();
    }

    pub inline fn AnalyzeScript(
        self: *Self,
        analysisSource: *IDWriteTextAnalysisSource,
        textPosition: u32,
        textLength: u32,
        analysisSink: *IDWriteTextAnalysisSink,
    ) i32 {
        return self.lpVtbl.*.AnalyzeScript(
            self,
            analysisSource,
            textPosition,
            textLength,
            analysisSink,
        );
    }

    pub inline fn AnalyzeBidi(
        self: *Self,
        analysisSource: *IDWriteTextAnalysisSource,
        textPosition: u32,
        textLength: u32,
        analysisSink: *IDWriteTextAnalysisSink,
    ) i32 {
        return self.lpVtbl.*.AnalyzeBidi(
            self,
            analysisSource,
            textPosition,
            textLength,
            analysisSink,
        );
    }

    pub inline fn AnalyzeNumberSubstitution(
        self: *Self,
        analysisSource: *IDWriteTextAnalysisSource,
        textPosition: u32,
        textLength: u32,
        analysisSink: *IDWriteTextAnalysisSink,
    ) i32 {
        return self.lpVtbl.*.AnalyzeNumberSubstitution(
            self,
            analysisSource,
            textPosition,
            textLength,
            analysisSink,
        );
    }

    pub inline fn AnalyzeLineBreakpoints(
        self: *Self,
        analysisSource: *IDWriteTextAnalysisSource,
        textPosition: u32,
        textLength: u32,
        analysisSink: *IDWriteTextAnalysisSink,
    ) i32 {
        return self.lpVtbl.*.AnalyzeLineBreakpoints(
            self,
            analysisSource,
            textPosition,
            textLength,
            analysisSink,
        );
    }

    pub inline fn GetGlyphs(
        self: *Self,
        textString: []const u16,
        fontFace: *IDWriteFontFace,
        isSideways: bool,
        isRightToLeft: bool,
        scriptAnalysis: *const DWRITE_SCRIPT_ANALYSIS,
        localeName: ?[:0]const u16,
        numberSubstitution: ?*IDWriteNumberSubstitution,
        features: ?[]*const DWRITE_TYPOGRAPHIC_FEATURES,
        featureRangeLengths: ?[]const u32,
        clusterMap: []u16,
        textProps: []DWRITE_SHAPING_TEXT_PROPERTIES,
        glyphIndices: []u16,
        glyphProps: []DWRITE_SHAPING_GLYPH_PROPERTIES,
        actualGlyphCount: *u32,
    ) i32 {
        assert(if (features != null) featureRangeLengths != null else featureRangeLengths == null);
        assert(features == null or features.?.len == featureRangeLengths.?.len);
        assert(clusterMap.len == textString.len);
        assert(textProps.len == textProps.len);
        assert(glyphIndices.len == glyphProps.len);

        return self.lpVtbl.*.GetGlyphs(
            self,
            textString.ptr,
            @truncate(u32, textString.len),
            fontFace,
            @as(i32, @boolToInt(isSideways)),
            @as(i32, @boolToInt(isRightToLeft)),
            scriptAnalysis,
            if (localeName) |ln| ln.ptr else null,
            numberSubstitution,
            if (features) |f| f.ptr else null,
            if (featureRangeLengths) |f| f.ptr else null,
            @truncate(u32, if (features) |f| f.len else 0),
            @truncate(u32, glyphIndices.len),
            clusterMap.ptr,
            textProps.ptr,
            glyphIndices.ptr,
            glyphProps.ptr,
            actualGlyphCount,
        );
    }

    pub inline fn GetGlyphPlacements(
        self: *Self,
        textString: []const u16,
        clusterMap: []const u16,
        textProps: []DWRITE_SHAPING_TEXT_PROPERTIES,
        textLength: u32,
        glyphIndices: []const u16,
        glyphProps: []const DWRITE_SHAPING_GLYPH_PROPERTIES,
        glyphCount: u32,
        fontFace: *IDWriteFontFace,
        fontEmSize: f32,
        isSideways: bool,
        isRightToLeft: bool,
        scriptAnalysis: *const DWRITE_SCRIPT_ANALYSIS,
        localeName: ?[:0]const u16,
        features: ?[]*const DWRITE_TYPOGRAPHIC_FEATURES,
        featureRangeLengths: ?[]const u32,
        featureRanges: u32,
        glyphAdvances: []f32,
        glyphOffsets: []DWRITE_GLYPH_OFFSET,
    ) i32 {
        assert(textString.len == clusterMap.len);
        assert(textString.len == textProps.len);
        assert(glyphIndices.len == glyphProps.len);
        assert(if (features != null) featureRangeLengths != null else featureRangeLengths == null);
        assert(features == null or features.?.len == featureRangeLengths.?.len);
        assert(glyphAdvances.len == glyphOffsets.len);

        return self.lpVtbl.*.GetGlyphPlacements(
            self,
            textString.ptr,
            clusterMap.ptr,
            textProps.ptr,
            @truncate(u32, textString.len),
            glyphIndices.ptr,
            glyphProps.ptr,
            @truncate(u32, glyphIndices.len),
            fontFace,
            fontEmSize,
            @as(i32, @boolToInt(isSideways)),
            @as(i32, @boolToInt(isRightToLeft)),
            scriptAnalysis,
            if (localeName) |ln| ln.ptr else null,
            if (features) |f| f.ptr else null,
            if (featureRangeLengths) |f| f.ptr else null,
            @truncate(u32, if (features) |f| f.len else 0),
            glyphAdvances.ptr,
            glyphOffsets.ptr,
        );
    }

    pub inline fn GetGdiCompatibleGlyphPlacements(
        self: *Self,
        textString: []const u16,
        clusterMap: []const u16,
        textProps: []DWRITE_SHAPING_TEXT_PROPERTIES,
        glyphIndices: []const u16,
        glyphProps: []const DWRITE_SHAPING_GLYPH_PROPERTIES,
        fontFace: *IDWriteFontFace,
        fontEmSize: f32,
        pixelsPerDip: f32,
        transform: ?*const DWRITE_MATRIX,
        useGdiNatural: bool,
        isSideways: bool,
        isRightToLeft: bool,
        scriptAnalysis: *const DWRITE_SCRIPT_ANALYSIS,
        localeName: ?[:0]const u16,
        features: ?[]*const DWRITE_TYPOGRAPHIC_FEATURES,
        featureRangeLengths: ?[]const u32,
        glyphAdvances: []f32,
        glyphOffsets: []DWRITE_GLYPH_OFFSET,
    ) i32 {
        assert(textString.len == clusterMap.len);
        assert(textString.len == textProps.len);
        assert(glyphIndices.len == glyphProps.len);
        assert(if (features != null) featureRangeLengths != null else featureRangeLengths == null);
        assert(features == null or features.?.len == featureRangeLengths.?.len);
        assert(glyphAdvances.len == glyphOffsets.len);

        return self.lpVtbl.*.GetGdiCompatibleGlyphPlacements(
            self,
            textString.ptr,
            clusterMap.ptr,
            textProps.ptr,
            @truncate(u32, textProps.len),
            glyphIndices.ptr,
            glyphProps.ptr,
            @truncate(u32, glyphIndices.len),
            fontFace,
            fontEmSize,
            pixelsPerDip,
            transform,
            @as(i32, @boolToInt(useGdiNatural)),
            @as(i32, @boolToInt(isSideways)),
            @as(i32, @boolToInt(isRightToLeft)),
            scriptAnalysis,
            if (localeName) |ln| ln.ptr else null,
            if (features) |f| f.ptr else null,
            if (featureRangeLengths) |f| f.ptr else null,
            @truncate(u32, if (features) |f| f.len else 0),
            glyphAdvances.ptr,
            glyphOffsets.ptr,
        );
    }
};

pub const IDWriteInlineObject = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("8339FDE3-106F-47ab-8373-1C6295EB10B3");
    pub const Vtbl = extern struct {
        // IUnknown
        iunknown: IUnknown.Vtbl,

        // IDWriteInlineObject
        Draw: fn (self: *Self, clientDrawingContext: ?*c_void, renderer: *IDWriteTextRenderer, originX: f32, originY: f32, isSideways: i32, isRightToLeft: i32, clientDrawingEffect: ?*IUnknown) callconv(.Stdcall) i32,
        GetMetrics: fn (self: *Self, metrics: *DWRITE_INLINE_OBJECT_METRICS) callconv(.Stdcall) i32,
        GetOverhangMetrics: fn (self: *Self, overhangs: *DWRITE_OVERHANG_METRICS) callconv(.Stdcall) i32,
        GetBreakConditions: fn (self: *Self, breakConditionBefore: *DWRITE_BREAK_CONDITION, breakConditionAfter: *DWRITE_BREAK_CONDITION) callconv(.Stdcall) i32,
    };

    lpVtbl: *Vtbl,

    pub inline fn QueryInterface(self: *Self, riid: *const GUID, ppvObject: *?*c_void) i32 {
        return @ptrCast(*IUnknown, self).QueryInterface(riid, ppvObject);
    }

    pub inline fn AddRef(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).AddRef();
    }

    pub inline fn Release(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).Release();
    }

    pub inline fn Draw(
        self: *Self,
        clientDrawingContext: ?*c_void,
        renderer: *IDWriteTextRenderer,
        originX: f32,
        originY: f32,
        isSideways: bool,
        isRightToLeft: bool,
        clientDrawingEffect: ?*IUnknown,
    ) i32 {
        return self.lpVtbl.*.Draw(
            self,
            clientDrawingContext,
            renderer,
            originX,
            originY,
            @as(i32, @boolToInt(isSideways)),
            @as(i32, @boolToInt(isRightToLeft)),
            clientDrawingEffect,
        );
    }

    pub inline fn GetMetrics(self: *Self, metrics: *DWRITE_INLINE_OBJECT_METRICS) i32 {
        return self.lpVtbl.*.GetMetrics(self, metrics);
    }

    pub inline fn GetOverhangMetrics(self: *Self, overhangs: *DWRITE_OVERHANG_METRICS) i32 {
        return self.lpVtbl.*.GetOverhangMetrics(self, overhangs);
    }

    pub inline fn GetBreakConditions(
        self: *Self,
        breakConditionBefore: *DWRITE_BREAK_CONDITION,
        breakConditionAfter: *DWRITE_BREAK_CONDITION,
    ) i32 {
        return self.lpVtbl.*.GetBreakConditions(
            self,
            breakConditionBefore,
            breakConditionAfter,
        );
    }
};

pub const IDWritePixelSnapping = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("eaf3a2da-ecf4-4d24-b644-b34f6842024b");
    pub const Vtbl = extern struct {
        // IUnknown
        iunknown: IUnknown.Vtbl,

        // IDWritePixelSnapping
        IsPixelSnappingDisabled: fn (self: *Self, clientDrawingContext: ?*c_void, isDisabled: *i32) callconv(.Stdcall) i32,
        GetCurrentTransform: fn (self: *Self, clientDrawingContext: ?*c_void, transform: *DWRITE_MATRIX) callconv(.Stdcall) i32,
        GetPixelsPerDip: fn (self: *Self, clientDrawingContext: ?*c_void, pixelsPerDip: *f32) callconv(.Stdcall) i32,
    };

    lpVtbl: *Vtbl,

    pub inline fn QueryInterface(self: *Self, riid: *const GUID, ppvObject: *?*c_void) i32 {
        return @ptrCast(*IUnknown, self).QueryInterface(riid, ppvObject);
    }

    pub inline fn AddRef(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).AddRef();
    }

    pub inline fn Release(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).Release();
    }

    pub inline fn IsPixelSnappingDisabled(self: *Self, clientDrawingContext: ?*c_void, isDisabled: *bool) i32 {
        var is_disabled: i32 = 0;
        const ret = self.lpVtbl.*.IsPixelSnappingDisabled(self, clientDrawingContext, &is_disabled);
        isDisabled.* = is_disabled != 0;
        return ret;
    }

    pub inline fn GetCurrentTransform(
        self: *Self,
        clientDrawingContext: ?*c_void,
        transform: *DWRITE_MATRIX,
    ) i32 {
        return self.lpVtbl.*.GetCurrentTransform(
            self,
            clientDrawingContext,
            transform,
        );
    }

    pub inline fn GetPixelsPerDip(
        self: *Self,
        clientDrawingContext: ?*c_void,
        pixelsPerDip: *f32,
    ) i32 {
        return self.lpVtbl.*.GetPixelsPerDip(
            self,
            clientDrawingContext,
            pixelsPerDip,
        );
    }
};

pub const IDWriteTextRenderer = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("ef8a8135-5cc6-45fe-8825-c5a0724eb819");
    pub const Vtbl = extern struct {
        // IDWritePixelSnapping
        idwritepixelsnapping: IDWritePixelSnapping.Vtbl,

        // IDWriteTextRenderer
        DrawGlyphRun: fn (self: *Self, clientDrawingContext: ?*c_void, baselineOriginX: f32, baselineOriginY: f32, measuringMode: DWRITE_MEASURING_MODE, glyphRun: *const DWRITE_GLYPH_RUN, glyphRunDescription: *const DWRITE_GLYPH_RUN_DESCRIPTION, clientDrawingEffect: ?*IUnknown) callconv(.Stdcall) i32,
        DrawUnderline: fn (self: *Self, clientDrawingContext: ?*c_void, baselineOriginX: f32, baselineOriginY: f32, underline: *const DWRITE_UNDERLINE, clientDrawingEffect: ?*IUnknown) callconv(.Stdcall) i32,
        DrawStrikethrough: fn (self: *Self, clientDrawingContext: ?*c_void, baselineOriginX: f32, baselineOriginY: f32, strikethrough: *const DWRITE_STRIKETHROUGH, clientDrawingEffect: ?*IUnknown) callconv(.Stdcall) i32,
        DrawInlineObject: fn (self: *Self, clientDrawingContext: ?*c_void, originX: f32, originY: f32, inlineObject: *IDWriteInlineObject, isSideways: i32, isRightToLeft: i32, clientDrawingEffect: ?*IUnknown) callconv(.Stdcall) i32,
    };

    lpVtbl: *Vtbl,

    pub inline fn QueryInterface(self: *Self, riid: *const GUID, ppvObject: *?*c_void) i32 {
        return @ptrCast(*IUnknown, self).QueryInterface(riid, ppvObject);
    }

    pub inline fn AddRef(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).AddRef();
    }

    pub inline fn Release(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).Release();
    }

    pub inline fn IsPixelSnappingDisabled(
        self: *Self,
        clientDrawingContext: ?*c_void,
        isDisabled: *bool,
    ) i32 {
        return @ptrCast(*IDWritePixelSnapping, self).IsPixelSnappingDisabled(
            clientDrawingContext,
            isDisabled,
        );
    }

    pub inline fn GetCurrentTransform(
        self: *Self,
        clientDrawingContext: ?*c_void,
        transform: *DWRITE_MATRIX,
    ) i32 {
        return @ptrCast(*IDWritePixelSnapping, self).GetCurrentTransform(
            clientDrawingContext,
            transform,
        );
    }

    pub inline fn GetPixelsPerDip(
        self: *Self,
        clientDrawingContext: ?*c_void,
        pixelsPerDip: *f32,
    ) i32 {
        return @ptrCast(*IDWritePixelSnapping, self).GetPixelsPerDip(
            clientDrawingContext,
            pixelsPerDip,
        );
    }

    pub inline fn DrawGlyphRun(
        self: *Self,
        clientDrawingContext: ?*c_void,
        baselineOriginX: f32,
        baselineOriginY: f32,
        measuringMode: DWRITE_MEASURING_MODE,
        glyphRun: *const DWRITE_GLYPH_RUN,
        glyphRunDescription: *const DWRITE_GLYPH_RUN_DESCRIPTION,
        clientDrawingEffect: ?*IUnknown,
    ) i32 {
        return self.lpVtbl.*.DrawGlyphRun(
            self,
            clientDrawingContext,
            baselineOriginX,
            baselineOriginY,
            measuringMode,
            glyphRun,
            glyphRunDescription,
            clientDrawingEffect,
        );
    }

    pub inline fn DrawUnderline(
        self: *Self,
        clientDrawingContext: ?*c_void,
        baselineOriginX: f32,
        baselineOriginY: f32,
        underline: *const DWRITE_UNDERLINE,
        clientDrawingEffect: ?*IUnknown,
    ) i32 {
        return self.lpVtbl.*.DrawUnderline(
            self,
            clientDrawingContext,
            baselineOriginX,
            baselineOriginY,
            underline,
            clientDrawingEffect,
        );
    }

    pub inline fn DrawStrikethrough(
        self: *Self,
        clientDrawingContext: ?*c_void,
        baselineOriginX: f32,
        baselineOriginY: f32,
        strikethrough: *const DWRITE_STRIKETHROUGH,
        clientDrawingEffect: ?*IUnknown,
    ) i32 {
        return self.lpVtbl.*.DrawStrikethrough(
            self,
            clientDrawingContext,
            baselineOriginX,
            baselineOriginY,
            strikethrough,
            clientDrawingEffect,
        );
    }

    pub inline fn DrawInlineObject(
        self: *Self,
        clientDrawingContext: ?*c_void,
        originX: f32,
        originY: f32,
        inlineObject: *IDWriteInlineObject,
        isSideways: bool,
        isRightToLeft: bool,
        clientDrawingEffect: ?*IUnknown,
    ) i32 {
        return self.lpVtbl.*.DrawInlineObject(
            self,
            clientDrawingContext,
            originX,
            originY,
            inlineObject,
            @as(i32, @boolToInt(isSideways)),
            @as(i32, @boolToInt(isRightToLeft)),
            clientDrawingEffect,
        );
    }
};

pub const IDWriteTextLayout = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("53737037-6d14-410b-9bfe-0b182bb70961");
    pub const Vtbl = extern struct {
        // IDWriteTextFormat
        idwritetextformat: IDWriteTextFormat.Vtbl,

        // IDWriteTextLayout
        SetMaxWidth: fn (self: *Self, maxWidth: f32) callconv(.Stdcall) i32,
        SetMaxHeight: fn (self: *Self, maxHeight: f32) callconv(.Stdcall) i32,
        SetFontCollection: fn (self: *Self, fontCollection: *IDWriteFontCollection, textRange: DWRITE_TEXT_RANGE) callconv(.Stdcall) i32,
        SetFontFamilyName: fn (self: *Self, fontFamilyName: [*:0]const u16, textRange: DWRITE_TEXT_RANGE) callconv(.Stdcall) i32,
        SetFontWeight: fn (self: *Self, fontWeight: DWRITE_FONT_WEIGHT, textRange: DWRITE_TEXT_RANGE) callconv(.Stdcall) i32,
        SetFontStyle: fn (self: *Self, fontStyle: DWRITE_FONT_STYLE, textRange: DWRITE_TEXT_RANGE) callconv(.Stdcall) i32,
        SetFontStretch: fn (self: *Self, fontStretch: DWRITE_FONT_STRETCH, textRange: DWRITE_TEXT_RANGE) callconv(.Stdcall) i32,
        SetFontSize: fn (self: *Self, fontSize: f32, textRange: DWRITE_TEXT_RANGE) callconv(.Stdcall) i32,
        SetUnderline: fn (self: *Self, hasUnderline: i32, textRange: DWRITE_TEXT_RANGE) callconv(.Stdcall) i32,
        SetStrikethrough: fn (self: *Self, hasStrikethrough: i32, textRange: DWRITE_TEXT_RANGE) callconv(.Stdcall) i32,
        SetDrawingEffect: fn (self: *Self, drawingEffect: *IUnknown, textRange: DWRITE_TEXT_RANGE) callconv(.Stdcall) i32,
        SetInlineObject: fn (self: *Self, inlineObject: *IDWriteInlineObject, textRange: DWRITE_TEXT_RANGE) callconv(.Stdcall) i32,
        SetTypography: fn (self: *Self, typography: *IDWriteTypography, textRange: DWRITE_TEXT_RANGE) callconv(.Stdcall) i32,
        SetLocaleName: fn (self: *Self, localeName: [*:0]const u16, textRange: DWRITE_TEXT_RANGE) callconv(.Stdcall) i32,
        GetMaxWidth: fn (self: *Self) callconv(.Stdcall) f32,
        GetMaxHeight: fn (self: *Self) callconv(.Stdcall) f32,
        GetFontCollection: fn (self: *Self, currentPosition: u32, fontCollection: *?*IDWriteFontCollection, textRange: ?*DWRITE_TEXT_RANGE) callconv(.Stdcall) i32,
        GetFontFamilyNameLength: fn (self: *Self, currentPosition: u32, nameLength: *u32, textRange: ?*DWRITE_TEXT_RANGE) callconv(.Stdcall) i32,
        GetFontFamilyName: fn (self: *Self, currentPosition: u32, fontFamilyName: [*:0]u16, nameSize: u32, textRange: ?*DWRITE_TEXT_RANGE) callconv(.Stdcall) i32,
        GetFontWeight: fn (self: *Self, currentPosition: u32, fontWeight: *DWRITE_FONT_WEIGHT, textRange: ?*DWRITE_TEXT_RANGE) callconv(.Stdcall) i32,
        GetFontStyle: fn (self: *Self, currentPosition: u32, fontStyle: *DWRITE_FONT_STYLE, textRange: ?*DWRITE_TEXT_RANGE) callconv(.Stdcall) i32,
        GetFontStretch: fn (self: *Self, currentPosition: u32, fontStretch: *DWRITE_FONT_STRETCH, textRange: ?*DWRITE_TEXT_RANGE) callconv(.Stdcall) i32,
        GetFontSize: fn (self: *Self, currentPosition: u32, fontSize: *f32, textRange: ?*DWRITE_TEXT_RANGE) callconv(.Stdcall) i32,
        GetUnderline: fn (self: *Self, currentPosition: u32, hasUnderline: *i32, textRange: ?*DWRITE_TEXT_RANGE) callconv(.Stdcall) i32,
        GetStrikethrough: fn (self: *Self, currentPosition: u32, hasStrikethrough: *i32, textRange: ?*DWRITE_TEXT_RANGE) callconv(.Stdcall) i32,
        GetDrawingEffect: fn (self: *Self, currentPosition: u32, drawingEffect: *?*IUnknown, textRange: ?*DWRITE_TEXT_RANGE) callconv(.Stdcall) i32,
        GetInlineObject: fn (self: *Self, currentPosition: u32, inlineObject: *?*IDWriteInlineObject, textRange: ?*DWRITE_TEXT_RANGE) callconv(.Stdcall) i32,
        GetTypography: fn (self: *Self, currentPosition: u32, typography: *?*IDWriteTypography, textRange: ?*DWRITE_TEXT_RANGE) callconv(.Stdcall) i32,
        GetLocaleNameLength: fn (self: *Self, currentPosition: u32, nameLength: *u32, textRange: ?*DWRITE_TEXT_RANGE) callconv(.Stdcall) i32,
        GetLocaleName: fn (self: *Self, currentPosition: u32, localeName: [*:0]u16, nameSize: u32, textRange: ?*DWRITE_TEXT_RANGE) callconv(.Stdcall) i32,
        Draw: fn (self: *Self, clientDrawingContext: ?*c_void, renderer: *IDWriteTextRenderer, originX: f32, originY: f32) callconv(.Stdcall) i32,
        GetLineMetrics: fn (self: *Self, lineMetrics: [*]DWRITE_LINE_METRICS, maxLineCount: u32, actualLineCount: *u32) callconv(.Stdcall) i32,
        GetMetrics: fn (self: *Self, textMetrics: *DWRITE_TEXT_METRICS) callconv(.Stdcall) i32,
        GetOverhangMetrics: fn (self: *Self, overhangs: *DWRITE_OVERHANG_METRICS) callconv(.Stdcall) i32,
        GetClusterMetrics: fn (self: *Self, clusterMetrics: [*]DWRITE_CLUSTER_METRICS, maxClusterCount: u32, actualClusterCount: *u32) callconv(.Stdcall) i32,
        DetermineMinWidth: fn (self: *Self, minWidth: *f32) callconv(.Stdcall) i32,
        HitTestPoint: fn (self: *Self, pointX: f32, pointY: f32, isTrailingHit: *i32, isInside: *i32, hitTestMetrics: *DWRITE_HIT_TEST_METRICS) callconv(.Stdcall) i32,
        HitTestTextPosition: fn (self: *Self, textPosition: u32, isTrailingHit: i32, pointX: *f32, pointY: *f32, hitTestMetrics: *DWRITE_HIT_TEST_METRICS) callconv(.Stdcall) i32,
        HitTestTextRange: fn (self: *Self, textPosition: u32, textLength: u32, originX: f32, originY: f32, hitTestMetrics: ?[*]DWRITE_HIT_TEST_METRICS, maxHitTestMetricsCount: u32, actualHitTestMetricsCount: *u32) callconv(.Stdcall) i32,
    };

    lpVtbl: *Vtbl,

    pub inline fn QueryInterface(self: *Self, riid: *const GUID, ppvObject: *?*c_void) i32 {
        return @ptrCast(*IUnknown, self).QueryInterface(riid, ppvObject);
    }

    pub inline fn AddRef(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).AddRef();
    }

    pub inline fn Release(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).Release();
    }

    pub inline fn SetTextAlignment(self: *Self, textAlignment: DWRITE_TEXT_ALIGNMENT) i32 {
        return @ptrCast(*IDWriteTextFormat, self).SetTextAlignment(textAlignment);
    }

    pub inline fn SetParagraphAlignment(self: *Self, paragraphAlignment: DWRITE_PARAGRAPH_ALIGNMENT) i32 {
        return @ptrCast(*IDWriteTextFormat, self).SetParagraphAlignment(paragraphAlignment);
    }

    pub inline fn SetWordWrapping(self: *Self, wordWrapping: DWRITE_WORD_WRAPPING) i32 {
        return @ptrCast(*IDWriteTextFormat, self).SetWordWrapping(wordWrapping);
    }

    pub inline fn SetReadingDirection(self: *Self, readingDirection: DWRITE_READING_DIRECTION) i32 {
        return @ptrCast(*IDWriteTextFormat, self).SetReadingDirection(readingDirection);
    }

    pub inline fn SetFlowDirection(self: *Self, flowDirection: DWRITE_FLOW_DIRECTION) i32 {
        return @ptrCast(*IDWriteTextFormat, self).SetFlowDirection(flowDirection);
    }

    pub inline fn SetIncrementalTabStop(self: *Self, incrementalTabStop: f32) i32 {
        return @ptrCast(*IDWriteTextFormat, self).SetIncrementalTabStop(incrementalTabStop);
    }

    pub inline fn SetTrimming(
        self: *Self,
        trimmingOptions: *const DWRITE_TRIMMING,
        trimmingSign: ?*IDWriteInlineObject,
    ) i32 {
        return @ptrCast(*IDWriteTextFormat, self).SetTrimming(
            trimmingOptions,
            trimmingSign,
        );
    }

    pub inline fn SetLineSpacing(
        self: *Self,
        lineSpacingMethod: DWRITE_LINE_SPACING_METHOD,
        lineSpacing: f32,
        baseline: f32,
    ) i32 {
        return @ptrCast(*IDWriteTextFormat, self).SetLineSpacing(
            lineSpacingMethod,
            lineSpacing,
            baseline,
        );
    }

    pub inline fn GetTextAlignment(self: *Self) DWRITE_TEXT_ALIGNMENT {
        return @ptrCast(*IDWriteTextFormat, self).GetTextAlignment();
    }

    pub inline fn GetParagraphAlignment(self: *Self) DWRITE_PARAGRAPH_ALIGNMENT {
        return @ptrCast(*IDWriteTextFormat, self).GetParagraphAlignment();
    }

    pub inline fn GetWordWrapping(self: *Self) DWRITE_WORD_WRAPPING {
        return @ptrCast(*IDWriteTextFormat, self).GetWordWrapping();
    }

    pub inline fn GetReadingDirection(self: *Self) DWRITE_READING_DIRECTION {
        return @ptrCast(*IDWriteTextFormat, self).GetReadingDirection();
    }

    pub inline fn GetFlowDirection(self: *Self) DWRITE_FLOW_DIRECTION {
        return @ptrCast(*IDWriteTextFormat, self).GetFlowDirection();
    }

    pub inline fn GetIncrementalTabStop(self: *Self) f32 {
        return @ptrCast(*IDWriteTextFormat, self).GetIncrementalTabStop();
    }

    pub inline fn GetTrimming(
        self: *Self,
        trimmingOptions: *DWRITE_TRIMMING,
        trimmingSign: *?*IDWriteInlineObject,
    ) i32 {
        return @ptrCast(*IDWriteTextFormat, self).GetTrimming(
            trimmingOptions,
            trimmingSign,
        );
    }

    pub inline fn GetLineSpacing(
        self: *Self,
        lineSpacingMethod: *DWRITE_LINE_SPACING_METHOD,
        lineSpacing: *f32,
        baseline: *f32,
    ) i32 {
        return @ptrCast(*IDWriteTextFormat, self).GetLineSpacing(
            lineSpacingMethod,
            lineSpacing,
            baseline,
        );
    }

    pub inline fn GetFontCollection(self: *Self, fontCollection: *?*IDWriteFontCollection) i32 {
        return @ptrCast(*IDWriteTextFormat, self).GetFontCollection(fontCollection);
    }

    pub inline fn GetFontFamilyNameLength(self: *Self) u32 {
        return @ptrCast(*IDWriteTextFormat, self).GetFontFamilyNameLength();
    }

    pub inline fn GetFontFamilyName(
        self: *Self,
        fontFamilyName: [:0]u16,
    ) i32 {
        return @ptrCast(*IDWriteTextFormat, self).GetFontFamilyName(fontFamilyName);
    }

    pub inline fn GetFontWeight(self: *Self) DWRITE_FONT_WEIGHT {
        return @ptrCast(*IDWriteTextFormat, self).GetFontWeight();
    }

    pub inline fn GetFontStyle(self: *Self) DWRITE_FONT_STYLE {
        return @ptrCast(*IDWriteTextFormat, self).GetFontStyle();
    }

    pub inline fn GetFontStretch(self: *Self) DWRITE_FONT_STRETCH {
        return @ptrCast(*IDWriteTextFormat, self).GetFontStretch();
    }

    pub inline fn GetFontSize(self: *Self) f32 {
        return @ptrCast(*IDWriteTextFormat, self).GetFontSize();
    }

    pub inline fn GetLocaleNameLength(self: *Self) u32 {
        return @ptrCast(*IDWriteTextFormat, self).GetLocaleNameLength();
    }

    pub inline fn GetLocaleName(self: *Self, localeName: [:0]u16) i32 {
        return @ptrCast(*IDWriteTextFormat, self).GetLocaleName(localeName);
    }

    pub inline fn SetMaxWidth(self: *Self, maxWidth: f32) i32 {
        return self.lpVtbl.*.SetMaxWidth(self, maxWidth);
    }

    pub inline fn SetMaxHeight(self: *Self, maxHeight: f32) i32 {
        return self.lpVtbl.*.SetMaxHeight(self, maxHeight);
    }

    pub inline fn SetFontCollection(
        self: *Self,
        fontCollection: *IDWriteFontCollection,
        textRange: DWRITE_TEXT_RANGE,
    ) i32 {
        return self.lpVtbl.*.SetFontCollection(
            self,
            fontCollection,
            textRange,
        );
    }

    pub inline fn SetFontFamilyName(
        self: *Self,
        fontFamilyName: [:0]const u16,
        textRange: DWRITE_TEXT_RANGE,
    ) i32 {
        return self.lpVtbl.*.SetFontFamilyName(
            self,
            fontFamilyName.ptr,
            textRange,
        );
    }

    pub inline fn SetFontWeight(
        self: *Self,
        fontWeight: DWRITE_FONT_WEIGHT,
        textRange: DWRITE_TEXT_RANGE,
    ) i32 {
        return self.lpVtbl.*.SetFontWeight(
            self,
            fontWeight,
            textRange,
        );
    }

    pub inline fn SetFontStyle(
        self: *Self,
        fontStyle: DWRITE_FONT_STYLE,
        textRange: DWRITE_TEXT_RANGE,
    ) i32 {
        return self.lpVtbl.*.SetFontStyle(
            self,
            fontStyle,
            textRange,
        );
    }

    pub inline fn SetFontStretch(
        self: *Self,
        fontStretch: DWRITE_FONT_STRETCH,
        textRange: DWRITE_TEXT_RANGE,
    ) i32 {
        return self.lpVtbl.*.SetFontStretch(
            self,
            fontStretch,
            textRange,
        );
    }

    pub inline fn SetFontSize(
        self: *Self,
        fontSize: f32,
        textRange: DWRITE_TEXT_RANGE,
    ) i32 {
        return self.lpVtbl.*.SetFontSize(
            self,
            fontSize,
            textRange,
        );
    }

    pub inline fn SetUnderline(
        self: *Self,
        hasUnderline: bool,
        textRange: DWRITE_TEXT_RANGE,
    ) i32 {
        return self.lpVtbl.*.SetUnderline(
            self,
            @as(i32, @boolToInt(hasUnderline)),
            textRange,
        );
    }

    pub inline fn SetStrikethrough(
        self: *Self,
        hasStrikethrough: bool,
        textRange: DWRITE_TEXT_RANGE,
    ) i32 {
        return self.lpVtbl.*.SetStrikethrough(
            self,
            @as(i32, @boolToInt(hasStrikethrough)),
            textRange,
        );
    }

    pub inline fn SetDrawingEffect(
        self: *Self,
        drawingEffect: *IUnknown,
        textRange: DWRITE_TEXT_RANGE,
    ) i32 {
        return self.lpVtbl.*.SetDrawingEffect(
            self,
            drawingEffect,
            textRange,
        );
    }

    pub inline fn SetInlineObject(
        self: *Self,
        inlineObject: *IDWriteInlineObject,
        textRange: DWRITE_TEXT_RANGE,
    ) i32 {
        return self.lpVtbl.*.SetInlineObject(
            self,
            inlineObject,
            textRange,
        );
    }

    pub inline fn SetTypography(
        self: *Self,
        typography: *IDWriteTypography,
        textRange: DWRITE_TEXT_RANGE,
    ) i32 {
        return self.lpVtbl.*.SetTypography(
            self,
            typography,
            textRange,
        );
    }

    pub inline fn SetLocaleName(
        self: *Self,
        localeName: [:0]const u16,
        textRange: DWRITE_TEXT_RANGE,
    ) i32 {
        return self.lpVtbl.*.SetLocaleName(
            self,
            localeName.ptr,
            textRange,
        );
    }

    pub inline fn GetMaxWidth(self: *Self) f32 {
        return self.lpVtbl.*.GetMaxWidth(self);
    }

    pub inline fn GetMaxHeight(self: *Self) f32 {
        return self.lpVtbl.*.GetMaxHeight(self);
    }

    pub inline fn GetFontCollection1(
        self: *Self,
        currentPosition: u32,
        fontCollection: *?*IDWriteFontCollection,
        textRange: ?*DWRITE_TEXT_RANGE,
    ) i32 {
        return self.lpVtbl.*.GetFontCollection(
            self,
            currentPosition,
            fontCollection,
            textRange,
        );
    }

    pub inline fn GetFontFamilyNameLength1(
        self: *Self,
        currentPosition: u32,
        nameLength: *u32,
        textRange: ?*DWRITE_TEXT_RANGE,
    ) i32 {
        return self.lpVtbl.*.GetFontFamilyNameLength(
            self,
            currentPosition,
            nameLength,
            textRange,
        );
    }

    pub inline fn GetFontFamilyName1(
        self: *Self,
        currentPosition: u32,
        fontFamilyName: [:0]u16,
        textRange: ?*DWRITE_TEXT_RANGE,
    ) i32 {
        return self.lpVtbl.*.GetFontFamilyName(
            self,
            currentPosition,
            fontFamilyName.ptr,
            @truncate(u32, fontFamilyName.len),
            textRange,
        );
    }

    pub inline fn GetFontWeight1(
        self: *Self,
        currentPosition: u32,
        fontWeight: *DWRITE_FONT_WEIGHT,
        textRange: ?*DWRITE_TEXT_RANGE,
    ) i32 {
        return self.lpVtbl.*.GetFontWeight(
            self,
            currentPosition,
            fontWeight,
            textRange,
        );
    }

    pub inline fn GetFontStyle1(
        self: *Self,
        currentPosition: u32,
        fontStyle: *DWRITE_FONT_STYLE,
        textRange: ?*DWRITE_TEXT_RANGE,
    ) i32 {
        return self.lpVtbl.*.GetFontStyle(
            self,
            currentPosition,
            fontStyle,
            textRange,
        );
    }

    pub inline fn GetFontStretch1(
        self: *Self,
        currentPosition: u32,
        fontStretch: *DWRITE_FONT_STRETCH,
        textRange: ?*DWRITE_TEXT_RANGE,
    ) i32 {
        return self.lpVtbl.*.GetFontStretch(
            self,
            currentPosition,
            fontStretch,
            textRange,
        );
    }

    pub inline fn GetFontSize1(
        self: *Self,
        currentPosition: u32,
        fontSize: *f32,
        textRange: ?*DWRITE_TEXT_RANGE,
    ) i32 {
        return self.lpVtbl.*.GetFontSize(
            self,
            currentPosition,
            fontSize,
            textRange,
        );
    }

    pub inline fn GetUnderline(
        self: *Self,
        currentPosition: u32,
        hasUnderline: *bool,
        textRange: ?*DWRITE_TEXT_RANGE,
    ) i32 {
        var has_underline: i32 = 0;
        const ret = self.lpVtbl.*.GetUnderline(
            self,
            currentPosition,
            &has_underline,
            textRange,
        );
        hasUnderline.* = has_underline != 0;
        return ret;
    }

    pub inline fn GetStrikethrough(
        self: *Self,
        currentPosition: u32,
        hasStrikethrough: *bool,
        textRange: ?*DWRITE_TEXT_RANGE,
    ) i32 {
        var has_strikethrough: i32 = 0;
        const ret = self.lpVtbl.*.GetStrikethrough(
            self,
            currentPosition,
            &has_strikethrough,
            textRange,
        );
        hasStrikethrough.* = has_strikethrough != 0;
        return ret;
    }

    pub inline fn GetDrawingEffect(
        self: *Self,
        currentPosition: u32,
        drawingEffect: *?*IUnknown,
        textRange: ?*DWRITE_TEXT_RANGE,
    ) i32 {
        return self.lpVtbl.*.GetDrawingEffect(
            self,
            currentPosition,
            drawingEffect,
            textRange,
        );
    }

    pub inline fn GetInlineObject(
        self: *Self,
        currentPosition: u32,
        inlineObject: *?*IDWriteInlineObject,
        textRange: ?*DWRITE_TEXT_RANGE,
    ) i32 {
        return self.lpVtbl.*.GetInlineObject(
            self,
            currentPosition,
            inlineObject,
            textRange,
        );
    }

    pub inline fn GetTypography(
        self: *Self,
        currentPosition: u32,
        typography: *?*IDWriteTypography,
        textRange: ?*DWRITE_TEXT_RANGE,
    ) i32 {
        return self.lpVtbl.*.GetTypography(
            self,
            currentPosition,
            typography,
            textRange,
        );
    }

    pub inline fn GetLocaleNameLength1(
        self: *Self,
        currentPosition: u32,
        nameLength: *u32,
        textRange: ?*DWRITE_TEXT_RANGE,
    ) i32 {
        return self.lpVtbl.*.GetLocaleNameLength(
            self,
            currentPosition,
            nameLength,
            textRange,
        );
    }

    pub inline fn GetLocaleName1(
        self: *Self,
        currentPosition: u32,
        localeName: [:0]u16,
        textRange: ?*DWRITE_TEXT_RANGE,
    ) i32 {
        return self.lpVtbl.*.GetLocaleName(
            self,
            currentPosition,
            localeName.ptr,
            @truncate(u32, localeName.len),
            textRange,
        );
    }

    pub inline fn Draw(
        self: *Self,
        clientDrawingContext: ?*c_void,
        renderer: *IDWriteTextRenderer,
        originX: f32,
        originY: f32,
    ) i32 {
        return self.lpVtbl.*.Draw(
            self,
            clientDrawingContext,
            renderer,
            originX,
            originY,
        );
    }

    pub inline fn GetLineMetrics(
        self: *Self,
        lineMetrics: []DWRITE_LINE_METRICS,
        actualLineCount: *u32,
    ) i32 {
        return self.lpVtbl.*.GetLineMetrics(
            self,
            lineMetrics.ptr,
            @truncate(u32, lineMetrics.len),
            actualLineCount,
        );
    }

    pub inline fn GetMetrics(
        self: *Self,
        textMetrics: *DWRITE_TEXT_METRICS,
    ) i32 {
        return self.lpVtbl.*.GetMetrics(
            self,
            textMetrics,
        );
    }

    pub inline fn GetOverhangMetrics(
        self: *Self,
        overhangs: *DWRITE_OVERHANG_METRICS,
    ) i32 {
        return self.lpVtbl.*.GetOverhangMetrics(
            self,
            overhangs,
        );
    }

    pub inline fn GetClusterMetrics(
        self: *Self,
        clusterMetrics: []DWRITE_CLUSTER_METRICS,
        actualClusterCount: *u32,
    ) i32 {
        return self.lpVtbl.*.GetClusterMetrics(
            self,
            clusterMetrics.ptr,
            @truncate(u32, clusterMetrics.len),
            actualClusterCount,
        );
    }

    pub inline fn DetermineMinWidth(
        self: *Self,
        minWidth: *f32,
    ) i32 {
        return self.lpVtbl.*.DetermineMinWidth(
            self,
            minWidth,
        );
    }

    pub inline fn HitTestPoint(
        self: *Self,
        pointX: f32,
        pointY: f32,
        isTrailingHit: *bool,
        isInside: *bool,
        hitTestMetrics: *DWRITE_HIT_TEST_METRICS,
    ) i32 {
        var is_trailing_hit: i32 = 0;
        var is_inside: i32 = 0;
        const ret = self.lpVtbl.*.HitTestPoint(
            self,
            pointX,
            pointY,
            &is_trailing_hit,
            &is_inside,
            hitTestMetrics,
        );
        isTrailingHit.* = is_trailing_hit != 0;
        isInside.* = is_inside != 0;
        return ret;
    }

    pub inline fn HitTestTextPosition(
        self: *Self,
        textPosition: u32,
        isTrailingHit: bool,
        pointX: *f32,
        pointY: *f32,
        hitTestMetrics: *DWRITE_HIT_TEST_METRICS,
    ) i32 {
        return self.lpVtbl.*.HitTestTextPosition(
            self,
            textPosition,
            @as(i32, @boolToInt(isTrailingHit)),
            pointX,
            pointY,
            hitTestMetrics,
        );
    }

    pub inline fn HitTestTextRange(
        self: *Self,
        textPosition: u32,
        textLength: u32,
        originX: f32,
        originY: f32,
        hitTestMetrics: ?[]DWRITE_HIT_TEST_METRICS,
        actualHitTestMetricsCount: *u32,
    ) i32 {
        return self.lpVtbl.*.HitTestTextRange(
            self,
            textPosition,
            textLength,
            originX,
            originY,
            if (hitTestMetrics) |h| h.ptr else null,
            @truncate(u32, if (hitTestMetrics) |h| h.len else 0),
            actualHitTestMetricsCount,
        );
    }
};

pub const IDWriteBitmapRenderTarget = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("5e5a32a3-8dff-4773-9ff6-0696eab77267");
    pub const Vtbl = extern struct {
        // IUnknown
        iunknown: IUnknown.Vtbl,

        // IDWriteBitmapRenderTarget
        DrawGlyphRun: fn (self: *Self, baselineOriginX: f32, baselineOriginY: f32, measuringMode: DWRITE_MEASURING_MODE, glyphRun: *const DWRITE_GLYPH_RUN, renderingParams: *IDWriteRenderingParams, textColor: c_ulong, blackBoxRect: ?*RECT) callconv(.Stdcall) i32,
        GetMemoryDC: fn (self: *Self) callconv(.Stdcall) ?*c_void,
        GetPixelsPerDip: fn (self: *Self) callconv(.Stdcall) f32,
        SetPixelsPerDip: fn (self: *Self, pixelsPerDip: f32) callconv(.Stdcall) i32,
        GetCurrentTransform: fn (self: *Self, transform: *DWRITE_MATRIX) callconv(.Stdcall) i32,
        SetCurrentTransform: fn (self: *Self, transform: *const DWRITE_MATRIX) callconv(.Stdcall) i32,
        GetSize: fn (self: *Self, size: *SIZE) callconv(.Stdcall) i32,
        Resize: fn (self: *Self, width: u32, height: u32) callconv(.Stdcall) i32,
    };

    lpVtbl: *Vtbl,

    pub inline fn QueryInterface(self: *Self, riid: *const GUID, ppvObject: *?*c_void) i32 {
        return @ptrCast(*IUnknown, self).QueryInterface(riid, ppvObject);
    }

    pub inline fn AddRef(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).AddRef();
    }

    pub inline fn Release(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).Release();
    }

    pub inline fn DrawGlyphRun(
        self: *Self,
        baselineOriginX: f32,
        baselineOriginY: f32,
        measuringMode: DWRITE_MEASURING_MODE,
        glyphRun: *const DWRITE_GLYPH_RUN,
        renderingParams: *IDWriteRenderingParams,
        textColor: u32,
        blackBoxRect: ?*RECT,
    ) i32 {
        return self.lpVtbl.*.DrawGlyphRun(
            self,
            baselineOriginX,
            baselineOriginY,
            measuringMode,
            glyphRun,
            renderingParams,
            textColor,
            blackBoxRect,
        );
    }

    pub inline fn GetMemoryDC(self: *Self) ?*c_void {
        return self.lpVtbl.*.GetMemoryDC(self);
    }

    pub inline fn GetPixelsPerDip(self: *Self) f32 {
        return self.lpVtbl.*.GetPixelsPerDip(self);
    }

    pub inline fn SetPixelsPerDip(self: *Self, pixelsPerDip: f32) i32 {
        return self.lpVtbl.*.SetPixelsPerDip(self, pixelsPerDip);
    }

    pub inline fn GetCurrentTransform(self: *Self, transform: *DWRITE_MATRIX) i32 {
        return self.lpVtbl.*.GetCurrentTransform(self, transform);
    }

    pub inline fn SetCurrentTransform(self: *Self, transform: *const DWRITE_MATRIX) i32 {
        return self.lpVtbl.*.SetCurrentTransform(self, transform);
    }

    pub inline fn GetSize(self: *Self, size: *SIZE) i32 {
        return self.lpVtbl.*.GetSize(self, size);
    }

    pub inline fn Resize(self: *Self, width: u32, height: u32) i32 {
        return self.lpVtbl.*.Resize(self, width, height);
    }
};

pub const IDWriteGdiInterop = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("1edd9491-9853-4299-898f-6432983b6f3a");
    pub const Vtbl = extern struct {
        // IUnknown
        iunknown: IUnknown.Vtbl,

        // IDWriteGdiInterop
        CreateFontFromLOGFONT: fn (self: *Self, logFont: *const LOGFONTW, font: *?*IDWriteFont) callconv(.Stdcall) i32,
        ConvertFontToLOGFONT: fn (self: *Self, font: *IDWriteFont, logFont: *LOGFONTW, isSystemFont: *i32) callconv(.Stdcall) i32,
        ConvertFontFaceToLOGFONT: fn (self: *Self, font: *IDWriteFontFace, logFont: *LOGFONTW) callconv(.Stdcall) i32,
        CreateFontFaceFromHdc: fn (self: *Self, hdc: *c_void, fontFace: *?*IDWriteFontFace) callconv(.Stdcall) i32,
        CreateBitmapRenderTarget: fn (self: *Self, hdc: ?*c_void, width: u32, height: u32, renderTarget: *?*IDWriteBitmapRenderTarget) callconv(.Stdcall) i32,
    };

    lpVtbl: *Vtbl,

    pub inline fn QueryInterface(self: *Self, riid: *const GUID, ppvObject: *?*c_void) i32 {
        return @ptrCast(*IUnknown, self).QueryInterface(riid, ppvObject);
    }

    pub inline fn AddRef(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).AddRef();
    }

    pub inline fn Release(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).Release();
    }

    pub inline fn CreateFontFromLOGFONT(
        self: *Self,
        logFont: *const LOGFONTW,
        font: *?*IDWriteFont,
    ) i32 {
        return self.lpVtbl.*.CreateFontFromLOGFONT(
            self,
            logFont,
            font,
        );
    }

    pub inline fn ConvertFontToLOGFONT(
        self: *Self,
        font: *IDWriteFont,
        logFont: *LOGFONTW,
        isSystemFont: *bool,
    ) i32 {
        var is_system_font:i32 = 0;
        const ret = self.lpVtbl.*.ConvertFontToLOGFONT(
            self,
            font,
            logFont,
            &is_system_font,
        );
        isSystemFont.* = is_system_font != 0;
        return ret;
    }

    pub inline fn ConvertFontFaceToLOGFONT(
        self: *Self,
        font: *IDWriteFontFace,
        logFont: *LOGFONTW,
    ) i32 {
        return self.lpVtbl.*.ConvertFontFaceToLOGFONT(
            self,
            font,
            logFont,
        );
    }

    pub inline fn CreateFontFaceFromHdc(
        self: *Self,
        hdc: *c_void,
        fontFace: *?*IDWriteFontFace,
    ) i32 {
        return self.lpVtbl.*.CreateFontFaceFromHdc(
            self,
            hdc,
            fontFace,
        );
    }

    pub inline fn CreateBitmapRenderTarget(
        self: *Self,
        hdc: ?*c_void,
        width: u32,
        height: u32,
        renderTarget: *?*IDWriteBitmapRenderTarget,
    ) i32 {
        return self.lpVtbl.*.CreateBitmapRenderTarget(
            self,
            hdc,
            width,
            height,
            renderTarget,
        );
    }
};

pub const IDWriteGlyphRunAnalysis = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("7d97dbf7-e085-42d4-81e3-6a883bded118");
    pub const Vtbl = extern struct {
        // IUnknown
        iunknown: IUnknown.Vtbl,

        // IDWriteGlyphRunAnalysis
        GetAlphaTextureBounds: fn (self: *Self, textureType: DWRITE_TEXTURE_TYPE, textureBounds: *RECT) callconv(.Stdcall) i32,
        CreateAlphaTexture: fn (self: *Self, textureType: DWRITE_TEXTURE_TYPE, textureBounds: *const RECT, alphaValues: [*]u8, bufferSize: u32) callconv(.Stdcall) i32,
        GetAlphaBlendParams: fn (self: *Self, renderingParams: *IDWriteRenderingParams, blendGamma: *f32, blendEnhancedContrast: *f32, blendClearTypeLevel: *f32) callconv(.Stdcall) i32,
    };

    lpVtbl: *Vtbl,

    pub inline fn QueryInterface(self: *Self, riid: *const GUID, ppvObject: *?*c_void) i32 {
        return @ptrCast(*IUnknown, self).QueryInterface(riid, ppvObject);
    }

    pub inline fn AddRef(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).AddRef();
    }

    pub inline fn Release(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).Release();
    }

    pub inline fn GetAlphaTextureBounds(
        self: *Self,
        textureType: DWRITE_TEXTURE_TYPE,
        textureBounds: *RECT,
    ) i32 {
        return self.lpVtbl.*.GetAlphaTextureBounds(
            self,
            textureType,
            textureBounds,
        );
    }

    pub inline fn CreateAlphaTexture(
        self: *Self,
        textureType: DWRITE_TEXTURE_TYPE,
        textureBounds: *const RECT,
        alphaValues: []u8,
    ) i32 {
        return self.lpVtbl.*.CreateAlphaTexture(
            self,
            textureType,
            textureBounds,
            alphaValues.ptr,
            @truncate(u32, alphaValues.len),
        );
    }

    pub inline fn GetAlphaBlendParams(
        self: *Self,
        renderingParams: *IDWriteRenderingParams,
        blendGamma: *f32,
        blendEnhancedContrast: *f32,
        blendClearTypeLevel: *f32,
    ) i32 {
        return self.lpVtbl.*.GetAlphaBlendParams(
            self,
            renderingParams,
            blendGamma,
            blendEnhancedContrast,
            blendClearTypeLevel,
        );
    }
};

pub extern "dwrite" fn DWriteCreateFactory(factoryType: DWRITE_FACTORY_TYPE, iid: *const GUID, factory: *?*c_void) callconv(.Stdcall) i32;

pub inline fn DWRITE_MAKE_OPENTYPE_TAG(a: u8, b: u8, c: u8, d: u8) u32 {
    return (@as(u32, d) << 24) | (@as(u32, c) << 16) | (@as(u32, b) << 8) | a;
}

pub inline fn MAKE_DWRITE_HR(severity: u2, code: u16) i32 {
    return winerror.MAKE_HRESULT(severity, FACILITY_DWRITE, DWRITE_ERR_BASE + code);
}

pub inline fn MAKE_DWRITE_HR_ERR(code: u16) i32 {
    return MAKE_DWRITE_HR(winerror.SEVERITY_ERROR, code);
}
