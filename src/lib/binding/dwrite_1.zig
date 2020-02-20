pub usingnamespace @import("dwrite.zig");

const dcommon = @import("dcommon.zig");
const unknwn = @import("unknwn.zig");
const structs = @import("structs.zig");
const functions = @import("functions.zig");
const std = @import("std");

const DWRITE_MEASURING_MODE = dcommon.DWRITE_MEASURING_MODE;
const GUID = structs.GUID;
const GUID_STRING = functions.GUID_STRING;
const IUnknown = unknwn.IUnknown;
const assert = std.debug.assert;

/// The overall kind of family.
pub const DWRITE_PANOSE_FAMILY = extern enum {
    ANY = 0,
    NO_FIT = 1,
    TEXT_DISPLAY = 2,
    SCRIPT = 3,
    DECORATIVE = 4,
    SYMBOL = 5,

    pub const PICTORIAL = @This().SYMBOL;
};

/// Appearance of the serifs.
/// Present for families: 2-text
pub const DWRITE_PANOSE_SERIF_STYLE = extern enum {
    ANY = 0,
    NO_FIT = 1,
    COVE = 2,
    OBTUSE_COVE = 3,
    SQUARE_COVE = 4,
    OBTUSE_SQUARE_COVE = 5,
    SQUARE = 6,
    THIN = 7,
    OVAL = 8,
    EXAGGERATED = 9,
    TRIANGLE = 10,
    NORMAL_SANS = 11,
    OBTUSE_SANS = 12,
    PERPENDICULAR_SANS = 13,
    FLARED = 14,
    ROUNDED = 15,
    SCRIPT = 16,

    pub const PERP_SANS = @This().PERPENDICULAR_SANS;
    pub const BONE = @This().OVAL;
};

/// PANOSE font weights. These roughly correspond to the DWRITE_FONT_WEIGHT's
/// using (panose_weight - 2) * 100.
/// Present for families: 2-text, 3-script, 4-decorative, 5-symbol
pub const DWRITE_PANOSE_WEIGHT = extern enum {
    ANY = 0,
    NO_FIT = 1,
    VERY_LIGHT = 2,
    LIGHT = 3,
    THIN = 4,
    BOOK = 5,
    MEDIUM = 6,
    DEMI = 7,
    BOLD = 8,
    HEAVY = 9,
    BLACK = 10,
    EXTRA_BLACK = 11,

    pub const NORD = @This().EXTRA_BLACK;
};

/// Proportion of the glyph shape considering additional detail to standard
/// characters.
/// Present for families: 2-text
pub const DWRITE_PANOSE_PROPORTION = extern enum {
    ANY = 0,
    NO_FIT = 1,
    OLD_STYLE = 2,
    MODERN = 3,
    EVEN_WIDTH = 4,
    EXPANDED = 5,
    CONDENSED = 6,
    VERY_EXPANDED = 7,
    VERY_CONDENSED = 8,
    MONOSPACED = 9,
};

/// Ratio between thickest and thinnest point of the stroke for a letter such
/// as uppercase 'O'.
/// Present for families: 2-text, 3-script, 4-decorative
pub const DWRITE_PANOSE_CONTRAST = extern enum {
    ANY = 0,
    NO_FIT = 1,
    NONE = 2,
    VERY_LOW = 3,
    LOW = 4,
    MEDIUM_LOW = 5,
    MEDIUM = 6,
    MEDIUM_HIGH = 7,
    HIGH = 8,
    VERY_HIGH = 9,
    HORIZONTAL_LOW = 10,
    HORIZONTAL_MEDIUM = 11,
    HORIZONTAL_HIGH = 12,
    BROKEN = 13,
};

/// Relationship between thin and thick stems.
/// Present for families: 2-text
pub const DWRITE_PANOSE_STROKE_VARIATION = extern enum {
    ANY = 0,
    NO_FIT = 1,
    NO_VARIATION = 2,
    GRADUAL_DIAGONAL = 3,
    GRADUAL_TRANSITIONAL = 4,
    GRADUAL_VERTICAL = 5,
    GRADUAL_HORIZONTAL = 6,
    RAPID_VERTICAL = 7,
    RAPID_HORIZONTAL = 8,
    INSTANT_VERTICAL = 9,
    INSTANT_HORIZONTAL = 10,
};

/// Style of termination of stems and rounded letterforms.
/// Present for families: 2-text
pub const DWRITE_PANOSE_ARM_STYLE = extern enum {
    ANY = 0,
    NO_FIT = 1,
    STRAIGHT_ARMS_HORIZONTAL = 2,
    STRAIGHT_ARMS_WEDGE = 3,
    STRAIGHT_ARMS_VERTICAL = 4,
    STRAIGHT_ARMS_SINGLE_SERIF = 5,
    STRAIGHT_ARMS_DOUBLE_SERIF = 6,
    NONSTRAIGHT_ARMS_HORIZONTAL = 7,
    NONSTRAIGHT_ARMS_WEDGE = 8,
    NONSTRAIGHT_ARMS_VERTICAL = 9,
    NONSTRAIGHT_ARMS_SINGLE_SERIF = 10,
    NONSTRAIGHT_ARMS_DOUBLE_SERIF = 11,

    pub const STRAIGHT_ARMS_HORZ = @This().STRAIGHT_ARMS_HORIZONTAL;
    pub const STRAIGHT_ARMS_VERT = @This().STRAIGHT_ARMS_VERTICAL;
    pub const BENT_ARMS_HORZ = @This().NONSTRAIGHT_ARMS_HORIZONTAL;
    pub const BENT_ARMS_WEDGE = @This().NONSTRAIGHT_ARMS_WEDGE;
    pub const BENT_ARMS_VERT = @This().NONSTRAIGHT_ARMS_VERTICAL;
    pub const BENT_ARMS_SINGLE_SERIF = @This().NONSTRAIGHT_ARMS_SINGLE_SERIF;
    pub const BENT_ARMS_DOUBLE_SERIF = @This().NONSTRAIGHT_ARMS_DOUBLE_SERIF;
};

/// Roundness of letterform.
/// Present for families: 2-text
pub const DWRITE_PANOSE_LETTERFORM = extern enum {
    ANY = 0,
    NO_FIT = 1,
    NORMAL_CONTACT = 2,
    NORMAL_WEIGHTED = 3,
    NORMAL_BOXED = 4,
    NORMAL_FLATTENED = 5,
    NORMAL_ROUNDED = 6,
    NORMAL_OFF_CENTER = 7,
    NORMAL_SQUARE = 8,
    OBLIQUE_CONTACT = 9,
    OBLIQUE_WEIGHTED = 10,
    OBLIQUE_BOXED = 11,
    OBLIQUE_FLATTENED = 12,
    OBLIQUE_ROUNDED = 13,
    OBLIQUE_OFF_CENTER = 14,
    OBLIQUE_SQUARE = 15,
};

/// Placement of midline across uppercase characters and treatment of diagonal
/// stem apexes.
/// Present for families: 2-text
pub const DWRITE_PANOSE_MIDLINE = extern enum {
    ANY = 0,
    NO_FIT = 1,
    STANDARD_TRIMMED = 2,
    STANDARD_POINTED = 3,
    STANDARD_SERIFED = 4,
    HIGH_TRIMMED = 5,
    HIGH_POINTED = 6,
    HIGH_SERIFED = 7,
    CONSTANT_TRIMMED = 8,
    CONSTANT_POINTED = 9,
    CONSTANT_SERIFED = 10,
    LOW_TRIMMED = 11,
    LOW_POINTED = 12,
    LOW_SERIFED = 13,
};

/// Relative size of lowercase letters and treament of diacritic marks
/// and uppercase glyphs.
/// Present for families: 2-text
pub const DWRITE_PANOSE_XHEIGHT = extern enum {
    ANY = 0,
    NO_FIT = 1,
    CONSTANT_SMALL = 2,
    CONSTANT_STANDARD = 3,
    CONSTANT_LARGE = 4,
    DUCKING_SMALL = 5,
    DUCKING_STANDARD = 6,
    DUCKING_LARGE = 7,

    pub const CONSTANT_STD = @This().CONSTANT_STANDARD;
    pub const DUCKING_STD = @This().DUCKING_STANDARD;
};

/// Kind of tool used to create character forms.
/// Present for families: 3-script
pub const DWRITE_PANOSE_TOOL_KIND = extern enum {
    ANY = 0,
    NO_FIT = 1,
    FLAT_NIB = 2,
    PRESSURE_POINT = 3,
    ENGRAVED = 4,
    BALL = 5,
    BRUSH = 6,
    ROUGH = 7,
    FELT_PEN_BRUSH_TIP = 8,
    WILD_BRUSH = 9,
};

/// Monospace vs proportional.
/// Present for families: 3-script, 5-symbol
pub const DWRITE_PANOSE_SPACING = extern enum {
    ANY = 0,
    NO_FIT = 1,
    PROPORTIONAL_SPACED = 2,
    MONOSPACED = 3,
};

/// Ratio between width and height of the face.
/// Present for families: 3-script
pub const DWRITE_PANOSE_ASPECT_RATIO = extern enum {
    ANY = 0,
    NO_FIT = 1,
    VERY_CONDENSED = 2,
    CONDENSED = 3,
    NORMAL = 4,
    EXPANDED = 5,
    VERY_EXPANDED = 6,
};

/// Topology of letterforms.
/// Present for families: 3-script
pub const DWRITE_PANOSE_SCRIPT_TOPOLOGY = extern enum {
    ANY = 0,
    NO_FIT = 1,
    ROMAN_DISCONNECTED = 2,
    ROMAN_TRAILING = 3,
    ROMAN_CONNECTED = 4,
    CURSIVE_DISCONNECTED = 5,
    CURSIVE_TRAILING = 6,
    CURSIVE_CONNECTED = 7,
    BLACKLETTER_DISCONNECTED = 8,
    BLACKLETTER_TRAILING = 9,
    BLACKLETTER_CONNECTED = 10,
};

/// General look of the face, considering slope and tails.
/// Present for families: 3-script
pub const DWRITE_PANOSE_SCRIPT_FORM = extern enum {
    ANY = 0,
    NO_FIT = 1,
    UPRIGHT_NO_WRAPPING = 2,
    UPRIGHT_SOME_WRAPPING = 3,
    UPRIGHT_MORE_WRAPPING = 4,
    UPRIGHT_EXTREME_WRAPPING = 5,
    OBLIQUE_NO_WRAPPING = 6,
    OBLIQUE_SOME_WRAPPING = 7,
    OBLIQUE_MORE_WRAPPING = 8,
    OBLIQUE_EXTREME_WRAPPING = 9,
    EXAGGERATED_NO_WRAPPING = 10,
    EXAGGERATED_SOME_WRAPPING = 11,
    EXAGGERATED_MORE_WRAPPING = 12,
    EXAGGERATED_EXTREME_WRAPPING = 13,
};

/// How character ends and miniscule ascenders are treated.
/// Present for families: 3-script
pub const DWRITE_PANOSE_FINIALS = extern enum {
    ANY = 0,
    NO_FIT = 1,
    NONE_NO_LOOPS = 2,
    NONE_CLOSED_LOOPS = 3,
    NONE_OPEN_LOOPS = 4,
    SHARP_NO_LOOPS = 5,
    SHARP_CLOSED_LOOPS = 6,
    SHARP_OPEN_LOOPS = 7,
    TAPERED_NO_LOOPS = 8,
    TAPERED_CLOSED_LOOPS = 9,
    TAPERED_OPEN_LOOPS = 10,
    ROUND_NO_LOOPS = 11,
    ROUND_CLOSED_LOOPS = 12,
    ROUND_OPEN_LOOPS = 13,
};

