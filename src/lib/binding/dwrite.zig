usingnamespace @import("structs.zig");
usingnamespace @import("functions.zig");

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
    DWRITE_INFORMATIONAL_STRING_PREFERRED_FAMILY_NAMES = DWRITE_INFORMATIONAL_STRING_TYPOGRAPHIC_FAMILY_NAMES,
    DWRITE_INFORMATIONAL_STRING_PREFERRED_SUBFAMILY_NAMES = DWRITE_INFORMATIONAL_STRING_TYPOGRAPHIC_SUBFAMILY_NAMES,
    DWRITE_INFORMATIONAL_STRING_WWS_FAMILY_NAME = DWRITE_INFORMATIONAL_STRING_WEIGHT_STRETCH_STYLE_FAMILY_NAME,
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
    DWRITE_RENDERING_MODE_CLEARTYPE_GDI_CLASSIC = DWRITE_RENDERING_MODE_GDI_CLASSIC,
    DWRITE_RENDERING_MODE_CLEARTYPE_GDI_NATURAL = DWRITE_RENDERING_MODE_GDI_NATURAL,
    DWRITE_RENDERING_MODE_CLEARTYPE_NATURAL = DWRITE_RENDERING_MODE_NATURAL,
    DWRITE_RENDERING_MODE_CLEARTYPE_NATURAL_SYMMETRIC = DWRITE_RENDERING_MODE_NATURAL_SYMMETRIC,
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

    // IUnknown
    QueryInterface: fn (this: *Self, riid: *const GUID, ppvObject: **c_void) callconv(.Stdcall) c_long,
    AddRef: fn (this: *Self) callconv(.Stdcall) c_ulong,
    Release: fn (this: *Self) callconv(.Stdcall) c_ulong,

    // IDWriteFactory
    GetSystemFontCollection: fn (this: *Self, fontCollection: **IDWriteFontCollection, checkForUpdates: c_int) callconv(.Stdcall) c_long,
    CreateCustomFontCollection: fn (this: *Self, collectionLoader: *IDWriteFontCollectionLoader, collectionKey: [*]const c_void, collectionKeySize: c_uint, fontCollection: **IDWriteFontCollection) callconv(.Stdcall) c_long,
    RegisterFontCollectionLoader: fn (this: *Self, fontCollectionLoader: *IDWriteFontCollectionLoader) callconv(.Stdcall) c_long,
    UnregisterFontCollectionLoader: fn (this: *Self, fontCollectionLoader: *IDWriteFontCollectionLoader) callconv(.Stdcall) c_long,
    CreateFontFileReference: fn (this: *Self, filePath: ?[*:0]const u16, lastWriteTime: ?*const FILETIME, fontFile: **IDWriteFontFile) callconv(.Stdcall) c_long,
    CreateCustomFontFileReference: fn (this: *Self, fontFileReferenceKey: [*]const c_void, fontFileReferenceKeySize: c_uint, fontFileLoader: *IDWriteFontFileLoader, fontFile: **IDWriteFontFile) callconv(.Stdcall) c_long,
    CreateFontFace: fn (this: *Self, fontFaceType: DWRITE_FONT_FACE_TYPE, numberOfFiles: c_uint, fontFiles: [*]const *IDWriteFontFile, faceIndex: c_uint, fontFaceSimulationFlags: DWRITE_FONT_SIMULATIONS, fontFace: **IDWriteFontFace) callconv(.Stdcall) c_long,
    CreateRenderingParams: fn (this: *Self, renderingParams: **IDWriteRenderingParams) callconv(.Stdcall) c_long,
    CreateMonitorRenderingParams: fn (this: *Self, monitor: *c_void, renderingParams: **IDWriteRenderingParams) callconv(.Stdcall) c_long,
    CreateCustomRenderingParams: fn (this: *Self, gamma: f32, enhancedContrast: f32, clearTypeLevel: f32, pixelGeometry: DWRITE_PIXEL_GEOMETRY, renderingMode: DWRITE_RENDERING_MODE, renderingParams: **IDWriteRenderingParams) callconv(.Stdcall) c_long,
    RegisterFontFileLoader: fn (this: *Self, fontFileLoader: *IDWriteFontFileLoader) callconv(.Stdcall) c_long,
    UnregisterFontFileLoader: fn (this: *Self, fontFileLoader: *IDWriteFontFileLoader) callconv(.Stdcall) c_long,
    CreateTextFormat: fn (this: *Self, fontFamilyName: [*:0]const c_ushort, fontCollection: ?*IDWriteFontCollection, fontWeight: DWRITE_FONT_WEIGHT, fontStyle: DWRITE_FONT_STYLE, fontStretch: DWRITE_FONT_STRETCH, fontSize: f32, localeName: [*:0]const c_ushort, textFormat: **IDWriteTextFormat) callconv(.Stdcall) c_long,
    CreateTypography: fn (this: *Self, typography: **IDWriteTypography) callconv(.Stdcall) c_long,
    GetGdiInterop: fn (this: *Self, gdiInterop: **IDWriteGdiInterop) callconv(.Stdcall) c_long,
    CreateTextLayout: fn (this: *Self, string: [*]const c_ushort, stringLength: c_uint, textFormat: *IDWriteTextFormat, maxWidth: f32, maxHeight: f32, textLayout: **IDWriteTextLayout) callconv(.Stdcall) c_long,
    CreateGdiCompatibleTextLayout: fn (this: *Self, string: [*]const c_ushort, stringLength: c_uint, textFormat: *IDWriteTextFormat, layoutWidth: f32, layoutHeight: f32, pixelsPerDip: f32, transform: *const DWRITE_MATRIX, useGdiNatural: c_int, textLayout: **IDWriteTextLayout) callconv(.Stdcall) c_long,
    CreateEllipsisTrimmingSign: fn (this: *Self, textFormat: *IDWriteTextFormat, trimmingSign: **IDWriteInlineObject) callconv(.Stdcall) c_long,
    CreateTextAnalyzer: fn (this: *Self, textAnalyzer: **IDWriteTextAnalyzer) callconv(.Stdcall) c_long,
    CreateNumberSubstitution: fn (this: *Self, substitutionMethod: DWRITE_NUMBER_SUBSTITUTION_METHOD, localeName: [*:0]const c_ushort, ignoreUserOverride: c_int, numberSubstitution: **IDWriteNumberSubstitution) callconv(.Stdcall) c_long,
    CreateGlyphRunAnalysis: fn (this: *Self, glyphRun: *const DWRITE_GLYPH_RUN, pixelsPerDip: f32, transform: *const DWRITE_MATRIX, renderingMode: DWRITE_RENDERING_MODE, measuringMode: DWRITE_MEASURING_MODE, baselineOriginX: f32, baselineOriginY: f32, glyphRunAnalysis: **IDWriteGlyphRunAnalysis) callconv(.Stdcall) c_long,
};

