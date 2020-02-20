pub usingnamespace @import("dwrite_2.zig");

/// A font resource could not be accessed because it was remote. This can happen
/// when calling CreateFontFace on a non-local font or trying to measure/draw
/// glyphs that are not downloaded yet.
pub const DWRITE_E_REMOTEFONT = 0x8898500D;

/// The download was canceled, which happens if the application calls
/// IDWriteFontDownloadQueue::CancelDownload before they finish.
pub const DWRITE_E_DOWNLOADCANCELLED = 0x8898500E;

/// The download failed to complete because the remote resource is missing
/// or the network is down.
pub const DWRITE_E_DOWNLOADFAILED = 0x8898500F;

/// A download request was not added or a download failed because there
/// are too many active downloads.
pub const DWRITE_E_TOOMANYDOWNLOADS = 0x88985010;

/// The font property enumeration identifies a string in a font.
pub const DWRITE_FONT_PROPERTY_ID = extern enum {
    /// Unspecified font property identifier.
    NONE,

    /// Family name for the weight-stretch-style model.
    WEIGHT_STRETCH_STYLE_FAMILY_NAME,

    /// Family name preferred by the designer. This enables font designers to group more than four fonts in a single family without losing compatibility with
    /// GDI. This name is typically only present if it differs from the GDI-compatible family name.
    TYPOGRAPHIC_FAMILY_NAME,

    /// Face name of the for the weight-stretch-style (e.g., Regular or Bold).
    WEIGHT_STRETCH_STYLE_FACE_NAME,

    /// The full name of the font, e.g. "Arial Bold", from name id 4 in the name table.
    FULL_NAME,

    /// GDI-compatible family name. Because GDI allows a maximum of four fonts per family, fonts in the same family may have different GDI-compatible family names
    /// (e.g., "Arial", "Arial Narrow", "Arial Black").
    WIN32_FAMILY_NAME,

    /// The postscript name of the font, e.g. "GillSans-Bold" from name id 6 in the name table.
    POSTSCRIPT_NAME,

    /// Script/language tag to identify the scripts or languages that the font was
    /// primarily designed to support.
    DESIGN_SCRIPT_LANGUAGE_TAG,

    /// Script/language tag to identify the scripts or languages that the font declares
    /// it is able to support.
    SUPPORTED_SCRIPT_LANGUAGE_TAG,

    /// Semantic tag to describe the font (e.g. Fancy, Decorative, Handmade, Sans-serif, Swiss, Pixel, Futuristic).
    SEMANTIC_TAG,

    /// Weight of the font represented as a decimal string in the range 1-999.
    WEIGHT,

    /// Stretch of the font represented as a decimal string in the range 1-9.
    STRETCH,

    /// Style of the font represented as a decimal string in the range 0-2.
    STYLE,

    /// Face name preferred by the designer. This enables font designers to group more than four fonts in a single
    /// family without losing compatibility with GDI.
    TYPOGRAPHIC_FACE_NAME,

    /// Total number of properties for NTDDI_WIN10 (IDWriteFontSet).
    TOTAL = @enumToInt(@This().DWRITE_FONT_PROPERTY_ID_STYLE) + 1,

    /// Total number of properties for NTDDI_WIN10_RS3 (IDWriteFontSet1).
    TOTAL_RS3 = @enumToInt(@This().DWRITE_FONT_PROPERTY_ID_TYPOGRAPHIC_FACE_NAME) + 1,

    // Obsolete aliases kept to avoid breaking existing code.
    pub const PREFERRED_FAMILY_NAME = @This().TYPOGRAPHIC_FAMILY_NAME;
    // Obsolete aliases kept to avoid breaking existing code.
    pub const FAMILY_NAME = @This().WEIGHT_STRETCH_STYLE_FAMILY_NAME;
    // Obsolete aliases kept to avoid breaking existing code.
    pub const FACE_NAME = @This().WEIGHT_STRETCH_STYLE_FACE_NAME;
};

/// Font property used for filtering font sets and
/// building a font set with explicit properties.
pub const DWRITE_FONT_PROPERTY = extern struct {
    /// Specifies the requested font property, such as DWRITE_FONT_PROPERTY_ID_FAMILY_NAME.
    propertyId: DWRITE_FONT_PROPERTY_ID,

    /// Specifies the property value, such as "Segoe UI".
    propertyValue: [*:0]const u16,

    /// Specifies the language / locale to use, such as "en-US".
    localeName: ?[*:0]const u16,
};

/// Specifies the locality of a resource.
pub const DWRITE_LOCALITY = extern enum {
    /// The resource is remote, and information is unknown yet, including the file size and date.
    /// Attempting to create a font or file stream will fail until locality becomes at least partial.
    REMOTE,

    /// The resource is partially local, meaning you can query the size and date of the file
    /// stream, and you may be able to create a font face and retrieve the particular glyphs
    /// for metrics and drawing, but not all the glyphs will be present.
    PARTIAL,

    /// The resource is completely local, and all font functions can be called
    /// without concern of missing data or errors related to network connectivity.
    LOCAL,
};

/// Represents a method of rendering glyphs.
pub const DWRITE_RENDERING_MODE1 = extern enum {
    /// Specifies that the rendering mode is determined automatically based on the font and size.
    DEFAULT = DWRITE_RENDERING_MODE.DEFAULT,

    /// Specifies that no antialiasing is performed. Each pixel is either set to the foreground
    /// color of the text or retains the color of the background.
    ALIASED = DWRITE_RENDERING_MODE.ALIASED,

    /// Specifies that antialiasing is performed in the horizontal direction and the appearance
    /// of glyphs is layout-compatible with GDI using CLEARTYPE_QUALITY. Use DWRITE_MEASURING_MODE_GDI_CLASSIC
    /// to get glyph advances. The antialiasing may be either ClearType or grayscale depending on
    /// the text antialiasing mode.
    GDI_CLASSIC = DWRITE_RENDERING_MODE.GDI_CLASSIC,

    /// Specifies that antialiasing is performed in the horizontal direction and the appearance
    /// of glyphs is layout-compatible with GDI using CLEARTYPE_NATURAL_QUALITY. Glyph advances
    /// are close to the font design advances, but are still rounded to whole pixels. Use
    /// DWRITE_MEASURING_MODE_GDI_NATURAL to get glyph advances. The antialiasing may be either
    /// ClearType or grayscale depending on the text antialiasing mode.
    GDI_NATURAL = DWRITE_RENDERING_MODE.GDI_NATURAL,

    /// Specifies that antialiasing is performed in the horizontal direction. This rendering
    /// mode allows glyphs to be positioned with subpixel precision and is therefore suitable
    /// for natural (i.e., resolution-independent) layout. The antialiasing may be either
    /// ClearType or grayscale depending on the text antialiasing mode.
    NATURAL = DWRITE_RENDERING_MODE.NATURAL,

    /// Similar to natural mode except that antialiasing is performed in both the horizontal
    /// and vertical directions. This is typically used at larger sizes to make curves and
    /// diagonal lines look smoother. The antialiasing may be either ClearType or grayscale
    /// depending on the text antialiasing mode.
    NATURAL_SYMMETRIC = DWRITE_RENDERING_MODE.NATURAL_SYMMETRIC,

    /// Specifies that rendering should bypass the rasterizer and use the outlines directly.
    /// This is typically used at very large sizes.
    OUTLINE = DWRITE_RENDERING_MODE.OUTLINE,

    /// Similar to natural symmetric mode except that when possible, text should be rasterized
    /// in a downsampled form.
    NATURAL_SYMMETRIC_DOWNSAMPLED,
};