/// Relative size of the lowercase letters.
/// Present for families: 3-script
pub const DWRITE_PANOSE_XASCENT = extern enum {
    ANY = 0,
    NO_FIT = 1,
    VERY_LOW = 2,
    LOW = 3,
    MEDIUM = 4,
    HIGH = 5,
    VERY_HIGH = 6,
};

/// General look of the face.
/// Present for families: 4-decorative
pub const DWRITE_PANOSE_DECORATIVE_CLASS = extern enum {
    ANY = 0,
    NO_FIT = 1,
    DERIVATIVE = 2,
    NONSTANDARD_TOPOLOGY = 3,
    NONSTANDARD_ELEMENTS = 4,
    NONSTANDARD_ASPECT = 5,
    INITIALS = 6,
    CARTOON = 7,
    PICTURE_STEMS = 8,
    ORNAMENTED = 9,
    TEXT_AND_BACKGROUND = 10,
    COLLAGE = 11,
    MONTAGE = 12,
};

/// Ratio between the width and height of the face.
/// Present for families: 4-decorative
pub const DWRITE_PANOSE_ASPECT = extern enum {
    ANY = 0,
    NO_FIT = 1,
    SUPER_CONDENSED = 2,
    VERY_CONDENSED = 3,
    CONDENSED = 4,
    NORMAL = 5,
    EXTENDED = 6,
    VERY_EXTENDED = 7,
    SUPER_EXTENDED = 8,
    MONOSPACED = 9,
};

/// Type of fill/line (treatment).
/// Present for families: 4-decorative
pub const DWRITE_PANOSE_FILL = extern enum {
    ANY = 0,
    NO_FIT = 1,
    STANDARD_SOLID_FILL = 2,
    NO_FILL = 3,
    PATTERNED_FILL = 4,
    COMPLEX_FILL = 5,
    SHAPED_FILL = 6,
    DRAWN_DISTRESSED = 7,
};

/// Outline handling.
/// Present for families: 4-decorative
pub const DWRITE_PANOSE_LINING = extern enum {
    ANY = 0,
    NO_FIT = 1,
    NONE = 2,
    INLINE = 3,
    OUTLINE = 4,
    ENGRAVED = 5,
    SHADOW = 6,
    RELIEF = 7,
    BACKDROP = 8,
};

/// Overall shape characteristics of the font.
/// Present for families: 4-decorative
pub const DWRITE_PANOSE_DECORATIVE_TOPOLOGY = extern enum {
    ANY = 0,
    NO_FIT = 1,
    STANDARD = 2,
    SQUARE = 3,
    MULTIPLE_SEGMENT = 4,
    ART_DECO = 5,
    UNEVEN_WEIGHTING = 6,
    DIVERSE_ARMS = 7,
    DIVERSE_FORMS = 8,
    LOMBARDIC_FORMS = 9,
    UPPER_CASE_IN_LOWER_CASE = 10,
    IMPLIED_TOPOLOGY = 11,
    HORSESHOE_E_AND_A = 12,
    CURSIVE = 13,
    BLACKLETTER = 14,
    SWASH_VARIANCE = 15,
};

/// Type of characters available in the font.
/// Present for families: 4-decorative
pub const DWRITE_PANOSE_CHARACTER_RANGES = extern enum {
    ANY = 0,
    NO_FIT = 1,
    EXTENDED_COLLECTION = 2,
    LITERALS = 3,
    NO_LOWER_CASE = 4,
    SMALL_CAPS = 5,
};

/// Kind of symbol set.
/// Present for families: 5-symbol
pub const DWRITE_PANOSE_SYMBOL_KIND = extern enum {
    ANY = 0,
    NO_FIT = 1,
    MONTAGES = 2,
    PICTURES = 3,
    SHAPES = 4,
    SCIENTIFIC = 5,
    MUSIC = 6,
    EXPERT = 7,
    PATTERNS = 8,
    BOARDERS = 9,
    ICONS = 10,
    LOGOS = 11,
    INDUSTRY_SPECIFIC = 12,
};

/// Aspect ratio of symbolic characters.
/// Present for families: 5-symbol
pub const DWRITE_PANOSE_SYMBOL_ASPECT_RATIO = extern enum {
    ANY = 0,
    NO_FIT = 1,
    NO_WIDTH = 2,
    EXCEPTIONALLY_WIDE = 3,
    SUPER_WIDE = 4,
    VERY_WIDE = 5,
    WIDE = 6,
    NORMAL = 7,
    NARROW = 8,
    VERY_NARROW = 9,
};

/// Specifies the policy used by GetRecommendedRenderingMode to determine whether to
/// render glyphs in outline mode. Glyphs are rendered in outline mode by default at
/// large sizes for performance reasons, but how large (i.e., the outline threshold)
/// depends on the quality of outline rendering. If the graphics system renders anti-
/// aliased outlines then a relatively low threshold is used, but if the graphics
/// system renders aliased outlines then a much higher threshold is used.
pub const DWRITE_OUTLINE_THRESHOLD = extern enum {
    ANTIALIASED,
    ALIASED,
};

/// Baseline for text alignment.
pub const DWRITE_BASELINE = extern enum {
    /// The Roman baseline for horizontal, Central baseline for vertical.
    DEFAULT,

    /// The baseline used by alphabetic scripts such as Latin, Greek, Cyrillic.
    ROMAN,

    /// Central baseline, generally used for vertical text.
    CENTRAL,

    /// Mathematical baseline which math characters are centered on.
    MATH,

    /// Hanging baseline, used in scripts like Devanagari.
    HANGING,

    /// Ideographic bottom baseline for CJK, left in vertical.
    IDEOGRAPHIC_BOTTOM,

    /// Ideographic top baseline for CJK, right in vertical.
    IDEOGRAPHIC_TOP,

    /// The bottom-most extent in horizontal, left-most in vertical.
    MINIMUM,

    /// The top-most extent in horizontal, right-most in vertical.
    MAXIMUM,
};

/// The desired kind of glyph orientation for the text. The client specifies
/// self to the analyzer as the desired orientation, but note self is the
/// client preference, and the constraints of the script will determine the
/// final presentation.
pub const DWRITE_VERTICAL_GLYPH_ORIENTATION = extern enum {
    /// In vertical layout, naturally horizontal scripts (Latin, Thai, Arabic,
    /// Devanagari) rotate 90 degrees clockwise, while ideographic scripts
    /// (Chinese, Japanese, Korean) remain upright, 0 degrees.
    DEFAULT,

    /// Ideographic scripts and scripts that permit stacking
    /// (Latin, Hebrew) are stacked in vertical reading layout.
    /// Connected scripts (Arabic, Syriac, 'Phags-pa, Ogham),
    /// which would otherwise look broken if glyphs were kept
    /// at 0 degrees, remain connected and rotate.
    STACKED,
};

/// How the glyph is oriented to the x-axis. This is an output from the text
/// analyzer, dependent on the desired orientation, bidi level, and character
/// properties.
pub const DWRITE_GLYPH_ORIENTATION_ANGLE = extern enum {
    /// Glyph orientation is upright.
    _0_DEGREES,

    /// Glyph orientation is rotated 90 clockwise.
    _90_DEGREES,

    /// Glyph orientation is upside-down.
    _180_DEGREES,

    /// Glyph orientation is rotated 270 clockwise.
    _270_DEGREES,
};

pub const DWRITE_FONT_METRICS1 = extern struct {
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

    /// Left edge of accumulated bounding blackbox of all glyphs in the font.
    glyphBoxLeft: i16,

    /// Top edge of accumulated bounding blackbox of all glyphs in the font.
    glyphBoxTop: i16,

    /// Right edge of accumulated bounding blackbox of all glyphs in the font.
    glyphBoxRight: i16,

    /// Bottom edge of accumulated bounding blackbox of all glyphs in the font.
    glyphBoxBottom: i16,

    /// Horizontal position of the subscript relative to the baseline origin.
    /// This is typically negative (to the left) in italic/oblique fonts, and
    /// zero in regular fonts.
    subscriptPositionX: i16,

    /// Vertical position of the subscript relative to the baseline.
    /// This is typically negative.
    subscriptPositionY: i16,

    /// Horizontal size of the subscript em box in design units, used to
    /// scale the simulated subscript relative to the full em box size.
    /// This the numerator of the scaling ratio where denominator is the
    /// design units per em. If self member is zero, the font does not specify
    /// a scale factor, and the client should use its own policy.
    subscriptSizeX: i16,

    /// Vertical size of the subscript em box in design units, used to
    /// scale the simulated subscript relative to the full em box size.
    /// This the numerator of the scaling ratio where denominator is the
    /// design units per em. If self member is zero, the font does not specify
    /// a scale factor, and the client should use its own policy.
    subscriptSizeY: i16,

    /// Horizontal position of the superscript relative to the baseline origin.
    /// This is typically positive (to the right) in italic/oblique fonts, and
    /// zero in regular fonts.
    superscriptPositionX: i16,

    /// Vertical position of the superscript relative to the baseline.
    /// This is typically positive.
    superscriptPositionY: i16,

    /// Horizontal size of the superscript em box in design units, used to
    /// scale the simulated superscript relative to the full em box size.
    /// This the numerator of the scaling ratio where denominator is the
    /// design units per em. If self member is zero, the font does not specify
    /// a scale factor, and the client should use its own policy.
    superscriptSizeX: i16,

    /// Vertical size of the superscript em box in design units, used to
    /// scale the simulated superscript relative to the full em box size.
    /// This the numerator of the scaling ratio where denominator is the
    /// design units per em. If self member is zero, the font does not specify
    /// a scale factor, and the client should use its own policy.
    superscriptSizeY: i16,

    /// Indicates that the ascent, descent, and lineGap are based on newer
    /// 'typographic' values in the font, rather than legacy values.
    hasTypographicMetrics: i32,
};

/// Metrics for caret placement in a font.
pub const DWRITE_CARET_METRICS = extern struct {
    /// Vertical rise of the caret. Rise / Run yields the caret angle.
    /// Rise = 1 for perfectly upright fonts (non-italic).
    slopeRise: i16,

    /// Horizontal run of th caret. Rise / Run yields the caret angle.
    /// Run = 0 for perfectly upright fonts (non-italic).
    slopeRun: i16,

    /// Horizontal offset of the caret along the baseline for good appearance.
    /// Offset = 0 for perfectly upright fonts (non-italic).
    offset: i16,
};

/// Typeface classification values, used for font selection and matching.
/// <remarks>
/// Note the family type (index 0) is the only stable entry in the 10-byte
/// array, as all the following entries can change dynamically depending on
/// context of the first field.
/// </remarks>
pub const DWRITE_PANOSE = extern union {
    values: [10]u8,
    familyKind: u8, // self is the only field that never changes meaning

    text: extern struct {
        familyKind: u8, // = 2 for text
        serifStyle: u8,
        weight: u8,
        proportion: u8,
        contrast: u8,
        strokeVariation: u8,
        armStyle: u8,
        letterform: u8,
        midline: u8,
        xHeight: u8,
    },

    script: extern struct {
        familyKind: u8, // = 3 for script
        toolKind: u8,
        weight: u8,
        spacing: u8,
        aspectRatio: u8,
        contrast: u8,
        scriptTopology: u8,
        scriptForm: u8,
        finials: u8,
        xAscent: u8,
    },

    decorative: extern struct {
        familyKind: u8, // = 4 for decorative
        decorativeClass: u8,
        weight: u8,
        aspect: u8,
        contrast: u8,
        serifVariant: u8,
        fill: u8, // treatment
        lining: u8,
        decorativeTopology: u8,
        characterRange: u8,
    },

    symbol: extern struct {
        familyKind: u8, // = 5 for symbol
        symbolKind: u8,
        weight: u8,
        spacing: u8,
        aspectRatioAndContrast: u8, // hard coded to no-fit (1)
        aspectRatio94: u8,
        aspectRatio119: u8,
        aspectRatio157: u8,
        aspectRatio163: u8,
        aspectRatio211: u8,
    },
};