pub const IID_IDWriteFontFileLoader = GUID_STRING("727cad4e-d6af-4c9e-8a08-d695b11caa49");
pub const IDWriteFontFileLoader = Interface(IDWriteFontFileLoaderVtbl);
pub const IDWriteFontFileLoaderVtbl = extern struct {
    const Self = IDWriteFontFileLoader;

    // IUnknown
    QueryInterface: fn (this: *Self, riid: *const GUID, ppvObject: **c_void) callconv(.Stdcall) c_long,
    AddRef: fn (this: *Self) callconv(.Stdcall) c_ulong,
    Release: fn (this: *Self) callconv(.Stdcall) c_ulong,

    // IDWriteFontFileLoader
    CreateStreamFromKey: fn (this: *Self, fontFileReferenceKey: [*]const c_void, fontFileReferenceKeySize: c_uint, fontFileStream: **IDWriteFontFileStream) callconv(.Stdcall) c_ulong,
};

pub const IID_IDWriteLocalFontFileLoader = GUID_STRING("b2d9f3ec-c9fe-4a11-a2ec-d86208f7c0a2");
pub const IDWriteLocalFontFileLoader = Interface(IDWriteLocalFontFileLoaderVtbl);
pub const IDWriteLocalFontFileLoaderVtbl = extern struct {
    const Self = IDWriteLocalFontFileLoader;

    // IUnknown
    QueryInterface: fn (this: *Self, riid: *const GUID, ppvObject: **c_void) callconv(.Stdcall) c_long,
    AddRef: fn (this: *Self) callconv(.Stdcall) c_ulong,
    Release: fn (this: *Self) callconv(.Stdcall) c_ulong,

    // IDWriteFontFileLoader
    CreateStreamFromKey: fn (this: *Self, fontFileReferenceKey: [*]const c_void, fontFileReferenceKeySize: c_uint, fontFileStream: **IDWriteFontFileStream) callconv(.Stdcall) c_ulong,

    // IDWriteLocalFontFileLoader
    GetFilePathLengthFromKey: fn (this: *Self, fontFileReferenceKey: [*]const c_void, fontFileReferenceKeySize: c_uint, filePathLength: *c_uint) callconv(.Stdcall) c_ulong,
    GetFilePathFromKey: fn (this: *Self, fontFileReferenceKey: [*]const c_void, fontFileReferenceKeySize: c_uint, filePath: [*:0]c_ushort, filePathSize: c_uint) callconv(.Stdcall) c_ulong,
    GetLastWriteTimeFromKey: fn (this: *Self, fontFileReferenceKey: [*]const c_void, fontFileReferenceKeySize: c_uint, lastWriteTime: *FILETIME) callconv(.Stdcall) c_ulong,
};

