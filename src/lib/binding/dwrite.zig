usingnamespace @import("dcommon.zig");

const unknwn = @import("unknwn.zig");
const structs = @import("structs.zig");
const functions = @import("functions.zig");
const util = @import("../util.zig");

const Interface = util.Interface;
const FILETIME = structs.FILETIME;
const LOGFONTW = structs.LOGFONTW;
const RECT = structs.RECT;
const SIZE = structs.SIZE;
const GUID = structs.GUID;
const GUID_STRING = functions.GUID_STRING;
const IUnknown = unknwn.IUnknown;
const IUnknownVtbl = unknwn.IUnknownVtbl;

pub const DWRITE_ALPHA_MAX = 255;
pub const FACILITY_DWRITE = 0x898;
pub const DWRITE_ERR_BASE = 0x5000;

pub const DWRITE_FONT_FILE_TYPE = extern enum {
    DWRITE_FONT_FILE_TYPE_UNKNOWN,
    DWRITE_FONT_FILE_TYPE_CFF,
    DWRITE_FONT_FILE_TYPE_TRUETYPE,
    DWRITE_FONT_FILE_TYPE_OPENTYPE_COLLECTION,
    DWRITE_FONT_FILE_TYPE_TYPE1_PFM,
    DWRITE_FONT_FILE_TYPE_TYPE1_PFB,
    DWRITE_FONT_FILE_TYPE_VECTOR,
    DWRITE_FONT_FILE_TYPE_BITMAP,

    pub const DWRITE_FONT_FILE_TYPE_TRUETYPE_COLLECTION = @This().DWRITE_FONT_FILE_TYPE_OPENTYPE_COLLECTION;
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

    pub const DWRITE_FONT_FACE_TYPE_TRUETYPE_COLLECTION = @This().DWRITE_FONT_FACE_TYPE_OPENTYPE_COLLECTION;
};

pub const DWRITE_FONT_SIMULATIONS = extern enum {
    DWRITE_FONT_SIMULATIONS_NONE = 0x0000,
    DWRITE_FONT_SIMULATIONS_BOLD = 0x0001,
    DWRITE_FONT_SIMULATIONS_OBLIQUE = 0x0002,
};

pub const DWRITE_FONT_WEIGHT = extern enum {
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
    DWRITE_FONT_WEIGHT_ULTRA_BLACK = 950,
};

pub const DWRITE_FONT_STRETCH = extern enum {
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
    DWRITE_FONT_STRETCH_ULTRA_EXPANDED = 9,
};

pub const DWRITE_FONT_STYLE = extern enum {
    DWRITE_FONT_STYLE_NORMAL,
    DWRITE_FONT_STYLE_OBLIQUE,
    DWRITE_FONT_STYLE_ITALIC,
};

pub const DWRITE_INFORMATIONAL_STRING_ID = extern enum {
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

    pub const DWRITE_INFORMATIONAL_STRING_PREFERRED_FAMILY_NAMES = @This().DWRITE_INFORMATIONAL_STRING_TYPOGRAPHIC_FAMILY_NAMES;
    pub const DWRITE_INFORMATIONAL_STRING_PREFERRED_SUBFAMILY_NAMES = @This().DWRITE_INFORMATIONAL_STRING_TYPOGRAPHIC_SUBFAMILY_NAMES;
    pub const DWRITE_INFORMATIONAL_STRING_WWS_FAMILY_NAME = @This().DWRITE_INFORMATIONAL_STRING_WEIGHT_STRETCH_STYLE_FAMILY_NAME;
};