/// Range of Unicode codepoints.
pub const DWRITE_UNICODE_RANGE = extern struct {
    /// The first codepoint in the Unicode range.
    first: u32,

    /// The last codepoint in the Unicode range.
    last: u32,
};

/// Script-specific properties for caret navigation and justification.
pub const DWRITE_SCRIPT_PROPERTIES = extern struct {
    const Self = @This();

    /// The standardized four character code for the given script.
    /// Note these only include the general Unicode scripts, not any
    /// additional ISO 15924 scripts for bibliographic distinction
    /// (for example, Fraktur Latin vs Gaelic Latin).
    /// http://unicode.org/iso15924/iso15924-codes.html
    isoScriptCode: u32,

    /// The standardized numeric code, ranging 0-999.
    /// http://unicode.org/iso15924/iso15924-codes.html
    isoScriptNumber: u32,

    /// Number of characters to estimate look-ahead for complex scripts.
    /// Latin and all Kana are generally 1. Indic scripts are up to 15,
    /// and most others are 8. Note that combining marks and variation
    /// selectors can produce clusters longer than these look-aheads,
    /// so self estimate is considered typical language use. Diacritics
    /// must be tested explicitly separately.
    clusterLookahead: u32,

    /// Appropriate character to elongate the given script for justification.
    ///
    /// Examples:
    ///   Arabic    - U+0640 Tatweel
    ///   Ogham     - U+1680 Ogham Space Mark
    justificationCharacter: u32,

    /// u32 restrictCaretToClusters      : 1;
    /// u32 usesWordDividers             : 1;
    /// u32 isDiscreteWriting            : 1;
    /// u32 isBlockWriting               : 1;
    /// u32 isDistributedWithinCluster   : 1;
    /// u32 isConnectedWriting           : 1;
    /// u32 isCursiveWriting             : 1;
    /// u32 reserved                     : 25;
    data: u32,

    /// Restrict the caret to whole clusters, like Thai and Devanagari. Scripts
    /// such as Arabic by default allow navigation between clusters. Others
    /// like Thai always navigate across whole clusters.
    pub fn restrictCaretToClusters(self: Self) bool {
        return self.data & 0x00000001 != 0;
    }

    /// Restrict the caret to whole clusters, like Thai and Devanagari. Scripts
    /// such as Arabic by default allow navigation between clusters. Others
    /// like Thai always navigate across whole clusters.
    pub fn setRestrictCaretToClusters(self: *Self, value: bool) void {
        self.data = (self.data & 0xFFFFFFFE) | @boolToInt(value);
    }

    /// The language uses dividers between words, such as spaces between Latin
    /// or the Ethiopic wordspace.
    ///
    /// Examples: Latin, Greek, Devanagari, Ethiopic
    /// Excludes: Chinese, Korean, Thai.
    pub fn usesWordDividers(self: Self) bool {
        return self.data & 0x00000002 != 0;
    }

    /// The language uses dividers between words, such as spaces between Latin
    /// or the Ethiopic wordspace.
    ///
    /// Examples: Latin, Greek, Devanagari, Ethiopic
    /// Excludes: Chinese, Korean, Thai.
    pub fn setUsesWordDividers(self: *Self, value: bool) void {
        self.data = (self.data & 0xFFFFFFFD) | (@as(u32, @boolToInt(value)) << 1);
    }

    /// The characters are discrete units from each other. This includes both
    /// block scripts and clustered scripts.
    ///
    /// Examples: Latin, Greek, Cyrillic, Hebrew, Chinese, Thai
    pub fn isDiscreteWriting(self: Self) bool {
        return self.data & 0x00000004 != 0;
    }

    /// The characters are discrete units from each other. This includes both
    /// block scripts and clustered scripts.
    ///
    /// Examples: Latin, Greek, Cyrillic, Hebrew, Chinese, Thai
    pub fn setIsDiscreteWriting(self: *Self, value: bool) void {
        self.data = (self.data & 0xFFFFFFFB) | (@as(u32, @boolToInt(value)) << 2);
    }

    /// The language is a block script, expanding between characters.
    ///
    /// Examples: Chinese, Japanese, Korean, Bopomofo.
    pub fn isBlockWriting(self: Self) bool {
        return self.data & 0x00000008 != 0;
    }

    /// The language is a block script, expanding between characters.
    ///
    /// Examples: Chinese, Japanese, Korean, Bopomofo.
    pub fn setIsBlockWriting(self: *Self, value: bool) void {
        self.data = (self.data & 0xFFFFFFF7) | (@as(u32, @boolToInt(value)) << 3);
    }

    /// The language is justified within glyph clusters, not just between glyph
    /// clusters. One such as the character sequence is Thai Lu and Sara Am
    /// (U+E026, U+E033) which form a single cluster but still expand between
    /// them.
    ///
    /// Examples: Thai, Lao, Khmer
    pub fn isDistributedWithinCluster(self: Self) bool {
        return self.data & 0x00000010 != 0;
    }

    /// The language is justified within glyph clusters, not just between glyph
    /// clusters. One such as the character sequence is Thai Lu and Sara Am
    /// (U+E026, U+E033) which form a single cluster but still expand between
    /// them.
    ///
    /// Examples: Thai, Lao, Khmer
    pub fn setIsDistributedWithinCluster(self: *Self, value: bool) void {
        self.data = (self.data & 0xFFFFFFEF) | (@as(u32, @boolToInt(value)) << 4);
    }

    /// The script's clusters are connected to each other (such as the
    /// baseline-linked Devanagari), and no separation should be added
    /// between characters. Note that cursively linked scripts like Arabic
    /// are also connected (but not all connected scripts are
    /// cursive).
    ///
    /// Examples: Devanagari, Arabic, Syriac, Bengali, Gurmukhi, Ogham
    /// Excludes: Latin, Chinese, Thaana
    pub fn isConnectedWriting(self: Self) bool {
        return self.data & 0x00000020 != 0;
    }

    /// The script's clusters are connected to each other (such as the
    /// baseline-linked Devanagari), and no separation should be added
    /// between characters. Note that cursively linked scripts like Arabic
    /// are also connected (but not all connected scripts are
    /// cursive).
    ///
    /// Examples: Devanagari, Arabic, Syriac, Bengali, Gurmukhi, Ogham
    /// Excludes: Latin, Chinese, Thaana
    pub fn setIsConnectedWriting(self: *Self, value: bool) void {
        self.data = (self.data & 0xFFFFFFDF) | (@as(u32, @boolToInt(value)) << 5);
    }

    /// The script is naturally cursive (Arabic/Syriac), meaning it uses other
    /// justification methods like kashida extension rather than intercharacter
    /// spacing. Note that although other scripts like Latin and Japanese may
    /// actually support handwritten cursive forms, they are not considered
    /// cursive scripts.
    ///
    /// Examples: Arabic, Syriac, Mongolian
    /// Excludes: Thaana, Devanagari, Latin, Chinese
    pub fn isCursiveWriting(self: Self) bool {
        return self.data & 0x00000040 != 0;
    }

    /// The script is naturally cursive (Arabic/Syriac), meaning it uses other
    /// justification methods like kashida extension rather than intercharacter
    /// spacing. Note that although other scripts like Latin and Japanese may
    /// actually support handwritten cursive forms, they are not considered
    /// cursive scripts.
    ///
    /// Examples: Arabic, Syriac, Mongolian
    /// Excludes: Thaana, Devanagari, Latin, Chinese
    pub fn setIsCursiveWriting(self: *Self, value: bool) void {
        self.data = (self.data & 0xFFFFFFBF) | (@as(u32, @boolToInt(value)) << 6);
    }
};

/// Justification information per glyph.
pub const DWRITE_JUSTIFICATION_OPPORTUNITY = extern struct {
    /// Minimum amount of expansion to apply to the side of the glyph.
    /// This may vary from 0 to infinity, typically being zero except
    /// for kashida.
    expansionMinimum: f32,

    /// Maximum amount of expansion to apply to the side of the glyph.
    /// This may vary from 0 to infinity, being zero for fixed-size characters
    /// and connected scripts, and non-zero for discrete scripts, and non-zero
    /// for cursive scripts at expansion points.
    expansionMaximum: f32,

    /// Maximum amount of compression to apply to the side of the glyph.
    /// This may vary from 0 up to the glyph cluster size.
    compressionMaximum: f32,

    /// Priority of self expansion point. Larger priorities are applied later,
    /// while priority zero does nothing.
    expansionPriority: u8,

    /// Priority of self compression point. Larger priorities are applied later,
    /// while priority zero does nothing.
    compressionPriority: u8,

    /// u32 allowResidualExpansion    : 1;
    /// u32 allowResidualCompression  : 1;
    /// u32 applyToLeadingEdge        : 1;
    /// u32 applyToTrailingEdge       : 1;
    /// u32 reserved                  : 12;
    data: u16,

    /// Allow self expansion point to use up any remaining slack space even
    /// after all expansion priorities have been used up.
    pub fn allowResidualExpansion(self: Self) i32 {
        return self.data & 0x0001 != 0;
    }

    /// Allow self expansion point to use up any remaining slack space even
    /// after all expansion priorities have been used up.
    pub fn setAllowResidualExpansion(self: *Self, value: i32) void {
        self.data = (self.data & 0xFFFE) | @boolToInt(value);
    }

    /// Allow self compression point to use up any remaining space even after
    /// all compression priorities have been used up.
    pub fn allowResidualCompression(self: Self) i32 {
        return self.data & 0x0002 != 0;
    }

    /// Allow self compression point to use up any remaining space even after
    /// all compression priorities have been used up.
    pub fn setAllowResidualCompression(self: *Self, value: i32) void {
        self.data = (self.data & 0xFFFD) | (@as(u16, @boolToInt(value)) << 1);
    }

    /// Apply expansion/compression to the leading edge of the glyph. This will
    /// be false for connected scripts, fixed-size characters, and diacritics.
    /// It is generally false within a multi-glyph cluster, unless the script
    /// allows expansion of glyphs within a cluster, like Thai.
    pub fn applyToLeadingEdge(self: Self) i32 {
        return self.data & 0x0004 != 0;
    }

    /// Apply expansion/compression to the leading edge of the glyph. This will
    /// be false for connected scripts, fixed-size characters, and diacritics.
    /// It is generally false within a multi-glyph cluster, unless the script
    /// allows expansion of glyphs within a cluster, like Thai.
    pub fn setApplyToLeadingEdge(self: *Self, value: i32) void {
        self.data = (self.data & 0xFFFB) | (@as(u16, @boolToInt(value)) << 2);
    }

    /// Apply expansion/compression to the trailing edge of the glyph. This will
    /// be false for connected scripts, fixed-size characters, and diacritics.
    /// It is generally false within a multi-glyph cluster, unless the script
    /// allows expansion of glyphs within a cluster, like Thai.
    pub fn applyToTrailingEdge(self: Self) i32 {
        return self.data & 0x0008 != 0;
    }

    /// Apply expansion/compression to the trailing edge of the glyph. This will
    /// be false for connected scripts, fixed-size characters, and diacritics.
    /// It is generally false within a multi-glyph cluster, unless the script
    /// allows expansion of glyphs within a cluster, like Thai.
    pub fn setApplyToTrailingEdge(self: *Self, value: i32) void {
        self.data = (self.data & 0xFFF7) | (@as(u16, @boolToInt(value)) << 3);
    }
};