pub const IID_IDWriteFontFileStream = GUID_STRING("6d4865fe-0ab8-4d91-8f62-5dd6be34a3e0");
pub const IDWriteFontFileStream = Interface(IDWriteFontFileStreamVtbl);
pub const IDWriteFontFileStreamVtbl = extern struct {
    const Self = IDWriteFontFileStream;

    // IUnknown
    QueryInterface: fn (this: *Self, riid: *const GUID, ppvObject: **c_void) callconv(.Stdcall) c_long,
    AddRef: fn (this: *Self) callconv(.Stdcall) c_ulong,
    Release: fn (this: *Self) callconv(.Stdcall) c_ulong,

    // IDWriteFontFileStream
    ReadFileFragment: fn (this: *Self, fragmentStart: *[*]const c_void, fileOffset: c_ulonglong, fragmentSize: c_ulonglong, fragmentContext: **c_void) callconv(.Stdcall) c_ulong,
    ReleaseFileFragment: fn (this: *Self, fragmentContext: *c_void) callconv(.Stdcall) void,
    GetFileSize: fn (this: *Self, fileSize: *c_ulonglong) callconv(.Stdcall) c_long,
    GetLastWriteTime: fn (this: *Self, lastWriteTime: *c_ulonglong) callconv(.Stdcall) c_long,
};

pub const IID_IDWriteFontFile = GUID_STRING("739d886a-cef5-47dc-8769-1a8b41bebbb0");
pub const IDWriteFontFile = Interface(IDWriteFontFileVtbl);
pub const IDWriteFontFileVtbl = extern struct {
    const Self = IDWriteFontFile;

    // IUnknown
    QueryInterface: fn (this: *Self, riid: *const GUID, ppvObject: **c_void) callconv(.Stdcall) c_long,
    AddRef: fn (this: *Self) callconv(.Stdcall) c_ulong,
    Release: fn (this: *Self) callconv(.Stdcall) c_ulong,

    // IDWriteFontFile
    GetReferenceKey: fn (this: *Self, fontFileReferenceKey: *[*]const c_void, fontFileReferenceKeySize: *c_uint) callconv(.Stdcall) c_ulong,
    GetLoader: fn (this: *Self, fontFileLoader: **IDWriteFontFileLoader) callconv(.Stdcall) c_ulong,
    Analyze: fn (this: *Self, isSupportedFontType: *c_int, fontFileType: *DWRITE_FONT_FILE_TYPE, fontFaceType: ?*DWRITE_FONT_FACE_TYPE, numberOfFaces: *c_uint) callconv(.Stdcall) c_ulong,
};