pub const DWRITE_FONT_METRICS = extern struct {
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

pub const DWRITE_GLYPH_METRICS = extern struct {
    leftSideBearing: c_int,
    advanceWidth: c_uint,
    rightSideBearing: c_int,
    topSideBearing: c_int,
    advanceHeight: c_uint,
    bottomSideBearing: c_int,
    verticalOriginY: c_int,
};

pub const DWRITE_GLYPH_OFFSET = extern struct {
    advanceOffset: f32,
    ascenderOffset: f32,
};

pub const DWRITE_FACTORY_TYPE = extern enum {
    DWRITE_FACTORY_TYPE_SHARED,
    DWRITE_FACTORY_TYPE_ISOLATED,
};

pub const DWRITE_PIXEL_GEOMETRY = extern enum {
    DWRITE_PIXEL_GEOMETRY_FLAT,
    DWRITE_PIXEL_GEOMETRY_RGB,
    DWRITE_PIXEL_GEOMETRY_BGR,
};

pub const DWRITE_RENDERING_MODE = extern enum {
    DWRITE_RENDERING_MODE_DEFAULT,
    DWRITE_RENDERING_MODE_ALIASED,
    DWRITE_RENDERING_MODE_GDI_CLASSIC,
    DWRITE_RENDERING_MODE_GDI_NATURAL,
    DWRITE_RENDERING_MODE_NATURAL,
    DWRITE_RENDERING_MODE_NATURAL_SYMMETRIC,
    DWRITE_RENDERING_MODE_OUTLINE,

    pub const DWRITE_RENDERING_MODE_CLEARTYPE_GDI_CLASSIC = @This().DWRITE_RENDERING_MODE_GDI_CLASSIC;
    pub const DWRITE_RENDERING_MODE_CLEARTYPE_GDI_NATURAL = @This().DWRITE_RENDERING_MODE_GDI_NATURAL;
    pub const DWRITE_RENDERING_MODE_CLEARTYPE_NATURAL = @This().DWRITE_RENDERING_MODE_NATURAL;
    pub const DWRITE_RENDERING_MODE_CLEARTYPE_NATURAL_SYMMETRIC = @This().DWRITE_RENDERING_MODE_NATURAL_SYMMETRIC;
};

pub const DWRITE_MATRIX = extern struct {
    m11: f32,
    m12: f32,
    m21: f32,
    m22: f32,
    dx: f32,
    dy: f32,
};

pub const DWRITE_SCRIPT_SHAPES = extern enum {
    DWRITE_SCRIPT_SHAPES_DEFAULT = 0,
    DWRITE_SCRIPT_SHAPES_NO_VISUAL = 1,
};

pub const DWRITE_SCRIPT_ANALYSIS = extern struct {
    script: c_ushort,
    shapes: DWRITE_SCRIPT_SHAPES,
};

pub const DWRITE_BREAK_CONDITION = extern enum {
    DWRITE_BREAK_CONDITION_NEUTRAL,
    DWRITE_BREAK_CONDITION_CAN_BREAK,
    DWRITE_BREAK_CONDITION_MAY_NOT_BREAK,
    DWRITE_BREAK_CONDITION_MUST_BREAK,
};

pub const DWRITE_LINE_BREAKPOINT = extern struct {
    // UINT8 breakConditionBefore  : 2;2
    // UINT8 breakConditionAfter   : 2;4
    // UINT8 isWhitespace          : 1;5
    // UINT8 isSoftHyphen          : 1;6
    // UINT8 padding               : 2;8
    data: u8,
};

pub const DWRITE_NUMBER_SUBSTITUTION_METHOD = extern enum {
    DWRITE_NUMBER_SUBSTITUTION_METHOD_FROM_CULTURE,
    DWRITE_NUMBER_SUBSTITUTION_METHOD_CONTEXTUAL,
    DWRITE_NUMBER_SUBSTITUTION_METHOD_NONE,
    DWRITE_NUMBER_SUBSTITUTION_METHOD_NATIONAL,
    DWRITE_NUMBER_SUBSTITUTION_METHOD_TRADITIONAL,
};

pub const DWRITE_READING_DIRECTION = extern enum {
    DWRITE_READING_DIRECTION_LEFT_TO_RIGHT = 0,
    DWRITE_READING_DIRECTION_RIGHT_TO_LEFT = 1,
    DWRITE_READING_DIRECTION_TOP_TO_BOTTOM = 2,
    DWRITE_READING_DIRECTION_BOTTOM_TO_TOP = 3,
};

pub const DWRITE_FLOW_DIRECTION = extern enum {
    DWRITE_FLOW_DIRECTION_TOP_TO_BOTTOM = 0,
    DWRITE_FLOW_DIRECTION_BOTTOM_TO_TOP = 1,
    DWRITE_FLOW_DIRECTION_LEFT_TO_RIGHT = 2,
    DWRITE_FLOW_DIRECTION_RIGHT_TO_LEFT = 3,
};

pub const DWRITE_TEXT_ALIGNMENT = extern enum {
    DWRITE_TEXT_ALIGNMENT_LEADING,
    DWRITE_TEXT_ALIGNMENT_TRAILING,
    DWRITE_TEXT_ALIGNMENT_CENTER,
    DWRITE_TEXT_ALIGNMENT_JUSTIFIED,
};

pub const DWRITE_PARAGRAPH_ALIGNMENT = extern enum {
    DWRITE_PARAGRAPH_ALIGNMENT_NEAR,
    DWRITE_PARAGRAPH_ALIGNMENT_FAR,
    DWRITE_PARAGRAPH_ALIGNMENT_CENTER,
};

pub const DWRITE_WORD_WRAPPING = extern enum {
    DWRITE_WORD_WRAPPING_WRAP = 0,
    DWRITE_WORD_WRAPPING_NO_WRAP = 1,
    DWRITE_WORD_WRAPPING_EMERGENCY_BREAK = 2,
    DWRITE_WORD_WRAPPING_WHOLE_WORD = 3,
    DWRITE_WORD_WRAPPING_CHARACTER = 4,
};

pub const DWRITE_LINE_SPACING_METHOD = extern enum {
    DWRITE_LINE_SPACING_METHOD_DEFAULT,
    DWRITE_LINE_SPACING_METHOD_UNIFORM,
    DWRITE_LINE_SPACING_METHOD_PROPORTIONAL,
};

pub const DWRITE_TRIMMING_GRANULARITY = extern enum {
    DWRITE_TRIMMING_GRANULARITY_NONE,
    DWRITE_TRIMMING_GRANULARITY_CHARACTER,
    DWRITE_TRIMMING_GRANULARITY_WORD,
};

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

pub const DWRITE_TEXT_RANGE = extern struct {
    startPosition: c_uint,
    length: c_uint,
};

pub const DWRITE_FONT_FEATURE = extern struct {
    nameTag: DWRITE_FONT_FEATURE_TAG,
    parameter: c_uint,
};

pub const DWRITE_TYPOGRAPHIC_FEATURES = extern struct {
    features: [*]DWRITE_FONT_FEATURE,
    featureCount: c_uint,
};

pub const DWRITE_TRIMMING = extern struct {
    granularity: DWRITE_TRIMMING_GRANULARITY,
    delimiter: c_uint,
    delimiterCount: c_uint,
};

pub const DWRITE_SHAPING_TEXT_PROPERTIES = extern struct {
    // UINT16  isShapedAlone       : 1;1
    // UINT16  reserved            : 15;16
    data: u16,
};

pub const DWRITE_SHAPING_GLYPH_PROPERTIES = extern struct {
    // UINT16  justification       : 4;4
    // UINT16  isClusterStart      : 1;5
    // UINT16  isDiacritic         : 1;6
    // UINT16  isZeroWidthSpace    : 1;7
    // UINT16  reserved            : 9;16
    data: u16,
};

pub const DWRITE_GLYPH_RUN = extern struct {
    fontFace: *IDWriteFontFace,
    fontEmSize: f32,
    glyphCount: c_uint,
    glyphIndices: [*]const u16,
    glyphAdvances: ?[*]const f32,
    glyphOffsets: ?[*]const DWRITE_GLYPH_OFFSET,
    isSideways: c_int,
    bidiLevel: c_uint,
};

pub const DWRITE_GLYPH_RUN_DESCRIPTION = extern struct {
    localeName: [*:0]const u16,
    string: [*]const u16,
    stringLength: c_uint,
    clusterMap: ?[*]const u16,
    textPosition: c_uint,
};

pub const DWRITE_UNDERLINE = extern struct {
    width: f32,
    thickness: f32,
    offset: f32,
    runHeight: f32,
    readingDirection: DWRITE_READING_DIRECTION,
    flowDirection: DWRITE_FLOW_DIRECTION,
    localeName: [*:0]const u16,
    measuringMode: DWRITE_MEASURING_MODE,
};

pub const DWRITE_STRIKETHROUGH = extern struct {
    width: f32,
    thickness: f32,
    offset: f32,
    readingDirection: DWRITE_READING_DIRECTION,
    flowDirection: DWRITE_FLOW_DIRECTION,
    localeName: [*:0]const u16,
    measuringMode: DWRITE_MEASURING_MODE,
};

pub const DWRITE_LINE_METRICS = extern struct {
    length: c_uint,
    trailingWhitespaceLength: c_uint,
    newlineLength: c_uint,
    height: f32,
    baseline: f32,
    isTrimmed: c_int,
};

pub const DWRITE_CLUSTER_METRICS = extern struct {
    width: f32,
    length: c_ushort,
    // UINT16 canWrapLineAfter : 1;1
    // UINT16 isWhitespace : 1;2
    // UINT16 isNewline : 1;3
    // UINT16 isSoftHyphen : 1;4
    // UINT16 isRightToLeft : 1;5
    // UINT16 padding : 11;16
    data: u16,
};

pub const DWRITE_TEXT_METRICS = extern struct {
    left: f32,
    top: f32,
    width: f32,
    widthIncludingTrailingWhitespace: f32,
    height: f32,
    layoutWidth: f32,
    layoutHeight: f32,
    maxBidiReorderingDepth: c_uint,
    lineCount: c_uint,
};

pub const DWRITE_INLINE_OBJECT_METRICS = extern struct {
    width: f32,
    height: f32,
    baseline: f32,
    supportsSideways: c_int,
};

pub const DWRITE_OVERHANG_METRICS = extern struct {
    left: f32,
    top: f32,
    right: f32,
    bottom: f32,
};

pub const DWRITE_HIT_TEST_METRICS = extern struct {
    textPosition: c_uint,
    length: c_uint,
    left: f32,
    top: f32,
    width: f32,
    height: f32,
    bidiLevel: c_uint,
    isText: c_int,
    isTrimmed: c_int,
};

pub const DWRITE_TEXTURE_TYPE = extern enum {
    DWRITE_TEXTURE_ALIASED_1x1,
    DWRITE_TEXTURE_CLEARTYPE_3x1,
};

pub const IID_IDWriteFactory = GUID_STRING("b859ee5a-d838-4b5b-a2e8-1adc7d93db48");

pub const IDWriteFactory = Interface(IDWriteFactoryVtbl);
pub const IDWriteFactoryVtbl = extern struct {
    const Self = IDWriteFactory;

    // IUnknown
    iunknown: IUnknownVtbl,

    // IDWriteFactory
    GetSystemFontCollection: fn (this: *Self, fontCollection: **IDWriteFontCollection, checkForUpdates: c_int) callconv(.Stdcall) c_long,
    CreateCustomFontCollection: fn (this: *Self, collectionLoader: *IDWriteFontCollectionLoader, collectionKey: *const c_void, collectionKeySize: c_uint, fontCollection: **IDWriteFontCollection) callconv(.Stdcall) c_long,
    RegisterFontCollectionLoader: fn (this: *Self, fontCollectionLoader: *IDWriteFontCollectionLoader) callconv(.Stdcall) c_long,
    UnregisterFontCollectionLoader: fn (this: *Self, fontCollectionLoader: *IDWriteFontCollectionLoader) callconv(.Stdcall) c_long,
    CreateFontFileReference: fn (this: *Self, filePath: ?[*:0]const u16, lastWriteTime: ?*const FILETIME, fontFile: **IDWriteFontFile) callconv(.Stdcall) c_long,
    CreateCustomFontFileReference: fn (this: *Self, fontFileReferenceKey: *const c_void, fontFileReferenceKeySize: c_uint, fontFileLoader: *IDWriteFontFileLoader, fontFile: **IDWriteFontFile) callconv(.Stdcall) c_long,
    CreateFontFace: fn (this: *Self, fontFaceType: DWRITE_FONT_FACE_TYPE, numberOfFiles: c_uint, fontFiles: [*]const *IDWriteFontFile, faceIndex: c_uint, fontFaceSimulationFlags: DWRITE_FONT_SIMULATIONS, fontFace: **IDWriteFontFace) callconv(.Stdcall) c_long,
    CreateRenderingParams: fn (this: *Self, renderingParams: **IDWriteRenderingParams) callconv(.Stdcall) c_long,
    CreateMonitorRenderingParams: fn (this: *Self, monitor: *c_void, renderingParams: **IDWriteRenderingParams) callconv(.Stdcall) c_long,
    CreateCustomRenderingParams: fn (this: *Self, gamma: f32, enhancedContrast: f32, clearTypeLevel: f32, pixelGeometry: DWRITE_PIXEL_GEOMETRY, renderingMode: DWRITE_RENDERING_MODE, renderingParams: **IDWriteRenderingParams) callconv(.Stdcall) c_long,
    RegisterFontFileLoader: fn (this: *Self, fontFileLoader: *IDWriteFontFileLoader) callconv(.Stdcall) c_long,
    UnregisterFontFileLoader: fn (this: *Self, fontFileLoader: *IDWriteFontFileLoader) callconv(.Stdcall) c_long,
    CreateTextFormat: fn (this: *Self, fontFamilyName: [*:0]const u16, fontCollection: ?*IDWriteFontCollection, fontWeight: DWRITE_FONT_WEIGHT, fontStyle: DWRITE_FONT_STYLE, fontStretch: DWRITE_FONT_STRETCH, fontSize: f32, localeName: [*:0]const u16, textFormat: **IDWriteTextFormat) callconv(.Stdcall) c_long,
    CreateTypography: fn (this: *Self, typography: **IDWriteTypography) callconv(.Stdcall) c_long,
    GetGdiInterop: fn (this: *Self, gdiInterop: **IDWriteGdiInterop) callconv(.Stdcall) c_long,
    CreateTextLayout: fn (this: *Self, string: [*]const u16, stringLength: c_uint, textFormat: *IDWriteTextFormat, maxWidth: f32, maxHeight: f32, textLayout: **IDWriteTextLayout) callconv(.Stdcall) c_long,
    CreateGdiCompatibleTextLayout: fn (this: *Self, string: [*]const u16, stringLength: c_uint, textFormat: *IDWriteTextFormat, layoutWidth: f32, layoutHeight: f32, pixelsPerDip: f32, transform: *const DWRITE_MATRIX, useGdiNatural: c_int, textLayout: **IDWriteTextLayout) callconv(.Stdcall) c_long,
    CreateEllipsisTrimmingSign: fn (this: *Self, textFormat: *IDWriteTextFormat, trimmingSign: **IDWriteInlineObject) callconv(.Stdcall) c_long,
    CreateTextAnalyzer: fn (this: *Self, textAnalyzer: **IDWriteTextAnalyzer) callconv(.Stdcall) c_long,
    CreateNumberSubstitution: fn (this: *Self, substitutionMethod: DWRITE_NUMBER_SUBSTITUTION_METHOD, localeName: [*:0]const u16, ignoreUserOverride: c_int, numberSubstitution: **IDWriteNumberSubstitution) callconv(.Stdcall) c_long,
    CreateGlyphRunAnalysis: fn (this: *Self, glyphRun: *const DWRITE_GLYPH_RUN, pixelsPerDip: f32, transform: *const DWRITE_MATRIX, renderingMode: DWRITE_RENDERING_MODE, measuringMode: DWRITE_MEASURING_MODE, baselineOriginX: f32, baselineOriginY: f32, glyphRunAnalysis: **IDWriteGlyphRunAnalysis) callconv(.Stdcall) c_long,
};

pub const IID_IDWriteFontFileLoader = GUID_STRING("727cad4e-d6af-4c9e-8a08-d695b11caa49");
pub const IDWriteFontFileLoader = Interface(IDWriteFontFileLoaderVtbl);
pub const IDWriteFontFileLoaderVtbl = extern struct {
    const Self = IDWriteFontFileLoader;

    // IUnknown
    iunknown: IUnknownVtbl,

    // IDWriteFontFileLoader
    CreateStreamFromKey: fn (this: *Self, fontFileReferenceKey: *const c_void, fontFileReferenceKeySize: c_uint, fontFileStream: **IDWriteFontFileStream) callconv(.Stdcall) c_ulong,
};

pub const IID_IDWriteLocalFontFileLoader = GUID_STRING("b2d9f3ec-c9fe-4a11-a2ec-d86208f7c0a2");
pub const IDWriteLocalFontFileLoader = Interface(IDWriteLocalFontFileLoaderVtbl);
pub const IDWriteLocalFontFileLoaderVtbl = extern struct {
    const Self = IDWriteLocalFontFileLoader;

    // IDWriteFontFileLoader
    idwritefontfileloader: IDWriteFontFileLoaderVtbl,

    // IDWriteLocalFontFileLoader
    GetFilePathLengthFromKey: fn (this: *Self, fontFileReferenceKey: [*]const c_void, fontFileReferenceKeySize: c_uint, filePathLength: *c_uint) callconv(.Stdcall) c_ulong,
    GetFilePathFromKey: fn (this: *Self, fontFileReferenceKey: [*]const c_void, fontFileReferenceKeySize: c_uint, filePath: [*:0]u16, filePathSize: c_uint) callconv(.Stdcall) c_ulong,
    GetLastWriteTimeFromKey: fn (this: *Self, fontFileReferenceKey: [*]const c_void, fontFileReferenceKeySize: c_uint, lastWriteTime: *FILETIME) callconv(.Stdcall) c_ulong,
};

pub const IID_IDWriteFontFileStream = GUID_STRING("6d4865fe-0ab8-4d91-8f62-5dd6be34a3e0");
pub const IDWriteFontFileStream = Interface(IDWriteFontFileStreamVtbl);
pub const IDWriteFontFileStreamVtbl = extern struct {
    const Self = IDWriteFontFileStream;

    // IUnknown
    iunknown: IUnknownVtbl,

    // IDWriteFontFileStream
    ReadFileFragment: fn (this: *Self, fragmentStart: **const c_void, fileOffset: c_ulonglong, fragmentSize: c_ulonglong, fragmentContext: **c_void) callconv(.Stdcall) c_ulong,
    ReleaseFileFragment: fn (this: *Self, fragmentContext: *c_void) callconv(.Stdcall) void,
    GetFileSize: fn (this: *Self, fileSize: *c_ulonglong) callconv(.Stdcall) c_long,
    GetLastWriteTime: fn (this: *Self, lastWriteTime: *c_ulonglong) callconv(.Stdcall) c_long,
};

pub const IID_IDWriteFontFile = GUID_STRING("739d886a-cef5-47dc-8769-1a8b41bebbb0");
pub const IDWriteFontFile = Interface(IDWriteFontFileVtbl);
pub const IDWriteFontFileVtbl = extern struct {
    const Self = IDWriteFontFile;

    // IUnknown
    iunknown: IUnknownVtbl,

    // IDWriteFontFile
    GetReferenceKey: fn (this: *Self, fontFileReferenceKey: **const c_void, fontFileReferenceKeySize: *c_uint) callconv(.Stdcall) c_ulong,
    GetLoader: fn (this: *Self, fontFileLoader: **IDWriteFontFileLoader) callconv(.Stdcall) c_ulong,
    Analyze: fn (this: *Self, isSupportedFontType: *c_int, fontFileType: *DWRITE_FONT_FILE_TYPE, fontFaceType: ?*DWRITE_FONT_FACE_TYPE, numberOfFaces: *c_uint) callconv(.Stdcall) c_ulong,
};

pub const IID_IDWriteRenderingParams = GUID_STRING("2f0da53a-2add-47cd-82ee-d9ec34688e75");
pub const IDWriteRenderingParams = Interface(IDWriteRenderingParamsVtbl);
pub const IDWriteRenderingParamsVtbl = extern struct {
    const Self = IDWriteRenderingParams;

    // IUnknown
    iunknown: IUnknownVtbl,

    // IDWriteRenderingParams
    GetGamma: fn (this: *Self) callconv(.Stdcall) f32,
    GetEnhancedContrast: fn (this: *Self) callconv(.Stdcall) f32,
    GetClearTypeLevel: fn (this: *Self) callconv(.Stdcall) f32,
    GetPixelGeometry: fn (this: *Self) callconv(.Stdcall) DWRITE_PIXEL_GEOMETRY,
    GetRenderingMode: fn (this: *Self) callconv(.Stdcall) DWRITE_RENDERING_MODE,
};

pub const IDWriteGeometrySink = @import("d2d1.zig").ID2D1SimplifiedGeometrySink;

pub const IID_IDWriteFontFace = GUID_STRING("5f49804d-7024-4d43-bfa9-d25984f53849");
pub const IDWriteFontFace = Interface(IDWriteFontFaceVtbl);
pub const IDWriteFontFaceVtbl = extern struct {
    const Self = IDWriteFontFace;

    // IUnknown
    iunknown: IUnknownVtbl,

    // IDWriteRenderingParams
    GetType: fn (this: *Self) callconv(.Stdcall) DWRITE_FONT_FACE_TYPE,
    GetFiles: fn (this: *Self, numberOfFiles: *c_uint, fontFiles: ?*[*]IDWriteFontFile) callconv(.Stdcall) c_long,
    GetIndex: fn (this: *Self) callconv(.Stdcall) c_uint,
    GetSimulations: fn (this: *Self) callconv(.Stdcall) DWRITE_FONT_SIMULATIONS,
    IsSymbolFont: fn (this: *Self) callconv(.Stdcall) c_int,
    GetMetrics: fn (this: *Self, fontFaceMetrics: *DWRITE_FONT_METRICS) callconv(.Stdcall) c_int,
    GetGlyphCount: fn (this: *Self) callconv(.Stdcall) c_ushort,
    GetDesignGlyphMetrics: fn (this: *Self, glyphIndices: [*]const c_ushort, glyphCount: c_uint, glyphMetrics: [*]DWRITE_GLYPH_METRICS, isSideways: c_int) callconv(.Stdcall) c_long,
    GetGlyphIndices: fn (this: *Self, codePoints: [*]const c_uint, codePointCount: c_uint, glyphIndices: [*]c_ushort) callconv(.Stdcall) c_long,
    TryGetFontTable: fn (this: *Self, openTypeTableTag: c_uint, tableData: **c_void, tableSize: *c_uint, tableContext: **c_void, exists: *c_int) callconv(.Stdcall) c_long,
    ReleaseFontTable: fn (this: *Self, tableContext: *c_void) callconv(.Stdcall) void,
    GetGlyphRunOutline: fn (this: *Self, emSize: f32, glyphIndices: [*]const c_ushort, glyphAdvances: ?[*]const f32, glyphOffsets: ?[*]const DWRITE_GLYPH_OFFSET, glyphCount: c_uint, isSideways: c_int, isRightToLeft: c_int, geometrySink: *IDWriteGeometrySink) callconv(.Stdcall) c_long,
    GetRecommendedRenderingMode: fn (this: *Self, emSize: f32, pixelsPerDip: f32, measuringMode: DWRITE_MEASURING_MODE, renderingParams: *IDWriteRenderingParams, renderingMode: *DWRITE_RENDERING_MODE) callconv(.Stdcall) c_long,
    GetGdiCompatibleMetrics: fn (this: *Self, emSize: f32, pixelsPerDip: f32, transform: ?*const DWRITE_MATRIX, fontFaceMetrics: *DWRITE_FONT_METRICS) callconv(.Stdcall) c_long,
    GetGdiCompatibleGlyphMetrics: fn (this: *Self, emSize: f32, pixelsPerDip: f32, transform: ?*const DWRITE_MATRIX, useGdiNatural: c_int, glyphIndices: [*]const c_ushort, glyphCount: c_uint, glyphMetrics: [*]DWRITE_GLYPH_METRICS, isSideways: c_int) callconv(.Stdcall) c_long,
};

pub const IID_IDWriteFontCollectionLoader = GUID_STRING("cca920e4-52f0-492b-bfa8-29c72ee0a468");
pub const IDWriteFontCollectionLoader = Interface(IDWriteFontCollectionLoaderVtbl);
pub const IDWriteFontCollectionLoaderVtbl = extern struct {
    const Self = IDWriteFontCollectionLoader;

    // IUnknown
    iunknown: IUnknownVtbl,

    // IDWriteFontCollectionLoader
    CreateEnumeratorFromKey: fn (this: *Self, factory: *IDWriteFactory, collectionKey: *const c_void, collectionKeySize: c_uint, fontFileEnumerator: **IDWriteFontFileEnumerator) callconv(.Stdcall) c_long,
};

pub const IID_IDWriteFontFileEnumerator = GUID_STRING("72755049-5ff7-435d-8348-4be97cfa6c7c");
pub const IDWriteFontFileEnumerator = Interface(IDWriteFontFileEnumeratorVtbl);
pub const IDWriteFontFileEnumeratorVtbl = extern struct {
    const Self = IDWriteFontFileEnumerator;

    // IUnknown
    iunknown: IUnknownVtbl,

    // IDWriteFontFileEnumerator
    MoveNext: fn (this: *Self, hasCurrentFile: *c_int) callconv(.Stdcall) c_long,
    GetCurrentFontFile: fn (this: *Self, fontFile: **IDWriteFontFile) callconv(.Stdcall) c_long,
};

pub const IID_IDWriteLocalizedStrings = GUID_STRING("08256209-099a-4b34-b86d-c22b110e7771");
pub const IDWriteLocalizedStrings = Interface(IDWriteLocalizedStringsVtbl);
pub const IDWriteLocalizedStringsVtbl = extern struct {
    const Self = IDWriteLocalizedStrings;

    // IUnknown
    iunknown: IUnknownVtbl,

    // IDWriteLocalizedStrings
    GetCount: fn (this: *Self) callconv(.Stdcall) c_uint,
    FindLocaleName: fn (this: *Self, localeName: [*:0]const u16, index: *c_uint, exists: *c_int) callconv(.Stdcall) c_long,
    GetLocaleNameLength: fn (this: *Self, index: c_uint, length: *c_uint) callconv(.Stdcall) c_long,
    GetLocaleName: fn (this: *Self, index: c_uint, localeName: [*:0]u16, size: c_uint) callconv(.Stdcall) c_long,
    GetStringLength: fn (this: *Self, index: c_uint, length: *c_uint) callconv(.Stdcall) c_long,
    GetString: fn (this: *Self, index: c_uint, stringBuffer: [*:0]u16, size: c_uint) callconv(.Stdcall) c_long,
};

pub const IID_IDWriteFontCollection = GUID_STRING("a84cee02-3eea-4eee-a827-87c1a02a0fcc");
pub const IDWriteFontCollection = Interface(IDWriteFontCollectionVtbl);
pub const IDWriteFontCollectionVtbl = extern struct {
    const Self = IDWriteFontCollection;

    // IUnknown
    iunknown: IUnknownVtbl,

    // IDWriteFontCollection
    GetFontFamilyCount: fn (this: *Self) callconv(.Stdcall) c_uint,
    GetFontFamily: fn (this: *Self, index: c_uint, fontFamily: **IDWriteFontFamily) callconv(.Stdcall) c_long,
    FindFamilyName: fn (this: *Self, familyName: [*:0]const u16, index: *c_uint, exists: *c_int) callconv(.Stdcall) c_long,
    GetFontFromFontFace: fn (this: *Self, fontFace: *IDWriteFontFace, font: **IDWriteFont) callconv(.Stdcall) c_long,
};

pub const IID_IDWriteFontList = GUID_STRING("1a0d8438-1d97-4ec1-aef9-a2fb86ed6acb");
pub const IDWriteFontList = Interface(IDWriteFontListVtbl);
pub const IDWriteFontListVtbl = extern struct {
    const Self = IDWriteFontList;

    // IUnknown
    iunknown: IUnknownVtbl,

    // IDWriteFontList
    GetFontCollection: fn (this: *Self, fontCollection: **IDWriteFontCollection) callconv(.Stdcall) c_long,
    GetFontCount: fn (this: *Self) callconv(.Stdcall) c_uint,
    GetFont: fn (this: *Self, index: c_uint, font: **IDWriteFont) callconv(.Stdcall) c_long,
};

pub const IID_IDWriteFontFamily = GUID_STRING("da20d8ef-812a-4c43-9802-62ec4abd7add");
pub const IDWriteFontFamily = Interface(IDWriteFontFamilyVtbl);
pub const IDWriteFontFamilyVtbl = extern struct {
    const Self = IDWriteFontFamily;

    // IDWriteFontList
    idwritefontlist: IDWriteFontListVtbl,

    // IDWriteFontFamily
    GetFamilyNames: fn (this: *Self, names: **IDWriteLocalizedStrings) callconv(.Stdcall) c_long,
    GetFirstMatchingFont: fn (this: *Self, weight: DWRITE_FONT_WEIGHT, stretch: DWRITE_FONT_STRETCH, style: DWRITE_FONT_STYLE, matchingFont: **IDWriteFont) callconv(.Stdcall) c_long,
    GetMatchingFonts: fn (this: *Self, weight: DWRITE_FONT_WEIGHT, stretch: DWRITE_FONT_STRETCH, style: DWRITE_FONT_STYLE, matchingFonts: **IDWriteFontList) callconv(.Stdcall) c_long,
};

pub const IID_IDWriteFont = GUID_STRING("acd16696-8c14-4f5d-877e-fe3fc1d32737");
pub const IDWriteFont = Interface(IDWriteFontVtbl);
pub const IDWriteFontVtbl = extern struct {
    const Self = IDWriteFont;

    // IUnknown
    iunknown: IUnknownVtbl,

    // IDWriteFont
    GetFontFamily: fn (this: *Self, fontFamily: **IDWriteFontFamily) callconv(.Stdcall) c_long,
    GetWeight: fn (this: *Self) callconv(.Stdcall) DWRITE_FONT_WEIGHT,
    GetStretch: fn (this: *Self) callconv(.Stdcall) DWRITE_FONT_STRETCH,
    GetStyle: fn (this: *Self) callconv(.Stdcall) DWRITE_FONT_STYLE,
    IsSymbolFont: fn (this: *Self) callconv(.Stdcall) c_int,
    GetFaceNames: fn (this: *Self, names: **IDWriteLocalizedStrings) callconv(.Stdcall) c_long,
    GetInformationalStrings: fn (this: *Self, informationalStringID: DWRITE_INFORMATIONAL_STRING_ID, informationalStrings: *?*IDWriteLocalizedStrings, exists: *c_int) callconv(.Stdcall) c_long,
    GetSimulations: fn (this: *Self) callconv(.Stdcall) DWRITE_FONT_SIMULATIONS,
    GetMetrics: fn (this: *Self, fontMetrics: *DWRITE_FONT_METRICS) callconv(.Stdcall) void,
    HasCharacter: fn (this: *Self, unicodeValue: c_uint, exists: *c_int) callconv(.Stdcall) c_long,
    CreateFontFace: fn (this: *Self, fontFace: **IDWriteFontFace) callconv(.Stdcall) c_long,
};

pub const IID_IDWriteTextFormat = GUID_STRING("9c906818-31d7-4fd3-a151-7c5e225db55a");
pub const IDWriteTextFormat = Interface(IDWriteTextFormatVtbl);
pub const IDWriteTextFormatVtbl = extern struct {
    const Self = IDWriteTextFormat;

    // IUnknown
    iunknown: IUnknownVtbl,

    // IDWriteTextFormat
    SetTextAlignment: fn (this: *Self, textAlignment: DWRITE_TEXT_ALIGNMENT) callconv(.Stdcall) c_long,
    SetParagraphAlignment: fn (this: *Self, paragraphAlignment: DWRITE_PARAGRAPH_ALIGNMENT) callconv(.Stdcall) c_long,
    SetWordWrapping: fn (this: *Self, wordWrapping: DWRITE_WORD_WRAPPING) callconv(.Stdcall) c_long,
    SetReadingDirection: fn (this: *Self, readingDirection: DWRITE_READING_DIRECTION) callconv(.Stdcall) c_long,
    SetFlowDirection: fn (this: *Self, flowDirection: DWRITE_FLOW_DIRECTION) callconv(.Stdcall) c_long,
    SetIncrementalTabStop: fn (this: *Self, incrementalTabStop: f32) callconv(.Stdcall) c_long,
    SetTrimming: fn (this: *Self, trimmingOptions: *const DWRITE_TRIMMING, trimmingSign: ?*IDWriteInlineObject) callconv(.Stdcall) c_long,
    SetLineSpacing: fn (this: *Self, lineSpacingMethod: DWRITE_LINE_SPACING_METHOD, lineSpacing: f32, baseline: f32) callconv(.Stdcall) c_long,
    GetTextAlignment: fn (this: *Self) callconv(.Stdcall) DWRITE_TEXT_ALIGNMENT,
    GetParagraphAlignment: fn (this: *Self) callconv(.Stdcall) DWRITE_PARAGRAPH_ALIGNMENT,
    GetWordWrapping: fn (this: *Self) callconv(.Stdcall) DWRITE_WORD_WRAPPING,
    GetReadingDirection: fn (this: *Self) callconv(.Stdcall) DWRITE_READING_DIRECTION,
    GetFlowDirection: fn (this: *Self) callconv(.Stdcall) DWRITE_FLOW_DIRECTION,
    GetIncrementalTabStop: fn (this: *Self) callconv(.Stdcall) f32,
    GetTrimming: fn (this: *Self, trimmingOptions: *DWRITE_TRIMMING, trimmingSign: **IDWriteInlineObject) callconv(.Stdcall) c_long,
    GetLineSpacing: fn (this: *Self, lineSpacingMethod: *DWRITE_LINE_SPACING_METHOD, lineSpacing: *f32, baseline: *f32) callconv(.Stdcall) c_long,
    GetFontCollection: fn (this: *Self, fontCollection: **IDWriteFontCollection) callconv(.Stdcall) c_long,
    GetFontFamilyNameLength: fn (this: *Self) callconv(.Stdcall) c_uint,
    GetFontFamilyName: fn (this: *Self, fontFamilyName: [*:0]u16, nameSize: c_uint) callconv(.Stdcall) c_long,
    GetFontWeight: fn (this: *Self) callconv(.Stdcall) DWRITE_FONT_WEIGHT,
    GetFontStyle: fn (this: *Self) callconv(.Stdcall) DWRITE_FONT_STYLE,
    GetFontStretch: fn (this: *Self) callconv(.Stdcall) DWRITE_FONT_STRETCH,
    GetFontSize: fn (this: *Self) callconv(.Stdcall) f32,
    GetLocaleNameLength: fn (this: *Self) callconv(.Stdcall) c_uint,
    GetLocaleName: fn (this: *Self, localeName: [*:0]u16, nameSize: c_uint) callconv(.Stdcall) c_long,
};

pub const IID_IDWriteTypography = GUID_STRING("55f1112b-1dc2-4b3c-9541-f46894ed85b6");
pub const IDWriteTypography = Interface(IDWriteTypographyVtbl);
pub const IDWriteTypographyVtbl = extern struct {
    const Self = IDWriteTypography;

    // IUnknown
    iunknown: IUnknownVtbl,

    // IDWriteTypography
    AddFontFeature: fn (this: *Self, fontFeature: DWRITE_FONT_FEATURE) callconv(.Stdcall) c_long,
    GetFontFeatureCount: fn (this: *Self) callconv(.Stdcall) c_uint,
    GetFontFeature: fn (this: *Self, fontFeatureIndex: c_uint, fontFeature: *DWRITE_FONT_FEATURE) callconv(.Stdcall) c_long,
};

pub const IID_IDWriteNumberSubstitution = GUID_STRING("14885CC9-BAB0-4f90-B6ED-5C366A2CD03D");
pub const IDWriteNumberSubstitution = Interface(IDWriteNumberSubstitutionVtbl);
pub const IDWriteNumberSubstitutionVtbl = extern struct {
    const Self = IDWriteNumberSubstitution;

    // IUnknown
    iunknown: IUnknownVtbl,

    // IDWriteNumberSubstitution
};

pub const IID_IDWriteTextAnalysisSource = GUID_STRING("688e1a58-5094-47c8-adc8-fbcea60ae92b");
pub const IDWriteTextAnalysisSource = Interface(IDWriteTextAnalysisSourceVtbl);
pub const IDWriteTextAnalysisSourceVtbl = extern struct {
    const Self = IDWriteTextAnalysisSource;

    // IUnknown
    iunknown: IUnknownVtbl,

    // IDWriteTextAnalysisSource
    GetTextAtPosition: fn (this: *Self, textPosition: c_uint, textString: *[*]const u16, textLength: *c_uint) callconv(.Stdcall) c_long,
    GetTextBeforePosition: fn (this: *Self, textPosition: c_uint, textString: *[*]const u16, textLength: *c_uint) callconv(.Stdcall) c_long,
    GetParagraphReadingDirection: fn (this: *Self) callconv(.Stdcall) DWRITE_READING_DIRECTION,
    GetLocaleName: fn (this: *Self, textPosition: c_uint, textLength: *c_uint, localeName: *[*:0]const u16) callconv(.Stdcall) c_long,
    GetNumberSubstitution: fn (this: *Self, textPosition: c_uint, textLength: *c_uint, numberSubstitution: **IDWriteNumberSubstitution) callconv(.Stdcall) c_long,
};

pub const IID_IDWriteTextAnalysisSink = GUID_STRING("5810cd44-0ca0-4701-b3fa-bec5182ae4f6");
pub const IDWriteTextAnalysisSink = Interface(IDWriteTextAnalysisSinkVtbl);
pub const IDWriteTextAnalysisSinkVtbl = extern struct {
    const Self = IDWriteTextAnalysisSink;

    // IUnknown
    iunknown: IUnknownVtbl,

    // IDWriteTextAnalysisSink
    SetScriptAnalysis: fn (this: *Self, textPosition: c_uint, textLength: c_uint, scriptAnalysis: *const DWRITE_SCRIPT_ANALYSIS) callconv(.Stdcall) c_long,
    SetLineBreakpoints: fn (this: *Self, textPosition: c_uint, textLength: c_uint, lineBreakpoints: [*]const DWRITE_LINE_BREAKPOINT) callconv(.Stdcall) c_long,
    SetBidiLevel: fn (this: *Self, textPosition: c_uint, textLength: c_uint, explicitLevel: u8, resolvedLevel: u8) callconv(.Stdcall) c_long,
    SetNumberSubstitution: fn (this: *Self, textPosition: c_uint, textLength: c_uint, numberSubstitution: *IDWriteNumberSubstitution) callconv(.Stdcall) c_long,
};

pub const IID_IDWriteTextAnalyzer = GUID_STRING("b7e6163e-7f46-43b4-84b3-e4e6249c365d");
pub const IDWriteTextAnalyzer = Interface(IDWriteTextAnalyzerVtbl);
pub const IDWriteTextAnalyzerVtbl = extern struct {
    const Self = IDWriteTextAnalyzer;

    // IUnknown
    iunknown: IUnknownVtbl,

    // IDWriteTextAnalyzer
    AnalyzeScript: fn (this: *Self, analysisSource: *IDWriteTextAnalysisSource, textPosition: c_uint, textLength: c_uint, analysisSink: *IDWriteTextAnalysisSink) callconv(.Stdcall) c_long,
    AnalyzeBidi: fn (this: *Self, analysisSource: *IDWriteTextAnalysisSource, textPosition: c_uint, textLength: c_uint, analysisSink: *IDWriteTextAnalysisSink) callconv(.Stdcall) c_long,
    AnalyzeNumberSubstitution: fn (this: *Self, analysisSource: *IDWriteTextAnalysisSource, textPosition: c_uint, textLength: c_uint, analysisSink: *IDWriteTextAnalysisSink) callconv(.Stdcall) c_long,
    AnalyzeLineBreakpoints: fn (this: *Self, analysisSource: *IDWriteTextAnalysisSource, textPosition: c_uint, textLength: c_uint, analysisSink: *IDWriteTextAnalysisSink) callconv(.Stdcall) c_long,
    GetGlyphs: fn (this: *Self, textString: [*]const u16, textLength: c_uint, fontFace: *IDWriteFontFace, isSideways: c_int, isRightToLeft: c_int, scriptAnalysis: *const DWRITE_SCRIPT_ANALYSIS, localeName: ?[*:0]const u16, numberSubstitution: ?*IDWriteNumberSubstitution, features: ?*[*]const DWRITE_TYPOGRAPHIC_FEATURES, featureRangeLengths: ?[*]const c_uint, featureRanges: c_uint, maxGlyphCount: c_uint, clusterMap: [*]c_ushort, textProps: [*]DWRITE_SHAPING_TEXT_PROPERTIES, glyphIndices: [*]c_ushort, glyphProps: [*]DWRITE_SHAPING_GLYPH_PROPERTIES, actualGlyphCount: *c_uint) callconv(.Stdcall) c_long,
    GetGlyphPlacements: fn (this: *Self, textString: [*]const u16, clusterMap: [*]const c_ushort, textProps: [*]DWRITE_SHAPING_TEXT_PROPERTIES, textLength: c_uint, glyphIndices: [*]const c_ushort, glyphProps: [*]const DWRITE_SHAPING_GLYPH_PROPERTIES, glyphCount: c_uint, fontFace: *IDWriteFontFace, fontEmSize: f32, isSideways: c_int, isRightToLeft: c_int, scriptAnalysis: *const DWRITE_SCRIPT_ANALYSIS, localeName: ?[*:0]const u16, features: ?*[*]const DWRITE_TYPOGRAPHIC_FEATURES, featureRangeLengths: ?[*]const c_uint, featureRanges: c_uint, glyphAdvances: [*]f32, glyphOffsets: [*]DWRITE_GLYPH_OFFSET) callconv(.Stdcall) c_long,
    GetGdiCompatibleGlyphPlacements: fn (this: *Self, textString: [*]const u16, clusterMap: [*]const c_ushort, textProps: [*]DWRITE_SHAPING_TEXT_PROPERTIES, textLength: c_uint, glyphIndices: [*]const c_ushort, glyphProps: [*]const DWRITE_SHAPING_GLYPH_PROPERTIES, glyphCount: c_uint, fontFace: *IDWriteFontFace, fontEmSize: f32, pixelsPerDip: f32, transform: ?*const DWRITE_MATRIX, useGdiNatural: c_int, isSideways: c_int, isRightToLeft: c_int, scriptAnalysis: *const DWRITE_SCRIPT_ANALYSIS, localeName: ?[*:0]const u16, features: ?*[*]const DWRITE_TYPOGRAPHIC_FEATURES, featureRangeLengths: ?[*]const c_uint, featureRanges: c_uint, glyphAdvances: [*]f32, glyphOffsets: [*]DWRITE_GLYPH_OFFSET) callconv(.Stdcall) c_long,
};

pub const IID_IDWriteInlineObject = GUID_STRING("8339FDE3-106F-47ab-8373-1C6295EB10B3");
pub const IDWriteInlineObject = Interface(IDWriteInlineObjectVtbl);
pub const IDWriteInlineObjectVtbl = extern struct {
    const Self = IDWriteInlineObject;

    // IUnknown
    iunknown: IUnknownVtbl,

    // IDWriteInlineObject
    Draw: fn (this: *Self, clientDrawingContext: ?*c_void, renderer: *IDWriteTextRenderer, originX: f32, originY: f32, isSideways: c_int, isRightToLeft: c_int, clientDrawingEffect: ?*IUnknown) callconv(.Stdcall) c_long,
    GetMetrics: fn (this: *Self, metrics: *DWRITE_INLINE_OBJECT_METRICS) callconv(.Stdcall) c_long,
    GetOverhangMetrics: fn (this: *Self, overhangs: *DWRITE_OVERHANG_METRICS) callconv(.Stdcall) c_long,
    GetBreakConditions: fn (this: *Self, breakConditionBefore: *DWRITE_BREAK_CONDITION, breakConditionAfter: *DWRITE_BREAK_CONDITION) callconv(.Stdcall) c_long,
};

pub const IID_IDWritePixelSnapping = GUID_STRING("eaf3a2da-ecf4-4d24-b644-b34f6842024b");
pub const IDWritePixelSnapping = Interface(IDWritePixelSnappingVtbl);
pub const IDWritePixelSnappingVtbl = extern struct {
    const Self = IDWritePixelSnapping;

    // IUnknown
    iunknown: IUnknownVtbl,

    // IDWritePixelSnapping
    IsPixelSnappingDisabled: fn (this: *Self, clientDrawingContext: ?*c_void, isDisabled: *c_int) callconv(.Stdcall) c_long,
    GetCurrentTransform: fn (this: *Self, clientDrawingContext: ?*c_void, transform: *DWRITE_MATRIX) callconv(.Stdcall) c_long,
    GetPixelsPerDip: fn (this: *Self, clientDrawingContext: ?*c_void, pixelsPerDip: *f32) callconv(.Stdcall) c_long,
};

pub const IID_IDWriteTextRenderer = GUID_STRING("ef8a8135-5cc6-45fe-8825-c5a0724eb819");
pub const IDWriteTextRenderer = Interface(IDWriteTextRendererVtbl);
pub const IDWriteTextRendererVtbl = extern struct {
    const Self = IDWriteTextRenderer;

    // IDWritePixelSnapping
    idwritepixelsnapping: IDWritePixelSnappingVtbl,

    // IDWriteTextRenderer
    DrawGlyphRun: fn (this: *Self, clientDrawingContext: ?*c_void, baselineOriginX: f32, baselineOriginY: f32, measuringMode: DWRITE_MEASURING_MODE, glyphRun: *const DWRITE_GLYPH_RUN, glyphRunDescription: *const DWRITE_GLYPH_RUN_DESCRIPTION, clientDrawingEffect: ?*IUnknown) callconv(.Stdcall) c_long,
    DrawUnderline: fn (this: *Self, clientDrawingContext: ?*c_void, baselineOriginX: f32, baselineOriginY: f32, underline: *const DWRITE_UNDERLINE, clientDrawingEffect: ?*IUnknown) callconv(.Stdcall) c_long,
    DrawStrikethrough: fn (this: *Self, clientDrawingContext: ?*c_void, baselineOriginX: f32, baselineOriginY: f32, strikethrough: *const DWRITE_STRIKETHROUGH, clientDrawingEffect: ?*IUnknown) callconv(.Stdcall) c_long,
    DrawInlineObject: fn (this: *Self, clientDrawingContext: ?*c_void, originX: f32, originY: f32, inlineObject: *IDWriteInlineObject, isSideways: c_int, isRightToLeft: c_int, clientDrawingEffect: ?*IUnknown) callconv(.Stdcall) c_long,
};

pub const IID_IDWriteTextLayout = GUID_STRING("53737037-6d14-410b-9bfe-0b182bb70961");
pub const IDWriteTextLayout = Interface(IDWriteTextLayoutVtbl);
pub const IDWriteTextLayoutVtbl = extern struct {
    const Self = IDWriteTextLayout;

    // IDWriteTextFormat
    idwritetextformat: IDWriteTextFormatVtbl,

    // IDWriteTextLayout
    SetMaxWidth: fn (this: *Self, maxWidth: f32) callconv(.Stdcall) c_long,
    SetMaxHeight: fn (this: *Self, maxHeight: f32) callconv(.Stdcall) c_long,
    SetFontCollection: fn (this: *Self, fontCollection: *IDWriteFontCollection, textRange: DWRITE_TEXT_RANGE) callconv(.Stdcall) c_long,
    SetFontFamilyName: fn (this: *Self, fontFamilyName: [*:0]const u16, textRange: DWRITE_TEXT_RANGE) callconv(.Stdcall) c_long,
    SetFontWeight: fn (this: *Self, fontWeight: DWRITE_FONT_WEIGHT, textRange: DWRITE_TEXT_RANGE) callconv(.Stdcall) c_long,
    SetFontStyle: fn (this: *Self, fontStyle: DWRITE_FONT_STYLE, textRange: DWRITE_TEXT_RANGE) callconv(.Stdcall) c_long,
    SetFontStretch: fn (this: *Self, fontStretch: DWRITE_FONT_STRETCH, textRange: DWRITE_TEXT_RANGE) callconv(.Stdcall) c_long,
    SetFontSize: fn (this: *Self, fontSize: f32, textRange: DWRITE_TEXT_RANGE) callconv(.Stdcall) c_long,
    SetUnderline: fn (this: *Self, hasUnderline: c_int, textRange: DWRITE_TEXT_RANGE) callconv(.Stdcall) c_long,
    SetStrikethrough: fn (this: *Self, hasStrikethrough: c_int, textRange: DWRITE_TEXT_RANGE) callconv(.Stdcall) c_long,
    SetDrawingEffect: fn (this: *Self, drawingEffect: *IUnknown, textRange: DWRITE_TEXT_RANGE) callconv(.Stdcall) c_long,
    SetInlineObject: fn (this: *Self, inlineObject: *IDWriteInlineObject, textRange: DWRITE_TEXT_RANGE) callconv(.Stdcall) c_long,
    SetTypography: fn (this: *Self, typography: *IDWriteTypography, textRange: DWRITE_TEXT_RANGE) callconv(.Stdcall) c_long,
    SetLocaleName: fn (this: *Self, localeName: [*:0]const u16, textRange: DWRITE_TEXT_RANGE) callconv(.Stdcall) c_long,
    GetMaxWidth: fn (this: *Self) callconv(.Stdcall) f32,
    GetMaxHeight: fn (this: *Self) callconv(.Stdcall) f32,
    GetFontCollection: fn (this: *Self, currentPosition: c_uint, fontCollection: **IDWriteFontCollection, textRange: ?*DWRITE_TEXT_RANGE) callconv(.Stdcall) c_long,
    GetFontFamilyNameLength: fn (this: *Self, currentPosition: c_uint, nameLength: *c_uint, textRange: ?*DWRITE_TEXT_RANGE) callconv(.Stdcall) c_long,
    GetFontFamilyName: fn (this: *Self, currentPosition: c_uint, fontFamilyName: [*:0]u16, nameSize: c_uint, textRange: ?*DWRITE_TEXT_RANGE) callconv(.Stdcall) c_long,
    GetFontWeight: fn (this: *Self, currentPosition: c_uint, fontWeight: *DWRITE_FONT_WEIGHT, textRange: ?*DWRITE_TEXT_RANGE) callconv(.Stdcall) c_long,
    GetFontStyle: fn (this: *Self, currentPosition: c_uint, fontStyle: *DWRITE_FONT_STYLE, textRange: ?*DWRITE_TEXT_RANGE) callconv(.Stdcall) c_long,
    GetFontStretch: fn (this: *Self, currentPosition: c_uint, fontStretch: *DWRITE_FONT_STRETCH, textRange: ?*DWRITE_TEXT_RANGE) callconv(.Stdcall) c_long,
    GetFontSize: fn (this: *Self, currentPosition: c_uint, fontSize: *f32, textRange: ?*DWRITE_TEXT_RANGE) callconv(.Stdcall) c_long,
    GetUnderline: fn (this: *Self, currentPosition: c_uint, hasUnderline: *c_int, textRange: ?*DWRITE_TEXT_RANGE) callconv(.Stdcall) c_long,
    GetStrikethrough: fn (this: *Self, currentPosition: c_uint, hasStrikethrough: *c_int, textRange: ?*DWRITE_TEXT_RANGE) callconv(.Stdcall) c_long,
    GetDrawingEffect: fn (this: *Self, currentPosition: c_uint, drawingEffect: **IUnknown, textRange: ?*DWRITE_TEXT_RANGE) callconv(.Stdcall) c_long,
    GetInlineObject: fn (this: *Self, currentPosition: c_uint, inlineObject: **IDWriteInlineObject, textRange: ?*DWRITE_TEXT_RANGE) callconv(.Stdcall) c_long,
    GetTypography: fn (this: *Self, currentPosition: c_uint, typography: **IDWriteTypography, textRange: ?*DWRITE_TEXT_RANGE) callconv(.Stdcall) c_long,
    GetLocaleNameLength: fn (this: *Self, currentPosition: c_uint, nameLength: *c_uint, textRange: ?*DWRITE_TEXT_RANGE) callconv(.Stdcall) c_long,
    GetLocaleName: fn (this: *Self, currentPosition: c_uint, localeName: [*:0]u16, nameSize: c_uint, textRange: ?*DWRITE_TEXT_RANGE) callconv(.Stdcall) c_long,
    Draw: fn (this: *Self, clientDrawingContext: ?*c_void, renderer: *IDWriteTextRenderer, originX: f32, originY: f32) callconv(.Stdcall) c_long,
    GetLineMetrics: fn (this: *Self, lineMetrics: [*]DWRITE_LINE_METRICS, maxLineCount: c_uint, actualLineCount: *c_uint) callconv(.Stdcall) c_long,
    GetMetrics: fn (this: *Self, textMetrics: *DWRITE_TEXT_METRICS) callconv(.Stdcall) c_long,
    GetOverhangMetrics: fn (this: *Self, overhangs: *DWRITE_OVERHANG_METRICS) callconv(.Stdcall) c_long,
    GetClusterMetrics: fn (this: *Self, clusterMetrics: [*]DWRITE_CLUSTER_METRICS, maxClusterCount: c_uint, actualClusterCount: *c_uint) callconv(.Stdcall) c_long,
    DetermineMinWidth: fn (this: *Self, minWidth: *f32) callconv(.Stdcall) c_long,
    HitTestPoint: fn (this: *Self, pointX: f32, pointY: f32, isTrailingHit: *c_int, isInside: *c_int, hitTestMetrics: *DWRITE_HIT_TEST_METRICS) callconv(.Stdcall) c_long,
    HitTestTextPosition: fn (this: *Self, textPosition: c_uint, isTrailingHit: c_int, pointX: *f32, pointY: *f32, hitTestMetrics: *DWRITE_HIT_TEST_METRICS) callconv(.Stdcall) c_long,
    HitTestTextRange: fn (this: *Self, textPosition: c_uint, textLength: c_uint, originX: f32, originY: f32, hitTestMetrics: ?[*]DWRITE_HIT_TEST_METRICS, maxHitTestMetricsCount: c_uint, actualHitTestMetricsCount: *c_uint) callconv(.Stdcall) c_long,
};

pub const IID_IDWriteBitmapRenderTarget = GUID_STRING("5e5a32a3-8dff-4773-9ff6-0696eab77267");
pub const IDWriteBitmapRenderTarget = Interface(IDWriteBitmapRenderTargetVtbl);
pub const IDWriteBitmapRenderTargetVtbl = extern struct {
    const Self = IDWriteBitmapRenderTarget;

    // IUnknown
    iunknown: IUnknownVtbl,

    // IDWriteBitmapRenderTarget
    DrawGlyphRun: fn (this: *Self, baselineOriginX: f32, baselineOriginY: f32, measuringMode: DWRITE_MEASURING_MODE, glyphRun: *const DWRITE_GLYPH_RUN, renderingParams: *IDWriteRenderingParams, textColor: c_ulong, blackBoxRect: ?*RECT) callconv(.Stdcall) c_long,
    GetMemoryDC: fn (this: *Self) callconv(.Stdcall) ?*c_void,
    GetPixelsPerDip: fn (this: *Self) callconv(.Stdcall) f32,
    SetPixelsPerDip: fn (this: *Self, pixelsPerDip: f32) callconv(.Stdcall) c_long,
    GetCurrentTransform: fn (this: *Self, transform: *DWRITE_MATRIX) callconv(.Stdcall) c_long,
    SetCurrentTransform: fn (this: *Self, transform: *const DWRITE_MATRIX) callconv(.Stdcall) c_long,
    GetSize: fn (this: *Self, size: *SIZE) callconv(.Stdcall) c_long,
    Resize: fn (this: *Self, width: c_uint, height: c_uint) callconv(.Stdcall) c_long,
};

pub const IID_IDWriteGdiInterop = GUID_STRING("1edd9491-9853-4299-898f-6432983b6f3a");
pub const IDWriteGdiInterop = Interface(IDWriteGdiInteropVtbl);
pub const IDWriteGdiInteropVtbl = extern struct {
    const Self = IDWriteGdiInterop;

    // IUnknown
    iunknown: IUnknownVtbl,

    // IDWriteGdiInterop
    CreateFontFromLOGFONT: fn (this: *Self, logFont: *const LOGFONTW, font: **IDWriteFont) callconv(.Stdcall) c_long,
    ConvertFontToLOGFONT: fn (this: *Self, font: *IDWriteFont, logFont: *LOGFONTW, isSystemFont: *c_int) callconv(.Stdcall) c_long,
    ConvertFontFaceToLOGFONT: fn (this: *Self, font: *IDWriteFontFace, logFont: *LOGFONTW) callconv(.Stdcall) c_long,
    CreateFontFaceFromHdc: fn (this: *Self, hdc: *c_void, fontFace: **IDWriteFontFace) callconv(.Stdcall) c_long,
    CreateBitmapRenderTarget: fn (this: *Self, hdc: ?*c_void, width: c_uint, height: c_uint, renderTarget: **IDWriteBitmapRenderTarget) callconv(.Stdcall) c_long,
};

pub const IID_IDWriteGlyphRunAnalysis = GUID_STRING("7d97dbf7-e085-42d4-81e3-6a883bded118");
pub const IDWriteGlyphRunAnalysis = Interface(IDWriteGlyphRunAnalysisVtbl);
pub const IDWriteGlyphRunAnalysisVtbl = extern struct {
    const Self = IDWriteGlyphRunAnalysis;

    // IUnknown
    iunknown: IUnknownVtbl,

    // IDWriteGlyphRunAnalysis
    GetAlphaTextureBounds: fn (this: *Self, textureType: DWRITE_TEXTURE_TYPE, textureBounds: *RECT) callconv(.Stdcall) c_long,
    CreateAlphaTexture: fn (this: *Self, textureType: DWRITE_TEXTURE_TYPE, textureBounds: *const RECT, alphaValues: [*]u8, bufferSize: c_uint) callconv(.Stdcall) c_long,
    GetAlphaBlendParams: fn (this: *Self, renderingParams: *IDWriteRenderingParams, blendGamma: *f32, blendEnhancedContrast: *f32, blendClearTypeLevel: *f32) callconv(.Stdcall) c_long,
};

pub extern "dwrite" fn DWriteCreateFactory(factoryType: DWRITE_FACTORY_TYPE, iid: *const GUID, factory: **c_void) callconv(.C) c_long;

pub fn DWRITE_MAKE_OPENTYPE_TAG(a: u8, b: u8, c: u8, d: u8) u32 {
    return (@as(u32, d) << 24) | (@as(u32, c) << 16) | (@as(u32, b) << 8) | a;
}