pub const IDWriteFactory1 = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("30572f99-dac6-41db-a16e-0486307e606a");
    pub const Vtbl = extern struct {
        // IDWriteFactory
        parent: IDWriteFactory.Vtbl,

        // IDWriteFactory1
        GetEudcFontCollection: fn (self: *Self, fontCollection: *?*IDWriteFontCollection, checkForUpdates: i32) callconv(.Stdcall) i32,
        CreateCustomRenderingParams: fn (self: *Self, gamma: f32, enhancedContrast: f32, enhancedContrastGrayscale: f32, clearTypeLevel: f32, pixelGeometry: DWRITE_PIXEL_GEOMETRY, renderingMode: DWRITE_RENDERING_MODE, renderingParams: *?*IDWriteRenderingParams1) callconv(.Stdcall) i32,
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
        checkForUpdates: i32,
    ) i32 {
        return @ptrCast(*IDWriteFactory, self).GetSystemFontCollection(
            fontCollection,
            checkForUpdates,
        );
    }

    pub inline fn CreateCustomFontCollection(
        self: *Self,
        collectionLoader: *IDWriteFontCollectionLoader,
        collectionKey: *const c_void,
        collectionKeySize: u32,
        fontCollection: *?*IDWriteFontCollection,
    ) i32 {
        return @ptrCast(*IDWriteFactory, self).CreateCustomFontCollection(
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
        return @ptrCast(*IDWriteFactory, self).RegisterFontCollectionLoader(
            fontCollectionLoader,
        );
    }

    pub inline fn UnregisterFontCollectionLoader(
        self: *Self,
        fontCollectionLoader: *IDWriteFontCollectionLoader,
    ) i32 {
        return @ptrCast(*IDWriteFactory, self).UnregisterFontCollectionLoader(
            fontCollectionLoader,
        );
    }

    pub inline fn CreateFontFileReference(
        self: *Self,
        filePath: [:0]const u16,
        lastWriteTime: ?*const FILETIME,
        fontFile: *?*IDWriteFontFile,
    ) i32 {
        return @ptrCast(*IDWriteFactory, self).CreateFontFileReference(
            filePath,
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
        return @ptrCast(*IDWriteFactory, self).CreateCustomFontFileReference(
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
        return @ptrCast(*IDWriteFactory, self).CreateFontFace(
            fontFaceType,
            fontFiles,
            faceIndex,
            fontFaceSimulationFlags,
            fontFace,
        );
    }

    pub inline fn CreateRenderingParams(
        self: *Self,
        renderingParams: *?*IDWriteRenderingParams,
    ) i32 {
        return @ptrCast(*IDWriteFactory, self).CreateRenderingParams(
            renderingParams,
        );
    }

    pub inline fn CreateMonitorRenderingParams(
        self: *Self,
        monitor: *c_void,
        renderingParams: *?*IDWriteRenderingParams,
    ) i32 {
        return @ptrCast(*IDWriteFactory, self).CreateMonitorRenderingParams(
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
        return @ptrCast(*IDWriteFactory, self).CreateCustomRenderingParams(
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
        return @ptrCast(*IDWriteFactory, self).RegisterFontFileLoader(
            fontFileLoader,
        );
    }

    pub inline fn UnregisterFontFileLoader(
        self: *Self,
        fontFileLoader: *IDWriteFontFileLoader,
    ) i32 {
        return @ptrCast(*IDWriteFactory, self).UnregisterFontFileLoader(
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
        return @ptrCast(*IDWriteFactory, self).CreateTextFormat(
            fontFamilyName,
            fontCollection,
            fontWeight,
            fontStyle,
            fontStretch,
            fontSize,
            localeName,
            textFormat,
        );
    }

    pub inline fn CreateTypography(
        self: *Self,
        typography: *?*IDWriteTypography,
    ) i32 {
        return @ptrCast(*IDWriteFactory, self).CreateTypography(
            typography,
        );
    }

    pub inline fn GetGdiInterop(
        self: *Self,
        gdiInterop: *?*IDWriteGdiInterop,
    ) i32 {
        return @ptrCast(*IDWriteFactory, self).GetGdiInterop(
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
        return @ptrCast(*IDWriteFactory, self).CreateTextLayout(
            string,
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
        useGdiNatural: i32,
        textLayout: *?*IDWriteTextLayout,
    ) i32 {
        return @ptrCast(*IDWriteFactory, self).CreateGdiCompatibleTextLayout(
            string,
            textFormat,
            layoutWidth,
            layoutHeight,
            pixelsPerDip,
            transform,
            useGdiNatural,
            textLayout,
        );
    }

    pub inline fn CreateEllipsisTrimmingSign(
        self: *Self,
        textFormat: *IDWriteTextFormat,
        trimmingSign: *?*IDWriteInlineObject,
    ) i32 {
        return @ptrCast(*IDWriteFactory, self).CreateEllipsisTrimmingSign(
            textFormat,
            trimmingSign,
        );
    }

    pub inline fn CreateTextAnalyzer(
        self: *Self,
        textAnalyzer: *?*IDWriteTextAnalyzer,
    ) i32 {
        return @ptrCast(*IDWriteFactory, self).CreateTextAnalyzer(
            textAnalyzer,
        );
    }

    pub inline fn CreateNumberSubstitution(
        self: *Self,
        substitutionMethod: DWRITE_NUMBER_SUBSTITUTION_METHOD,
        localeName: [:0]const u16,
        ignoreUserOverride: i32,
        numberSubstitution: *?*IDWriteNumberSubstitution,
    ) i32 {
        return @ptrCast(*IDWriteFactory, self).CreateNumberSubstitution(
            substitutionMethod,
            localeName,
            ignoreUserOverride,
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
        return @ptrCast(*IDWriteFactory, self).CreateGlyphRunAnalysis(
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

    pub inline fn GetEudcFontCollection(
        self: *Self,
        fontCollection: *?*IDWriteFontCollection,
        checkForUpdates: bool,
    ) i32 {
        return self.lpVtbl.*.GetEudcFontCollection(
            self,
            fontCollection,
            @as(u32, @boolToInt(checkForUpdates)),
        );
    }

    pub inline fn CreateCustomRenderingParams1(
        self: *Self,
        gamma: f32,
        enhancedContrast: f32,
        enhancedContrastGrayscale: f32,
        clearTypeLevel: f32,
        pixelGeometry: DWRITE_PIXEL_GEOMETRY,
        renderingMode: DWRITE_RENDERING_MODE,
        renderingParams: *?*IDWriteRenderingParams1,
    ) i32 {
        return self.lpVtbl.*.CreateCustomRenderingParams(
            self,
            gamma,
            enhancedContrast,
            enhancedContrastGrayscale,
            clearTypeLevel,
            pixelGeometry,
            renderingMode,
            renderingParams,
        );
    }
};

pub const IDWriteFontFace1 = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("a71efdb4-9fdb-4838-ad90-cfc3be8c3daf");
    pub const Vtbl = extern struct {
        // IDWriteFontFace
        parent: IDWriteFontFace.Vtbl,

        // IDWriteFontFace1
        GetMetrics: fn (self: *Self, fontMetrics: *DWRITE_FONT_METRICS1) callconv(.Stdcall) void,
        GetGdiCompatibleMetrics: fn (self: *Self, emSize: f32, pixelsPerDip: f32, transform: ?*const DWRITE_MATRIX, fontMetrics: *DWRITE_FONT_METRICS1) callconv(.Stdcall) i32,
        GetCaretMetrics: fn (self: *Self, caretMetrics: *DWRITE_CARET_METRICS) callconv(.Stdcall) void,
        GetUnicodeRanges: fn (self: *Self, maxRangeCount: u32, unicodeRanges: ?[*]DWRITE_UNICODE_RANGE, actualRangeCount: *u32) callconv(.Stdcall) i32,
        IsMonospacedFont: fn (self: *Self) callconv(.Stdcall) i32,
        GetDesignGlyphAdvances: fn (self: *Self, glyphCount: u32, glyphIndices: [*]const u16, glyphAdvances: [*]i32, isSideways: i32) callconv(.Stdcall) i32,
        GetGdiCompatibleGlyphAdvances: fn (self: *Self, emSize: f32, pixelsPerDip: f32, transform: ?*const DWRITE_MATRIX, useGdiNatural: i32, isSideways: i32, glyphCount: u32, glyphIndices: [*]const u16, glyphAdvances: [*]i32) callconv(.Stdcall) i32,
        GetKerningPairAdjustments: fn (self: *Self, glyphCount: u32, glyphIndices: [*]const u16, glyphAdvanceAdjustments: [*]i32) callconv(.Stdcall) i32,
        HasKerningPairs: fn (self: *Self) callconv(.Stdcall) i32,
        GetRecommendedRenderingMode: fn (self: *Self, fontEmSize: f32, dpiX: f32, dpiY: f32, transform: ?*const DWRITE_MATRIX, isSideways: i32, outlineThreshold: DWRITE_OUTLINE_THRESHOLD, measuringMode: DWRITE_MEASURING_MODE, renderingMode: *DWRITE_RENDERING_MODE) callconv(.Stdcall) i32,
        GetVerticalGlyphVariants: fn (self: *Self, glyphCount: u32, nominalGlyphIndices: [*]const u16, verticalGlyphIndices: [*]u16) callconv(.Stdcall) i32,
        HasVerticalGlyphVariants: fn (self: *Self) callconv(.Stdcall) i32,
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
        return @ptrCast(*IDWriteFontFace, self).GetType();
    }

    pub inline fn GetFiles(
        self: *Self,
        numberOfFiles: *u32,
        fontFiles: ?[*]*IDWriteFontFile,
    ) i32 {
        return @ptrCast(*IDWriteFontFace, self).GetFiles(
            numberOfFiles,
            fontFiles,
        );
    }

    pub inline fn GetIndex(self: *Self) u32 {
        return @ptrCast(*IDWriteFontFace, self).GetIndex();
    }

    pub inline fn GetSimulations(self: *Self) DWRITE_FONT_SIMULATIONS {
        return @ptrCast(*IDWriteFontFace, self).GetSimulations();
    }

    pub inline fn IsSymbolFont(self: *Self) i32 {
        return @ptrCast(*IDWriteFontFace, self).IsSymbolFont();
    }

    pub inline fn GetMetrics(self: *Self, fontFaceMetrics: *DWRITE_FONT_METRICS) void {
        @ptrCast(*IDWriteFontFace, self).GetMetrics(fontFaceMetrics);
    }

    pub inline fn GetGlyphCount(self: *Self) u16 {
        return @ptrCast(*IDWriteFontFace, self).GetGlyphCount();
    }

    pub inline fn GetDesignGlyphMetrics(
        self: *Self,
        glyphIndices: []const u16,
        glyphMetrics: []DWRITE_GLYPH_METRICS,
        isSideways: bool,
    ) i32 {
        return @ptrCast(*IDWriteFontFace, self).GetDesignGlyphMetrics(
            glyphIndices,
            glyphMetrics,
            isSideways,
        );
    }

    pub inline fn GetGlyphIndices(
        self: *Self,
        codePoints: []const u32,
        glyphIndices: []u16,
    ) i32 {
        return @ptrCast(*IDWriteFontFace, self).GetGlyphIndices(
            codePoints,
            glyphIndices,
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
        return @ptrCast(*IDWriteFontFace, self).TryGetFontTable(
            openTypeTableTag,
            tableData,
            tableSize,
            tableContext,
            exists,
        );
    }

    pub inline fn ReleaseFontTable(self: *Self, tableContext: *c_void) void {
        @ptrCast(*IDWriteFontFace, self).ReleaseFontTable(tableContext);
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
        return @ptrCast(*IDWriteFontFace, self).GetGlyphRunOutline(
            emSize,
            glyphIndices,
            glyphAdvances,
            glyphOffsets,
            isSideways,
            isRightToLeft,
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
        return @ptrCast(*IDWriteFontFace, self).GetRecommendedRenderingMode(
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
        return @ptrCast(*IDWriteFontFace, self).GetGdiCompatibleMetrics(
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
        useGdiNatural: i32,
        glyphIndices: []const u16,
        glyphMetrics: []DWRITE_GLYPH_METRICS,
        isSideways: bool,
    ) i32 {
        return @ptrCast(*IDWriteFontFace, self).GetGdiCompatibleGlyphMetrics(
            emSize,
            pixelsPerDip,
            transform,
            useGdiNatural,
            glyphIndices,
            glyphMetrics,
            isSideways,
        );
    }

    pub inline fn GetMetrics1(self: *Self, fontMetrics: *DWRITE_FONT_METRICS1) void {
        return self.lpVtbl.*.GetMetrics(self, fontMetrics);
    }

    pub inline fn GetGdiCompatibleMetrics1(
        self: *Self,
        emSize: f32,
        pixelsPerDip: f32,
        transform: ?*const DWRITE_MATRIX,
        fontMetrics: *DWRITE_FONT_METRICS1,
    ) i32 {
        return self.lpVtbl.*.GetGdiCompatibleMetrics(
            self,
            emSize,
            pixelsPerDip,
            transform,
            fontMetrics,
        );
    }

    pub inline fn GetCaretMetrics(self: *Self, caretMetrics: *DWRITE_CARET_METRICS) void {
        return self.lpVtbl.*.GetCaretMetrics(self, caretMetrics);
    }

    pub inline fn GetUnicodeRanges(
        self: *Self,
        unicodeRanges: ?[]DWRITE_UNICODE_RANGE,
        actualRangeCount: *u32,
    ) i32 {
        return self.lpVtbl.*.GetUnicodeRanges(
            self,
            if (unicodeRanges) |payload| @truncate(u32, payload.len) else 0,
            if (unicodeRanges) |payload| payload.ptr else null,
            actualRangeCount,
        );
    }

    pub inline fn IsMonospacedFont(self: *Self) bool {
        return self.lpVtbl.*.IsMonospacedFont(self);
    }

    pub inline fn GetDesignGlyphAdvances(
        self: *Self,
        glyphIndices: []const u16,
        glyphAdvances: []i32,
        isSideways: bool,
    ) i32 {
        assert(glyphIndices.len == glyphAdvances.len);

        return self.lpVtbl.*.GetDesignGlyphAdvances(
            self,
            @truncate(u32, glyphAdvances.len),
            glyphIndices.ptr,
            glyphAdvances.ptr,
            @as(i32, @boolToInt(isSideways)),
        );
    }

    pub inline fn GetGdiCompatibleGlyphAdvances(
        self: *Self,
        emSize: f32,
        pixelsPerDip: f32,
        transform: ?*const DWRITE_MATRIX,
        useGdiNatural: bool,
        isSideways: bool,
        glyphCount: u32,
        glyphIndices: []const u16,
        glyphAdvances: []i32,
    ) i32 {
        assert(glyphIndices.len == glyphAdvances.len);

        return self.lpVtbl.*.GetGdiCompatibleGlyphAdvances(
            self,
            emSize,
            pixelsPerDip,
            transform,
            @as(i32, @boolToInt(useGdiNatural)),
            @as(i32, @boolToInt(isSideways)),
            @truncate(u32, glyphIndices.len),
            glyphIndices.ptr,
            glyphAdvances.ptr,
        );
    }

    pub inline fn GetKerningPairAdjustments(
        self: *Self,
        glyphIndices: []const u16,
        glyphAdvanceAdjustments: []i32,
    ) i32 {
        assert(glyphAdvanceAdjustments.len == glyphIndices.len);

        return self.lpVtbl.*.GetKerningPairAdjustments(
            self,
            @truncate(u32, glyphIndices.len),
            glyphIndices.ptr,
            glyphAdvanceAdjustments.ptr,
        );
    }

    pub inline fn HasKerningPairs(self: *Self) bool {
        return self.lpVtbl.*.HasKerningPairs(self);
    }

    pub inline fn GetRecommendedRenderingMode1(
        self: *Self,
        fontEmSize: f32,
        dpiX: f32,
        dpiY: f32,
        transform: ?*const DWRITE_MATRIX,
        isSideways: bool,
        outlineThreshold: DWRITE_OUTLINE_THRESHOLD,
        measuringMode: DWRITE_MEASURING_MODE,
        renderingMode: *DWRITE_RENDERING_MODE,
    ) i32 {
        return self.lpVtbl.*.GetRecommendedRenderingMode(
            self,
            fontEmSize,
            dpiX,
            dpiY,
            transform,
            @as(i32, @boolToInt(isSideways)),
            outlineThreshold,
            measuringMode,
            renderingMode,
        );
    }

    pub inline fn GetVerticalGlyphVariants(
        self: *Self,
        nominalGlyphIndices: []const u16,
        verticalGlyphIndices: []u16,
    ) i32 {
        assert(nominalGlyphIndices.len == verticalGlyphIndices.len);

        return self.lpVtbl.*.GetVerticalGlyphVariants(
            self,
            @truncate(u32, nominalGlyphIndices.len),
            nominalGlyphIndices.ptr,
            verticalGlyphIndices.ptr,
        );
    }

    pub inline fn HasVerticalGlyphVariants(self: *Self) bool {
        return self.lpVtbl.*.HasVerticalGlyphVariants(self) != 0;
    }
};

pub const IDWriteFont1 = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("acd16696-8c14-4f5d-877e-fe3fc1d32738");
    pub const Vtbl = extern struct {
        // IDWriteFont
        parent: IDWriteFont.Vtbl,

        // IDWriteFont1
        GetMetrics: fn (self: *Self, fontMetrics: *DWRITE_FONT_METRICS1) callconv(.Stdcall) void,
        GetPanose: fn (self: *Self, panose: *DWRITE_PANOSE) callconv(.Stdcall) void,
        GetUnicodeRanges: fn (self: *Self, maxRangeCount: u32, unicodeRanges: ?[*]DWRITE_UNICODE_RANGE, actualRangeCount: *u32) callconv(.Stdcall) i32,
        IsMonospacedFont: fn (self: *Self) callconv(.Stdcall) i32,
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
        return @ptrCast(*IDWriteFont, self).GetFontFamily(fontFamily);
    }

    pub inline fn GetWeight(self: *Self) DWRITE_FONT_WEIGHT {
        return @ptrCast(*IDWriteFont, self).GetWeight();
    }

    pub inline fn GetStretch(self: *Self) DWRITE_FONT_STRETCH {
        return @ptrCast(*IDWriteFont, self).GetStretch();
    }

    pub inline fn GetStyle(self: *Self) DWRITE_FONT_STYLE {
        return @ptrCast(*IDWriteFont, self).GetStyle();
    }

    pub inline fn IsSymbolFont(self: *Self) i32 {
        return @ptrCast(*IDWriteFont, self).IsSymbolFont();
    }

    pub inline fn GetFaceNames(self: *Self, names: *?*IDWriteLocalizedStrings) i32 {
        return @ptrCast(*IDWriteFont, self).GetFaceNames(names);
    }

    pub inline fn GetInformationalStrings(
        self: *Self,
        informationalStringID: DWRITE_INFORMATIONAL_STRING_ID,
        informationalStrings: *?*IDWriteLocalizedStrings,
        exists: *bool,
    ) i32 {
        return @ptrCast(*IDWriteFont, self).GetInformationalStrings(
            informationalStringID,
            informationalStrings,
            exists,
        );
    }

    pub inline fn GetSimulations(self: *Self) DWRITE_FONT_SIMULATIONS {
        return @ptrCast(*IDWriteFont, self).GetSimulations();
    }

    pub inline fn GetMetrics(self: *Self, fontMetrics: *DWRITE_FONT_METRICS) void {
        @ptrCast(*IDWriteFont, self).GetMetrics(fontMetrics);
    }

    pub inline fn HasCharacter(self: *Self, unicodeValue: u32, exists: *bool) i32 {
        return @ptrCast(*IDWriteFont, self).HasCharacter(unicodeValue, exists);
    }

    pub inline fn CreateFontFace(self: *Self, fontFace: *?*IDWriteFontFace) i32 {
        return @ptrCast(*IDWriteFont, self).CreateFontFace(fontFace);
    }

    pub inline fn GetMetrics1(self: *Self, fontMetrics: *DWRITE_FONT_METRICS1) void {
        return self.lpVtbl.*.GetMetrics(self, fontMetrics);
    }

    pub inline fn GetPanose(self: *Self, panose: *DWRITE_PANOSE) void {
        return self.lpVtbl.*.GetPanose(self, panose);
    }

    pub inline fn GetUnicodeRanges(
        self: *Self,
        unicodeRanges: ?[]DWRITE_UNICODE_RANGE,
        actualRangeCount: *u32,
    ) i32 {
        return self.lpVtbl.*.GetUnicodeRanges(
            self,
            if (unicodeRanges) |payload| unicodeRanges.len else 0,
            if (unicodeRanges) |payload| unicodeRanges.ptr else null,
            actualRangeCount,
        );
    }

    pub inline fn IsMonospacedFont(self: *Self) bool {
        return self.lpVtbl.*.IsMonospacedFont(self) != 0;
    }
};

pub const IDWriteRenderingParams1 = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("94413cf4-a6fc-4248-8b50-6674348fcad3");
    pub const Vtbl = extern struct {
        // IDWriteRenderingParams
        parent: IDWriteRenderingParams.Vtbl,

        // IDWriteRenderingParams1
        GetGrayscaleEnhancedContrast: fn (self: *Self) callconv(.Stdcall) f32,
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
        return @ptrCast(*IDWriteRenderingParams, self).GetGamma();
    }

    pub inline fn GetEnhancedContrast(self: *Self) f32 {
        return @ptrCast(*IDWriteRenderingParams, self).GetEnhancedContrast();
    }

    pub inline fn GetClearTypeLevel(self: *Self) f32 {
        return @ptrCast(*IDWriteRenderingParams, self).GetClearTypeLevel();
    }

    pub inline fn GetPixelGeometry(self: *Self) DWRITE_PIXEL_GEOMETRY {
        return @ptrCast(*IDWriteRenderingParams, self).GetPixelGeometry();
    }

    pub inline fn GetRenderingMode(self: *Self) DWRITE_RENDERING_MODE {
        return @ptrCast(*IDWriteRenderingParams, self).GetRenderingMode();
    }

    pub inline fn GetGrayscaleEnhancedContrast(self: *Self) f32 {
        return self.lpVtbl.*.GetGrayscaleEnhancedContrast(self);
    }
};

pub const IDWriteTextAnalyzer1 = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("80DAD800-E21F-4E83-96CE-BFCCE500DB7C");
    pub const Vtbl = extern struct {
        // IDWriteTextAnalyzer
        parent: IDWriteTextAnalyzer.Vtbl,

        // IDWriteTextAnalyzer1
        ApplyCharacterSpacing: fn (self: *Self, leadingSpacing: f32, trailingSpacing: f32, minimumAdvanceWidth: f32, textLength: u32, glyphCount: u32, clusterMap: [*]const u16, glyphAdvances: [*]const f32, glyphOffsets: [*]const DWRITE_GLYPH_OFFSET, glyphProperties: [*]const DWRITE_SHAPING_GLYPH_PROPERTIES, modifiedGlyphAdvances: [*]f32, modifiedGlyphOffsets: [*]DWRITE_GLYPH_OFFSET) callconv(.Stdcall) i32,
        GetBaseline: fn (self: *Self, fontFace: *IDWriteFontFace, baseline: DWRITE_BASELINE, isVertical: i32, isSimulationAllowed: i32, scriptAnalysis: DWRITE_SCRIPT_ANALYSIS, localeName: ?[*:0]const u16, baselineCoordinate: *i32, exists: *i32) callconv(.Stdcall) i32,
        AnalyzeVerticalGlyphOrientation: fn (self: *Self, analysisSource: *IDWriteTextAnalysisSource1, textPosition: u32, textLength: u32, analysisSink: *IDWriteTextAnalysisSink1) callconv(.Stdcall) i32,
        GetGlyphOrientationTransform: fn (self: *Self, glyphOrientationAngle: DWRITE_GLYPH_ORIENTATION_ANGLE, isSideways: i32, transform: *DWRITE_MATRIX) callconv(.Stdcall) i32,
        GetScriptProperties: fn (self: *Self, scriptAnalysis: DWRITE_SCRIPT_ANALYSIS, scriptProperties: *DWRITE_SCRIPT_PROPERTIES) callconv(.Stdcall) i32,
        GetTextComplexity: fn (self: *Self, textString: [*]const u16, textLength: u32, fontFace: *IDWriteFontFace, isTextSimple: *i32, textLengthRead: *u32, glyphIndices: ?[*]u16) callconv(.Stdcall) i32,
        GetJustificationOpportunities: fn (self: *Self, fontFace: ?*IDWriteFontFace, fontEmSize: f32, scriptAnalysis: DWRITE_SCRIPT_ANALYSIS, textLength: u32, glyphCount: u32, textString: [*]const u16, clusterMap: [*]const u16, glyphProperties: [*]const DWRITE_SHAPING_GLYPH_PROPERTIES, justificationOpportunities: [*]DWRITE_JUSTIFICATION_OPPORTUNITY) callconv(.Stdcall) i32,
        JustifyGlyphAdvances: fn (self: *Self, lineWidth: f32, glyphCount: u32, justificationOpportunities: [*]const DWRITE_JUSTIFICATION_OPPORTUNITY, glyphAdvances: [*]const f32, glyphOffsets: [*]const DWRITE_GLYPH_OFFSET, justifiedGlyphAdvances: [*]f32, justifiedGlyphOffsets: ?[*]DWRITE_GLYPH_OFFSET) callconv(.Stdcall) i32,
        GetJustifiedGlyphs: fn (self: *Self, fontFace: ?*IDWriteFontFace, fontEmSize: f32, scriptAnalysis: DWRITE_SCRIPT_ANALYSIS, textLength: u32, glyphCount: u32, maxGlyphCount: u32, clusterMap: ?[*]const u16, glyphIndices: [*]const u16, glyphAdvances: [*]const f32, justifiedGlyphAdvances: [*]const f32, justifiedGlyphOffsets: [*]const DWRITE_GLYPH_OFFSET, glyphProperties: [*]const DWRITE_SHAPING_GLYPH_PROPERTIES, actualGlyphCount: [*]u32, modifiedClusterMap: ?[*]u16, modifiedGlyphIndices: [*]u16, modifiedGlyphAdvances: [*]f32, modifiedGlyphOffsets: [*]DWRITE_GLYPH_OFFSET) callconv(.Stdcall) i32,
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
        return @ptrCast(*IDWriteTextAnalyzer, self).AnalyzeScript(
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
        return @ptrCast(*IDWriteTextAnalyzer, self).AnalyzeBidi(
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
        return @ptrCast(*IDWriteTextAnalyzer, self).AnalyzeNumberSubstitution(
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
        return @ptrCast(*IDWriteTextAnalyzer, self).AnalyzeLineBreakpoints(
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
        return @ptrCast(*IDWriteTextAnalyzer, self).GetGlyphs(
            textString,
            fontFace,
            isSideways,
            isRightToLeft,
            scriptAnalysis,
            localeName,
            numberSubstitution,
            features,
            featureRangeLengths,
            clusterMap,
            textProps,
            glyphIndices,
            glyphProps,
            actualGlyphCount,
        );
    }

    pub inline fn GetGlyphPlacements(
        self: *Self,
        textString: []const u16,
        clusterMap: []const u16,
        textProps: []DWRITE_SHAPING_TEXT_PROPERTIES,
        glyphIndices: []const u16,
        glyphProps: []const DWRITE_SHAPING_GLYPH_PROPERTIES,
        fontFace: *IDWriteFontFace,
        fontEmSize: f32,
        isSideways: bool,
        isRightToLeft: bool,
        scriptAnalysis: *const DWRITE_SCRIPT_ANALYSIS,
        localeName: ?[:0]const u16,
        features: ?[]*const DWRITE_TYPOGRAPHIC_FEATURES,
        featureRangeLengths: ?[]const u32,
        glyphAdvances: []f32,
        glyphOffsets: []DWRITE_GLYPH_OFFSET,
    ) i32 {
        return @ptrCast(*IDWriteTextAnalyzer, self).GetGlyphPlacements(
            textString,
            clusterMap,
            textProps,
            glyphIndices,
            glyphProps,
            fontFace,
            fontEmSize,
            isSideways,
            isRightToLeft,
            scriptAnalysis,
            localeName,
            features,
            featureRangeLengths,
            glyphAdvances,
            glyphOffsets,
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
        return @ptrCast(*IDWriteTextAnalyzer, self).GetGdiCompatibleGlyphPlacements(
            textString,
            clusterMap,
            textProps,
            glyphIndices,
            glyphProps,
            fontFace,
            fontEmSize,
            pixelsPerDip,
            transform,
            useGdiNatural,
            isSideways,
            isRightToLeft,
            scriptAnalysis,
            localeName,
            features,
            featureRangeLengths,
            glyphAdvances,
            glyphOffsets,
        );
    }

    pub inline fn ApplyCharacterSpacing(
        self: *Self,
        leadingSpacing: f32,
        trailingSpacing: f32,
        minimumAdvanceWidth: f32,
        clusterMap: []const u16,
        glyphAdvances: []const f32,
        glyphOffsets: []const DWRITE_GLYPH_OFFSET,
        glyphProperties: []const DWRITE_SHAPING_GLYPH_PROPERTIES,
        modifiedGlyphAdvances: []f32,
        modifiedGlyphOffsets: []DWRITE_GLYPH_OFFSET,
    ) i32 {
        assert(glyphAdvances.len == glyphOffsets.len);
        assert(glyphOffsets.len == glyphProperties.len);
        assert(glyphProperties.len == modifiedGlyphAdvances.len);
        assert(modifiedGlyphAdvances.len == modifiedGlyphOffsets.len);

        return self.lpVtbl.*.ApplyCharacterSpacing(
            self,
            leadingSpacing,
            trailingSpacing,
            minimumAdvanceWidth,
            @truncate(u32, clusterMap.len),
            @truncate(u32, glyphAdvances.len),
            clusterMap.ptr,
            glyphAdvances.ptr,
            glyphOffsets.ptr,
            glyphProperties.ptr,
            modifiedGlyphAdvances.ptr,
            modifiedGlyphOffsets.ptr,
        );
    }

    pub inline fn GetBaseline(
        self: *Self,
        fontFace: *IDWriteFontFace,
        baseline: DWRITE_BASELINE,
        isVertical: bool,
        isSimulationAllowed: bool,
        scriptAnalysis: DWRITE_SCRIPT_ANALYSIS,
        localeName: ?[:0]const u16,
        baselineCoordinate: *i32,
        exists: *bool,
    ) i32 {
        var exists_aux: i32 = 0;

        const ret = self.lpVtbl.*.GetBaseline(
            self,
            fontFace,
            baseline,
            @as(i32, @boolToInt(isVertical)),
            @as(i32, @boolToInt(isSimulationAllowed)),
            scriptAnalysis,
            localeName.ptr,
            baselineCoordinate,
            &exists_aux,
        );

        exists.* = exists_aux != 0;
        return ret;
    }

    pub inline fn AnalyzeVerticalGlyphOrientation(
        self: *Self,
        analysisSource: *IDWriteTextAnalysisSource1,
        textPosition: u32,
        textLength: u32,
        analysisSink: *IDWriteTextAnalysisSink1,
    ) i32 {
        return self.lpVtbl.*.AnalyzeVerticalGlyphOrientation(
            self,
            analysisSource,
            textPosition,
            textLength,
            analysisSink,
        );
    }

    pub inline fn GetGlyphOrientationTransform(
        self: *Self,
        glyphOrientationAngle: DWRITE_GLYPH_ORIENTATION_ANGLE,
        isSideways: bool,
        transform: *DWRITE_MATRIX,
    ) i32 {
        return self.lpVtbl.*.GetGlyphOrientationTransform(
            self,
            glyphOrientationAngle,
            @as(i32, @boolToInt(isSideways)),
            transform,
        );
    }

    pub inline fn GetScriptProperties(
        self: *Self,
        scriptAnalysis: DWRITE_SCRIPT_ANALYSIS,
        scriptProperties: *DWRITE_SCRIPT_PROPERTIES,
    ) i32 {
        return self.lpVtbl.*.GetScriptProperties(
            self,
            scriptAnalysis,
            scriptProperties,
        );
    }

    pub inline fn GetTextComplexity(
        self: *Self,
        textString: []const u16,
        fontFace: *IDWriteFontFace,
        isTextSimple: *bool,
        textLengthRead: *u32,
        glyphIndices: ?[]u16,
    ) i32 {
        assert(if (glyphIndices) |payload| payload.len == textString.len else true);
        var isTextSimple_aux: i32 = 0;

        const ret = self.lpVtbl.*.GetTextComplexity(
            self,
            textString.ptr,
            @truncate(u32, textString.len),
            fontFace,
            &isTextSimple_aux,
            textLengthRead,
            if (glyphIndices) |payload| payload.ptr else null,
        );

        isTextSimple.* = isTextSimple_aux;
        return ret;
    }

    pub inline fn GetJustificationOpportunities(
        self: *Self,
        fontFace: ?*IDWriteFontFace,
        fontEmSize: f32,
        scriptAnalysis: DWRITE_SCRIPT_ANALYSIS,
        textString: []const u16,
        clusterMap: []const u16,
        glyphProperties: []const DWRITE_SHAPING_GLYPH_PROPERTIES,
        justificationOpportunities: []DWRITE_JUSTIFICATION_OPPORTUNITY,
    ) i32 {
        assert(textString.len == clusterMap.len);
        assert(glyphProperties.len == justificationOpportunities.len);

        return self.lpVtbl.*.GetJustificationOpportunities(
            self,
            fontFace,
            fontEmSize,
            scriptAnalysis,
            @truncate(u32, textString.len),
            @truncate(u32, glyphProperties.len),
            textString.ptr,
            clusterMap.ptr,
            glyphProperties.ptr,
            justificationOpportunities.ptr,
        );
    }

    pub inline fn JustifyGlyphAdvances(
        self: *Self,
        lineWidth: f32,
        justificationOpportunities: []const DWRITE_JUSTIFICATION_OPPORTUNITY,
        glyphAdvances: []const f32,
        glyphOffsets: []const DWRITE_GLYPH_OFFSET,
        justifiedGlyphAdvances: []f32,
        justifiedGlyphOffsets: ?[]DWRITE_GLYPH_OFFSET,
    ) i32 {
        assert(justificationOpportunities.len == glyphAdvances.len);
        assert(glyphAdvances.len == glyphOffsets.len);
        assert(glyphOffsets.len == justifiedGlyphAdvances.len);
        assert(if (justifiedGlyphOffsets) |payload| payload.len == justifiedGlyphAdvances.len else true);

        return self.lpVtbl.*.JustifyGlyphAdvances(
            self,
            lineWidth,
            @truncate(u32, justificationOpportunities.len),
            justificationOpportunities.ptr,
            glyphAdvances.ptr,
            glyphOffsets.ptr,
            justifiedGlyphAdvances.ptr,
            if (justifiedGlyphOffsets) |payload| payload.ptr else null,
        );
    }

    pub inline fn GetJustifiedGlyphs(
        self: *Self,
        fontFace: ?*IDWriteFontFace,
        fontEmSize: f32,
        scriptAnalysis: DWRITE_SCRIPT_ANALYSIS,
        clusterMap: ?[]const u16,
        glyphIndices: []const u16,
        glyphAdvances: []const f32,
        justifiedGlyphAdvances: []const f32,
        justifiedGlyphOffsets: []const DWRITE_GLYPH_OFFSET,
        glyphProperties: []const DWRITE_SHAPING_GLYPH_PROPERTIES,
        actualGlyphCount: *u32,
        modifiedClusterMap: ?[]u16,
        modifiedGlyphIndices: []u16,
        modifiedGlyphAdvances: []f32,
        modifiedGlyphOffsets: []DWRITE_GLYPH_OFFSET,
    ) i32 {
        assert(glyphIndices.len == glyphAdvances.len);
        assert(glyphAdvances.len == justifiedGlyphAdvances.len);
        assert(justifiedGlyphAdvances.len == justifiedGlyphOffsets.len);
        assert(justifiedGlyphOffsets.len == glyphProperties.len);
        assert(modifiedGlyphIndices.len == modifiedGlyphAdvances.len);
        assert(modifiedGlyphAdvances.len == modifiedGlyphOffsets.len);

        const text_length = if (clusterMap) |payload|
            @truncate(u32, payload.len)
        else if (modifiedClusterMap) |payload|
            @truncate(u32, payload.len)
        else
            0;

        assert(if (clusterMap) |payload| @truncate(u32, payload.len) == text_length else true);
        assert(if (modifiedClusterMap) |payload| @truncate(u32, payload.len) == text_length else true);

        return self.lpVtbl.*.GetJustifiedGlyphs(
            self,
            fontFace,
            fontEmSize,
            scriptAnalysis,
            text_length,
            @truncate(u32, glyphIndices.len),
            @truncate(u32, modifiedGlyphIndices.len),
            if (clusterMap) |payload| payload.ptr else null,
            glyphIndices.ptr,
            glyphAdvances.ptr,
            justifiedGlyphAdvances.ptr,
            justifiedGlyphOffsets.ptr,
            glyphProperties.ptr,
            actualGlyphCount,
            if (modifiedClusterMap) |payload| payload.ptr else null,
            modifiedGlyphIndices.ptr,
            modifiedGlyphAdvances.ptr,
            modifiedGlyphOffsets.ptr,
        );
    }
};

pub const IDWriteTextAnalysisSource1 = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("639CFAD8-0FB4-4B21-A58A-067920120009");
    pub const Vtbl = extern struct {
        // IDWriteTextAnalysisSource
        parent: IDWriteTextAnalysisSource.Vtbl,

        // IDWriteTextAnalysisSource1
        GetVerticalGlyphOrientation: fn (self: *Self, textPosition: u32, textLength: *u32, glyphOrientation: *DWRITE_VERTICAL_GLYPH_ORIENTATION, bidiLevel: *u8) callconv(.Stdcall) i32,
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
        return @ptrCast(*IDWriteTextAnalysisSource, self).GetTextAtPosition(
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
        return @ptrCast(*IDWriteTextAnalysisSource, self).GetTextBeforePosition(
            textPosition,
            textString,
            textLength,
        );
    }

    pub inline fn GetParagraphReadingDirection(self: *Self) DWRITE_READING_DIRECTION {
        return @ptrCast(*IDWriteTextAnalysisSource, self).GetParagraphReadingDirection();
    }

    pub inline fn GetLocaleName(
        self: *Self,
        textPosition: u32,
        textLength: *u32,
        localeName: *?[*:0]const u16,
    ) i32 {
        return @ptrCast(*IDWriteTextAnalysisSource, self).GetLocaleName(
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
        return @ptrCast(*IDWriteTextAnalysisSource, self).GetNumberSubstitution(
            textPosition,
            textLength,
            numberSubstitution,
        );
    }

    pub inline fn GetVerticalGlyphOrientation(
        self: *Self,
        textPosition: u32,
        textLength: *u32,
        glyphOrientation: *DWRITE_VERTICAL_GLYPH_ORIENTATION,
        bidiLevel: *u8,
    ) callconv(.Stdcall) i32 {
        return self.lpVtbl.*.GetVerticalGlyphOrientation(
            self,
            textPosition,
            textLength,
            glyphOrientation,
            bidiLevel,
        );
    }
};

pub const IDWriteTextAnalysisSink1 = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("B0D941A0-85E7-4D8B-9FD3-5CED9934482A");
    pub const Vtbl = extern struct {
        // IDWriteTextAnalysisSink
        parent: IDWriteTextAnalysisSink.Vtbl,

        // IDWriteTextAnalysisSink1
        SetGlyphOrientation: fn (self: *Self, textPosition: u32, textLength: u32, glyphOrientationAngle: DWRITE_GLYPH_ORIENTATION_ANGLE, adjustedBidiLevel: u8, isSideways: i32, isRightToLeft: i32) callconv(.Stdcall) i32,
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
        return @ptrCast(*IDWriteTextAnalysisSink, self).SetScriptAnalysis(
            textPosition,
            textLength,
            scriptAnalysis,
        );
    }

    pub inline fn SetLineBreakpoints(
        self: *Self,
        textPosition: u32,
        lineBreakpoints: []const DWRITE_LINE_BREAKPOINT,
    ) i32 {
        return @ptrCast(*IDWriteTextAnalysisSink, self).SetLineBreakpoints(
            textPosition,
            lineBreakpoints,
        );
    }

    pub inline fn SetBidiLevel(
        self: *Self,
        textPosition: u32,
        textLength: u32,
        explicitLevel: u8,
        resolvedLevel: u8,
    ) i32 {
        return @ptrCast(*IDWriteTextAnalysisSink, self).SetBidiLevel(
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
        return @ptrCast(*IDWriteTextAnalysisSink, self).SetNumberSubstitution(
            textPosition,
            textLength,
            numberSubstitution,
        );
    }

    pub inline fn SetGlyphOrientation(
        self: *Self,
        textPosition: u32,
        textLength: u32,
        glyphOrientationAngle: DWRITE_GLYPH_ORIENTATION_ANGLE,
        adjustedBidiLevel: u8,
        isSideways: bool,
        isRightToLeft: bool,
    ) callconv(.Stdcall) i32 {
        return self.lpVtbl.*.SetGlyphOrientation(
            self,
            textPosition,
            textLength,
            glyphOrientationAngle,
            adjustedBidiLevel,
            @as(i32, @boolToInt(isSideways)),
            @as(i32, @boolToInt(isRightToLeft)),
        );
    }
};

pub const IDWriteTextLayout1 = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("9064D822-80A7-465C-A986-DF65F78B8FEB");
    pub const Vtbl = extern struct {
        // IDWriteTextLayout
        parent: IDWriteTextLayout.Vtbl,

        // IDWriteTextLayout1
        SetPairKerning: fn (self: *Self, isPairKerningEnabled: i32, textRange: DWRITE_TEXT_RANGE) callconv(.Stdcall) i32,
        GetPairKerning: fn (self: *Self, currentPosition: u32, isPairKerningEnabled: *i32, textRange: ?*DWRITE_TEXT_RANGE) callconv(.Stdcall) i32,
        SetCharacterSpacing: fn (self: *Self, leadingSpacing: f32, trailingSpacing: f32, minimumAdvanceWidth: f32, textRange: DWRITE_TEXT_RANGE) callconv(.Stdcall) i32,
        GetCharacterSpacing: fn (self: *Self, currentPosition: u32, leadingSpacing: *f32, trailingSpacing: *f32, minimumAdvanceWidth: *f32, textRange: ?*DWRITE_TEXT_RANGE) callconv(.Stdcall) i32,
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
        return @ptrCast(*IDWriteTextLayout, self).SetMaxWidth(maxWidth);
    }

    pub inline fn SetMaxHeight(self: *Self, maxHeight: f32) i32 {
        return @ptrCast(*IDWriteTextLayout, self).SetMaxHeight(maxHeight);
    }

    pub inline fn SetFontCollection(
        self: *Self,
        fontCollection: *IDWriteFontCollection,
        textRange: DWRITE_TEXT_RANGE,
    ) i32 {
        return @ptrCast(*IDWriteTextLayout, self).SetFontCollection(
            fontCollection,
            textRange,
        );
    }

    pub inline fn SetFontFamilyName(
        self: *Self,
        fontFamilyName: [:0]const u16,
        textRange: DWRITE_TEXT_RANGE,
    ) i32 {
        return @ptrCast(*IDWriteTextLayout, self).SetFontFamilyName(
            fontFamilyName,
            textRange,
        );
    }

    pub inline fn SetFontWeight(
        self: *Self,
        fontWeight: DWRITE_FONT_WEIGHT,
        textRange: DWRITE_TEXT_RANGE,
    ) i32 {
        return @ptrCast(*IDWriteTextLayout, self).SetFontWeight(
            fontWeight,
            textRange,
        );
    }

    pub inline fn SetFontStyle(
        self: *Self,
        fontStyle: DWRITE_FONT_STYLE,
        textRange: DWRITE_TEXT_RANGE,
    ) i32 {
        return @ptrCast(*IDWriteTextLayout, self).SetFontStyle(
            fontStyle,
            textRange,
        );
    }

    pub inline fn SetFontStretch(
        self: *Self,
        fontStretch: DWRITE_FONT_STRETCH,
        textRange: DWRITE_TEXT_RANGE,
    ) i32 {
        return @ptrCast(*IDWriteTextLayout, self).SetFontStretch(
            fontStretch,
            textRange,
        );
    }

    pub inline fn SetFontSize(
        self: *Self,
        fontSize: f32,
        textRange: DWRITE_TEXT_RANGE,
    ) i32 {
        return @ptrCast(*IDWriteTextLayout, self).SetFontSize(
            fontSize,
            textRange,
        );
    }

    pub inline fn SetUnderline(
        self: *Self,
        hasUnderline: bool,
        textRange: DWRITE_TEXT_RANGE,
    ) i32 {
        return @ptrCast(*IDWriteTextLayout, self).SetUnderline(
            hasUnderline,
            textRange,
        );
    }

    pub inline fn SetStrikethrough(
        self: *Self,
        hasStrikethrough: bool,
        textRange: DWRITE_TEXT_RANGE,
    ) i32 {
        return @ptrCast(*IDWriteTextLayout, self).SetStrikethrough(
            hasStrikethrough,
            textRange,
        );
    }

    pub inline fn SetDrawingEffect(
        self: *Self,
        drawingEffect: *IUnknown,
        textRange: DWRITE_TEXT_RANGE,
    ) i32 {
        return @ptrCast(*IDWriteTextLayout, self).SetDrawingEffect(
            drawingEffect,
            textRange,
        );
    }

    pub inline fn SetInlineObject(
        self: *Self,
        inlineObject: *IDWriteInlineObject,
        textRange: DWRITE_TEXT_RANGE,
    ) i32 {
        return @ptrCast(*IDWriteTextLayout, self).SetInlineObject(
            inlineObject,
            textRange,
        );
    }

    pub inline fn SetTypography(
        self: *Self,
        typography: *IDWriteTypography,
        textRange: DWRITE_TEXT_RANGE,
    ) i32 {
        return @ptrCast(*IDWriteTextLayout, self).SetTypography(
            typography,
            textRange,
        );
    }

    pub inline fn SetLocaleName(
        self: *Self,
        localeName: [:0]const u16,
        textRange: DWRITE_TEXT_RANGE,
    ) i32 {
        return @ptrCast(*IDWriteTextLayout, self).SetLocaleName(
            localeName.ptr,
            textRange,
        );
    }

    pub inline fn GetMaxWidth(self: *Self) f32 {
        return @ptrCast(*IDWriteTextLayout, self).GetMaxWidth();
    }

    pub inline fn GetMaxHeight(self: *Self) f32 {
        return @ptrCast(*IDWriteTextLayout, self).GetMaxHeight();
    }

    pub inline fn GetFontCollection1(
        self: *Self,
        currentPosition: u32,
        fontCollection: *?*IDWriteFontCollection,
        textRange: ?*DWRITE_TEXT_RANGE,
    ) i32 {
        return @ptrCast(*IDWriteTextLayout, self).GetFontCollection(
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
        return @ptrCast(*IDWriteTextLayout, self).GetFontFamilyNameLength(
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
        return @ptrCast(*IDWriteTextLayout, self).GetFontFamilyName(
            currentPosition,
            fontFamilyName,
            textRange,
        );
    }

    pub inline fn GetFontWeight1(
        self: *Self,
        currentPosition: u32,
        fontWeight: *DWRITE_FONT_WEIGHT,
        textRange: ?*DWRITE_TEXT_RANGE,
    ) i32 {
        return @ptrCast(*IDWriteTextLayout, self).GetFontWeight(
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
        return @ptrCast(*IDWriteTextLayout, self).GetFontStyle(
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
        return @ptrCast(*IDWriteTextLayout, self).GetFontStretch(
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
        return @ptrCast(*IDWriteTextLayout, self).GetFontSize(
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
        return @ptrCast(*IDWriteTextLayout, self).GetUnderline(
            currentPosition,
            hasUnderline,
            textRange,
        );
    }

    pub inline fn GetStrikethrough(
        self: *Self,
        currentPosition: u32,
        hasStrikethrough: *bool,
        textRange: ?*DWRITE_TEXT_RANGE,
    ) i32 {
        return @ptrCast(*IDWriteTextLayout, self).GetStrikethrough(
            currentPosition,
            hasStrikethrough,
            textRange,
        );
    }

    pub inline fn GetDrawingEffect(
        self: *Self,
        currentPosition: u32,
        drawingEffect: *?*IUnknown,
        textRange: ?*DWRITE_TEXT_RANGE,
    ) i32 {
        return @ptrCast(*IDWriteTextLayout, self).GetDrawingEffect(
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
        return @ptrCast(*IDWriteTextLayout, self).GetInlineObject(
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
        return @ptrCast(*IDWriteTextLayout, self).GetTypography(
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
        return @ptrCast(*IDWriteTextLayout, self).GetLocaleNameLength(
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
        return @ptrCast(*IDWriteTextLayout, self).GetLocaleName(
            currentPosition,
            localeName,
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
        return @ptrCast(*IDWriteTextLayout, self).Draw(
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
        return @ptrCast(*IDWriteTextLayout, self).GetLineMetrics(
            lineMetrics,
            actualLineCount,
        );
    }

    pub inline fn GetMetrics(self: *Self, textMetrics: *DWRITE_TEXT_METRICS) i32 {
        return @ptrCast(*IDWriteTextLayout, self).GetMetrics(textMetrics);
    }

    pub inline fn GetOverhangMetrics(self: *Self, overhangs: *DWRITE_OVERHANG_METRICS) i32 {
        return @ptrCast(*IDWriteTextLayout, self).GetOverhangMetrics(overhangs);
    }

    pub inline fn GetClusterMetrics(
        self: *Self,
        clusterMetrics: []DWRITE_CLUSTER_METRICS,
        actualClusterCount: *u32,
    ) i32 {
        return @ptrCast(*IDWriteTextLayout, self).GetClusterMetrics(
            clusterMetrics,
            actualClusterCount,
        );
    }

    pub inline fn DetermineMinWidth(self: *Self, minWidth: *f32) i32 {
        return @ptrCast(*IDWriteTextLayout, self).DetermineMinWidth(minWidth);
    }

    pub inline fn HitTestPoint(
        self: *Self,
        pointX: f32,
        pointY: f32,
        isTrailingHit: *bool,
        isInside: *bool,
        hitTestMetrics: *DWRITE_HIT_TEST_METRICS,
    ) i32 {
        return @ptrCast(*IDWriteTextLayout, self).HitTestPoint(
            pointX,
            pointY,
            isTrailingHit,
            isInside,
            hitTestMetrics,
        );
    }

    pub inline fn HitTestTextPosition(
        self: *Self,
        textPosition: u32,
        isTrailingHit: bool,
        pointX: *f32,
        pointY: *f32,
        hitTestMetrics: *DWRITE_HIT_TEST_METRICS,
    ) i32 {
        return @ptrCast(*IDWriteTextLayout, self).HitTestTextPosition(
            textPosition,
            isTrailingHit,
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
        return @ptrCast(*IDWriteTextLayout, self).HitTestTextRange(
            textPosition,
            textLength,
            originX,
            originY,
            hitTestMetrics,
            actualHitTestMetricsCount,
        );
    }

    pub inline fn SetPairKerning(
        self: *Self,
        isPairKerningEnabled: bool,
        textRange: DWRITE_TEXT_RANGE,
    ) i32 {
        return self.lpVtbl.*.SetPairKerning(
            self,
            @as(i32, @boolToInt(isPairKerningEnabled)),
            textRange,
        );
    }

    pub inline fn GetPairKerning(
        self: *Self,
        currentPosition: u32,
        isPairKerningEnabled: *bool,
        textRange: ?*DWRITE_TEXT_RANGE,
    ) i32 {
        var isPairKerningEnabled_aux: i32 = 0;
        const ret = self.lpVtbl.*.GetPairKerning(
            self,
            currentPosition,
            &isPairKerningEnabled_aux,
            textRange,
        );

        isPairKerningEnabled.* = isPairKerningEnabled_aux != 0;
        return ret;
    }

    pub inline fn SetCharacterSpacing(
        self: *Self,
        leadingSpacing: f32,
        trailingSpacing: f32,
        minimumAdvanceWidth: f32,
        textRange: DWRITE_TEXT_RANGE,
    ) i32 {
        return self.lpVtbl.*.SetCharacterSpacing(
            self,
            leadingSpacing,
            trailingSpacing,
            minimumAdvanceWidth,
            textRange,
        );
    }

    pub inline fn GetCharacterSpacing(
        self: *Self,
        currentPosition: u32,
        leadingSpacing: *f32,
        trailingSpacing: *f32,
        minimumAdvanceWidth: *f32,
        textRange: ?*DWRITE_TEXT_RANGE,
    ) i32 {
        return self.lpVtbl.*.GetCharacterSpacing(
            self,
            currentPosition,
            leadingSpacing,
            trailingSpacing,
            minimumAdvanceWidth,
            textRange,
        );
    }
};

/// Represents the type of antialiasing to use for text when the rendering mode calls for
/// antialiasing.
pub const DWRITE_TEXT_ANTIALIAS_MODE = extern enum {
    /// ClearType antialiasing computes coverage independently for the red, green, and blue
    /// color elements of each pixel. This allows for more detail than conventional antialiasing.
    /// However, because there is no one alpha value for each pixel, ClearType is not suitable
    /// rendering text onto a transparent intermediate bitmap.
    CLEARTYPE,

    /// Grayscale antialiasing computes one coverage value for each pixel. Because the alpha
    /// value of each pixel is well-defined, text can be rendered onto a transparent bitmap,
    /// which can then be composited with other content. Note that grayscale rendering with
    /// IDWriteBitmapRenderTarget1 uses premultiplied alpha.
    GRAYSCALE,
};

pub const IDWriteBitmapRenderTarget1 = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("791e8298-3ef3-4230-9880-c9bdecc42064");
    pub const Vtbl = extern struct {
        // IDWriteBitmapRenderTarget
        parent: IDWriteBitmapRenderTarget.Vtbl,

        // IDWriteBitmapRenderTarget1
        GetTextAntialiasMode: fn (self: *Self) callconv(.Stdcall) DWRITE_TEXT_ANTIALIAS_MODE,
        SetTextAntialiasMode: fn (self: *Self, antialiasMode: DWRITE_TEXT_ANTIALIAS_MODE) callconv(.Stdcall) i32,
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
        return @ptrCast(*IDWriteBitmapRenderTarget, self).DrawGlyphRun(
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
        return @ptrCast(*IDWriteBitmapRenderTarget, self).GetMemoryDC();
    }

    pub inline fn GetPixelsPerDip(self: *Self) f32 {
        return @ptrCast(*IDWriteBitmapRenderTarget, self).GetPixelsPerDip();
    }

    pub inline fn SetPixelsPerDip(self: *Self, pixelsPerDip: f32) i32 {
        return @ptrCast(*IDWriteBitmapRenderTarget, self).SetPixelsPerDip(pixelsPerDip);
    }

    pub inline fn GetCurrentTransform(self: *Self, transform: *DWRITE_MATRIX) i32 {
        return @ptrCast(*IDWriteBitmapRenderTarget, self).GetCurrentTransform(transform);
    }

    pub inline fn SetCurrentTransform(self: *Self, transform: *const DWRITE_MATRIX) i32 {
        return @ptrCast(*IDWriteBitmapRenderTarget, self).SetCurrentTransform(transform);
    }

    pub inline fn GetSize(self: *Self, size: *SIZE) i32 {
        return @ptrCast(*IDWriteBitmapRenderTarget, self).GetSize(size);
    }

    pub inline fn Resize(self: *Self, width: u32, height: u32) i32 {
        return @ptrCast(*IDWriteBitmapRenderTarget, self).Resize(width, height);
    }

    pub inline fn GetTextAntialiasMode(self: *Self) DWRITE_TEXT_ANTIALIAS_MODE {
        return self.lpVtbl.*.GetTextAntialiasMode(self);
    }

    pub inline fn SetTextAntialiasMode(self: *Self, antialiasMode: DWRITE_TEXT_ANTIALIAS_MODE) i32 {
        return self.lpVtbl.*.SetTextAntialiasMode(self, antialiasMode);
    }
};