pub const IID_IDWriteRenderingParams = GUID_STRING("2f0da53a-2add-47cd-82ee-d9ec34688e75");
pub const IDWriteRenderingParams = Interface(IDWriteRenderingParamsVtbl);
pub const IDWriteRenderingParamsVtbl = extern struct {
    const Self = IDWriteRenderingParams;

    // IUnknown
    QueryInterface: fn (this: *Self, riid: *const GUID, ppvObject: **c_void) callconv(.Stdcall) c_long,
    AddRef: fn (this: *Self) callconv(.Stdcall) c_ulong,
    Release: fn (this: *Self) callconv(.Stdcall) c_ulong,

    // IDWriteRenderingParams
    GetGamma: fn (this: *Self) callconv(.Stdcall) f32,
    GetEnhancedContrast: fn (this: *Self) callconv(.Stdcall) f32,
    GetClearTypeLevel: fn (this: *Self) callconv(.Stdcall) f32,
    GetPixelGeometry: fn (this: *Self) callconv(.Stdcall) DWRITE_PIXEL_GEOMETRY,
    GetRenderingMode: fn (this: *Self) callconv(.Stdcall) DWRITE_RENDERING_MODE,
};

pub const IDWriteGeometrySink = ID2D1SimplifiedGeometrySink;

pub const IID_IDWriteFontFace = GUID_STRING("5f49804d-7024-4d43-bfa9-d25984f53849");
pub const IDWriteFontFace = Interface(IDWriteFontFaceVtbl);
pub const IDWriteFontFaceVtbl = extern struct {
    const Self = IDWriteFontFace;

    // IUnknown
    QueryInterface: fn (this: *Self, riid: *const GUID, ppvObject: **c_void) callconv(.Stdcall) c_long,
    AddRef: fn (this: *Self) callconv(.Stdcall) c_ulong,
    Release: fn (this: *Self) callconv(.Stdcall) c_ulong,

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
    TryGetFontTable: fn (this: *Self, openTypeTableTag: c_uint, tableData: *[*]c_void, tableSize: *c_uint, tableContext: **c_void, exists: *c_int) callconv(.Stdcall) c_long,
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
    QueryInterface: fn (this: *Self, riid: *const GUID, ppvObject: **c_void) callconv(.Stdcall) c_long,
    AddRef: fn (this: *Self) callconv(.Stdcall) c_ulong,
    Release: fn (this: *Self) callconv(.Stdcall) c_ulong,

    // IDWriteFontCollectionLoader
    CreateEnumeratorFromKey: fn (this: *Self, factory: *IDWriteFactory, collectionKey: [*]const c_void, collectionKeySize: c_uint, fontFileEnumerator: **IDWriteFontFileEnumerator) callconv(.Stdcall) c_long,
};

pub const IID_IDWriteFontFileEnumerator = GUID_STRING("72755049-5ff7-435d-8348-4be97cfa6c7c");
pub const IDWriteFontFileEnumerator = Interface(IDWriteFontFileEnumeratorVtbl);
pub const IDWriteFontFileEnumeratorVtbl = extern struct {
    const Self = IDWriteFontFileEnumerator;

    // IUnknown
    QueryInterface: fn (this: *Self, riid: *const GUID, ppvObject: **c_void) callconv(.Stdcall) c_long,
    AddRef: fn (this: *Self) callconv(.Stdcall) c_ulong,
    Release: fn (this: *Self) callconv(.Stdcall) c_ulong,

    // IDWriteFontFileEnumerator
    MoveNext: fn (this: *Self, hasCurrentFile: *c_int) callconv(.Stdcall) c_long,
    GetCurrentFontFile: fn (this: *Self, fontFile: **IDWriteFontFile) callconv(.Stdcall) c_long,
};

pub const IID_IDWriteLocalizedStrings = GUID_STRING("08256209-099a-4b34-b86d-c22b110e7771");
pub const IDWriteLocalizedStrings = Interface(IDWriteLocalizedStringsVtbl);
pub const IDWriteLocalizedStringsVtbl = extern struct {
    const Self = IDWriteLocalizedStrings;

    // IUnknown
    QueryInterface: fn (this: *Self, riid: *const GUID, ppvObject: **c_void) callconv(.Stdcall) c_long,
    AddRef: fn (this: *Self) callconv(.Stdcall) c_ulong,
    Release: fn (this: *Self) callconv(.Stdcall) c_ulong,

    // IDWriteLocalizedStrings
    GetCount: fn (this: *Self) callconv(.Stdcall) c_uint,
    FindLocaleName: fn (this: *Self, localeName: [*:0]const c_ushort, index: *c_uint, exists: *c_int) callconv(.Stdcall) c_long,
    GetLocaleNameLength: fn (this: *Self, index: c_uint, length: *c_uint) callconv(.Stdcall) c_long,
    GetLocaleName: fn (this: *Self, index: c_uint, localeName: [*:0]c_ushort, size: c_uint) callconv(.Stdcall) c_long,
    GetStringLength: fn (this: *Self, index: c_uint, length: *c_uint) callconv(.Stdcall) c_long,
    GetString: fn (this: *Self, index: c_uint, stringBuffer: [*:0]c_ushort, size: c_uint) callconv(.Stdcall) c_long,
};

pub const IID_IDWriteFontCollection = GUID_STRING("a84cee02-3eea-4eee-a827-87c1a02a0fcc");
pub const IDWriteFontCollection = Interface(IDWriteFontCollectionVtbl);
pub const IDWriteFontCollectionVtbl = extern struct {
    const Self = IDWriteFontCollection;

    // IUnknown
    QueryInterface: fn (this: *Self, riid: *const GUID, ppvObject: **c_void) callconv(.Stdcall) c_long,
    AddRef: fn (this: *Self) callconv(.Stdcall) c_ulong,
    Release: fn (this: *Self) callconv(.Stdcall) c_ulong,

    // IDWriteFontCollection
    GetFontFamilyCount: fn (this: *Self) callconv(.Stdcall) c_uint,
    GetFontFamily: fn (this: *Self, index: c_uint, fontFamily: **IDWriteFontFamily) callconv(.Stdcall) c_long,
    FindFamilyName: fn (this: *Self, familyName: [*:0]const c_ushort, index: *c_uint, exists: *c_int) callconv(.Stdcall) c_long,
    GetFontFromFontFace: fn (this: *Self, fontFace: *IDWriteFontFace, font: **IDWriteFont) callconv(.Stdcall) c_long,
};

pub const IID_IDWriteFontList = GUID_STRING("1a0d8438-1d97-4ec1-aef9-a2fb86ed6acb");
pub const IDWriteFontList = Interface(IDWriteFontListVtbl);
pub const IDWriteFontListVtbl = extern struct {
    const Self = IDWriteFontList;

    // IUnknown
    QueryInterface: fn (this: *Self, riid: *const GUID, ppvObject: **c_void) callconv(.Stdcall) c_long,
    AddRef: fn (this: *Self) callconv(.Stdcall) c_ulong,
    Release: fn (this: *Self) callconv(.Stdcall) c_ulong,

    // IDWriteFontList
    GetFontCollection: fn (this: *Self, fontCollection: **IDWriteFontCollection) callconv(.Stdcall) c_long,
    GetFontCount: fn (this: *Self) callconv(.Stdcall) c_uint,
    GetFont: fn (this: *Self, index: c_uint, font: **IDWriteFont) callconv(.Stdcall) c_long,
};

pub const IID_IDWriteFontFamily = GUID_STRING("da20d8ef-812a-4c43-9802-62ec4abd7add");
pub const IDWriteFontFamily = Interface(IDWriteFontFamilyVtbl);
pub const IDWriteFontFamilyVtbl = extern struct {
    const Self = IDWriteFontFamily;

    // IUnknown
    QueryInterface: fn (this: *Self, riid: *const GUID, ppvObject: **c_void) callconv(.Stdcall) c_long,
    AddRef: fn (this: *Self) callconv(.Stdcall) c_ulong,
    Release: fn (this: *Self) callconv(.Stdcall) c_ulong,

    // IDWriteFontList
    GetFontCollection: fn (this: *Self, fontCollection: **IDWriteFontCollection) callconv(.Stdcall) c_long,
    GetFontCount: fn (this: *Self) callconv(.Stdcall) c_uint,
    GetFont: fn (this: *Self, index: c_uint, font: **IDWriteFont) callconv(.Stdcall) c_long,

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
    QueryInterface: fn (this: *Self, riid: *const GUID, ppvObject: **c_void) callconv(.Stdcall) c_long,
    AddRef: fn (this: *Self) callconv(.Stdcall) c_ulong,
    Release: fn (this: *Self) callconv(.Stdcall) c_ulong,

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
    QueryInterface: fn (this: *Self, riid: *const GUID, ppvObject: **c_void) callconv(.Stdcall) c_long,
    AddRef: fn (this: *Self) callconv(.Stdcall) c_ulong,
    Release: fn (this: *Self) callconv(.Stdcall) c_ulong,

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
    GetFontFamilyName: fn (this: *Self, fontFamilyName: [*:0]c_ushort, nameSize: c_uint) callconv(.Stdcall) c_long,
    GetFontWeight: fn (this: *Self) callconv(.Stdcall) DWRITE_FONT_WEIGHT,
    GetFontStyle: fn (this: *Self) callconv(.Stdcall) DWRITE_FONT_STYLE,
    GetFontStretch: fn (this: *Self) callconv(.Stdcall) DWRITE_FONT_STRETCH,
    GetFontSize: fn (this: *Self) callconv(.Stdcall) f32,
    GetLocaleNameLength: fn (this: *Self) callconv(.Stdcall) c_uint,
    GetLocaleName: fn (this: *Self, localeName: [*:0]c_ushort, nameSize: c_uint) callconv(.Stdcall) c_long,
};

pub const IID_IDWriteTypography = GUID_STRING("55f1112b-1dc2-4b3c-9541-f46894ed85b6");
pub const IDWriteTypography = Interface(IDWriteTypographyVtbl);
pub const IDWriteTypographyVtbl = extern struct {
    const Self = IDWriteTypography;

    // IUnknown
    QueryInterface: fn (this: *Self, riid: *const GUID, ppvObject: **c_void) callconv(.Stdcall) c_long,
    AddRef: fn (this: *Self) callconv(.Stdcall) c_ulong,
    Release: fn (this: *Self) callconv(.Stdcall) c_ulong,

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
    QueryInterface: fn (this: *Self, riid: *const GUID, ppvObject: **c_void) callconv(.Stdcall) c_long,
    AddRef: fn (this: *Self) callconv(.Stdcall) c_ulong,
    Release: fn (this: *Self) callconv(.Stdcall) c_ulong,

    // IDWriteNumberSubstitution
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

pub fn DWRITE_MAKE_OPENTYPE_TAG(a: u8, b: u8, c: u8, d: u8) u32 {
    return (@as(u32, d) << 24) | (@as(u32, c) << 16) | (@as(u32, b) << 8) | a;
}
