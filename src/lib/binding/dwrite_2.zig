pub usingnamespace @import("dwrite_1.zig");

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

/// How to align glyphs to the margin.
pub const DWRITE_OPTICAL_ALIGNMENT = extern enum {
    /// Align to the default metrics of the glyph.
    NONE,

    /// Align glyphs to the margins. Without this, some small whitespace
    /// may be present between the text and the margin from the glyph's side
    /// bearing values. Note that glyphs may still overhang outside the
    /// margin, such as flourishes or italic slants.
    NO_SIDE_BEARINGS,
};

/// Whether to enable grid-fitting of glyph outlines (a.k.a. hinting).
pub const DWRITE_GRID_FIT_MODE = extern enum {
    /// Choose grid fitting base on the font's gasp table information.
    DEFAULT,

    /// Always disable grid fitting, using the ideal glyph outlines.
    DISABLED,

    /// Enable grid fitting, adjusting glyph outlines for device pixel display.
    ENABLED,
};

/// Overall metrics associated with text after layout.
/// All coordinates are in device independent pixels (DIPs).
pub const DWRITE_TEXT_METRICS1 = extern struct {
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

    /// The height of the formatted text taking into account the
    /// trailing whitespace at the end of each line, which will
    /// matter for vertical reading directions.
    heightIncludingTrailingWhitespace: f32,
};

pub const IDWriteTextRenderer1 = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("D3E0E934-22A0-427E-AAE4-7D9574B59DB1");
    pub const Vtbl = extern struct {
        // IDWriteTextRenderer
        parent: IDWriteTextRenderer.Vtbl,

        // IDWriteTextRenderer1
        DrawGlyphRun: fn (self: *Self, clientDrawingContext: ?*void, baselineOriginX: f32, baselineOriginY: f32, orientationAngle: DWRITE_GLYPH_ORIENTATION_ANGLE, measuringMode: DWRITE_MEASURING_MODE, glyphRun: *const DWRITE_GLYPH_RUN, glyphRunDescription: *const DWRITE_GLYPH_RUN_DESCRIPTION, clientDrawingEffect: ?*IUnknown) callconv(.Stdcall) i32,
        DrawUnderline: fn (self: *Self, clientDrawingContext: ?*void, baselineOriginX: f32, baselineOriginY: f32, orientationAngle: DWRITE_GLYPH_ORIENTATION_ANGLE, underline: *const DWRITE_UNDERLINE, clientDrawingEffect: ?*IUnknown) callconv(.Stdcall) i32,
        DrawStrikethrough: fn (self: *Self, clientDrawingContext: ?*void, baselineOriginX: f32, baselineOriginY: f32, orientationAngle: DWRITE_GLYPH_ORIENTATION_ANGLE, strikethrough: *const DWRITE_STRIKETHROUGH, clientDrawingEffect: ?*IUnknown) callconv(.Stdcall) i32,
        DrawInlineObject: fn (self: *Self, clientDrawingContext: ?*void, originX: f32, originY: f32, orientationAngle: DWRITE_GLYPH_ORIENTATION_ANGLE, inlineObject: *IDWriteInlineObject, isSideways: i32, isRightToLeft: i32, clientDrawingEffect: ?*IUnknown) callconv(.Stdcall) i32,
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
        return @ptrCast(*IDWriteTextRenderer, self).DrawGlyphRun(
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
        return @ptrCast(*IDWriteTextRenderer, self).DrawUnderline(
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
        return @ptrCast(*IDWriteTextRenderer, self).DrawStrikethrough(
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
        return @ptrCast(*IDWriteTextRenderer, self).DrawInlineObject(
            clientDrawingContext,
            originX,
            originY,
            inlineObject,
            isSideways,
            isRightToLeft,
            clientDrawingEffect,
        );
    }

    pub inline fn DrawGlyphRun1(
        self: *Self,
        clientDrawingContext: ?*void,
        baselineOriginX: f32,
        baselineOriginY: f32,
        orientationAngle: DWRITE_GLYPH_ORIENTATION_ANGLE,
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
            orientationAngle,
            measuringMode,
            glyphRun,
            glyphRunDescription,
            clientDrawingEffect,
        );
    }

    pub inline fn DrawUnderline1(
        self: *Self,
        clientDrawingContext: ?*void,
        baselineOriginX: f32,
        baselineOriginY: f32,
        orientationAngle: DWRITE_GLYPH_ORIENTATION_ANGLE,
        underline: *const DWRITE_UNDERLINE,
        clientDrawingEffect: ?*IUnknown,
    ) i32 {
        return self.lpVtbl.*.DrawUnderline(
            self,
            clientDrawingContext,
            baselineOriginX,
            baselineOriginY,
            orientationAngle,
            underline,
            clientDrawingEffect,
        );
    }

    pub inline fn DrawStrikethrough1(
        self: *Self,
        clientDrawingContext: ?*void,
        baselineOriginX: f32,
        baselineOriginY: f32,
        orientationAngle: DWRITE_GLYPH_ORIENTATION_ANGLE,
        strikethrough: *const DWRITE_STRIKETHROUGH,
        clientDrawingEffect: ?*IUnknown,
    ) i32 {
        return self.lpVtbl.*.DrawStrikethrough(
            self,
            text,
            baselineOriginX,
            baselineOriginY,
            orientationAngle,
            strikethrough,
            clientDrawingEffect,
        );
    }

    pub inline fn DrawInlineObject1(
        self: *Self,
        clientDrawingContext: ?*void,
        originX: f32,
        originY: f32,
        orientationAngle: DWRITE_GLYPH_ORIENTATION_ANGLE,
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
            orientationAngle,
            inlineObject,
            @as(i32, @boolToInt(isSideways)),
            @as(i32, @boolToInt(isRightToLeft)),
            clientDrawingEffect,
        );
    }
};

pub const IDWriteTextFormat1 = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("5F174B49-0D8B-4CFB-8BCA-F1CCE9D06C67");
    pub const Vtbl = extern struct {
        // IDWriteTextFormat
        parent: IDWriteTextFormat.Vtbl,

        // IDWriteTextFormat1
        SetVerticalGlyphOrientation: fn (self: *Self, glyphOrientation: DWRITE_VERTICAL_GLYPH_ORIENTATION) callconv(.Stdcall) i32,
        GetVerticalGlyphOrientation: fn (self: *Self) callconv(.Stdcall) DWRITE_VERTICAL_GLYPH_ORIENTATION,
        SetLastLineWrapping: fn (self: *Self, isLastLineWrappingEnabled: i32) callconv(.Stdcall) i32,
        GetLastLineWrapping: fn (self: *Self) callconv(.Stdcall) i32,
        SetOpticalAlignment: fn (self: *Self, opticalAlignment: DWRITE_OPTICAL_ALIGNMENT) callconv(.Stdcall) i32,
        GetOpticalAlignment: fn (self: *Self) callconv(.Stdcall) DWRITE_OPTICAL_ALIGNMENT,
        SetFontFallback: fn (self: *Self, fontFallback: *IDWriteFontFallback) callconv(.Stdcall) i32,
        GetFontFallback: fn (self: *Self, fontFallback: *?*IDWriteFontFallback) callconv(.Stdcall) i32,
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

    pub inline fn GetFontFamilyName(self: *Self, fontFamilyName: [:0]u16) i32 {
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

    pub inline fn SetVerticalGlyphOrientation(
        self: *Self,
        glyphOrientation: DWRITE_VERTICAL_GLYPH_ORIENTATION,
    ) i32 {
        return self.lpVtbl.*.SetVerticalGlyphOrientation(self, glyphOrientation);
    }

    pub inline fn GetVerticalGlyphOrientation(self: *Self) DWRITE_VERTICAL_GLYPH_ORIENTATION {
        return self.lpVtbl.*.GetVerticalGlyphOrientation(self);
    }

    pub inline fn SetLastLineWrapping(self: *Self, isLastLineWrappingEnabled: bool) i32 {
        return self.lpVtbl.*.SetLastLineWrapping(
            self,
            @as(i32, @boolToInt(isLastLineWrappingEnabled)),
        );
    }

    pub inline fn GetLastLineWrapping(self: *Self) bool {
        return self.lpVtbl.*.GetLastLineWrapping(self) != 0;
    }

    pub inline fn SetOpticalAlignment(self: *Self, opticalAlignment: DWRITE_OPTICAL_ALIGNMENT) i32 {
        return self.lpVtbl.*.SetOpticalAlignment(self, opticalAlignment);
    }

    pub inline fn GetOpticalAlignment(self: *Self) DWRITE_OPTICAL_ALIGNMENT {
        return self.lpVtbl.*.GetOpticalAlignment(self);
    }

    pub inline fn SetFontFallback(self: *Self, fontFallback: *IDWriteFontFallback) i32 {
        return self.lpVtbl.*.SetFontFallback(self, fontFallback);
    }

    pub inline fn GetFontFallback(self: *Self, fontFallback: *?*IDWriteFontFallback) i32 {
        return self.lpVtbl.*.GetFontFallback(self, fontFallback);
    }
};

pub const IDWriteTextLayout2 = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("1093C18F-8D5E-43F0-B064-0917311B525E");
    pub const Vtbl = extern struct {
        // IDWriteTextLayout1
        parent: IDWriteTextLayout1.Vtbl,

        // IDWriteTextLayout2
        GetMetrics: fn (self: *Self, textMetrics: *DWRITE_TEXT_METRICS1) callconv(.Stdcall) i32,
        SetVerticalGlyphOrientation: fn (self: *Self, glyphOrientation: DWRITE_VERTICAL_GLYPH_ORIENTATION) callconv(.Stdcall) i32,
        GetVerticalGlyphOrientation: fn (self: *Self) callconv(.Stdcall) DWRITE_VERTICAL_GLYPH_ORIENTATION,
        SetLastLineWrapping: fn (self: *Self, isLastLineWrappingEnabled: i32) callconv(.Stdcall) i32,
        GetLastLineWrapping: fn (self: *Self) callconv(.Stdcall) i32,
        SetOpticalAlignment: fn (self: *Self, opticalAlignment: DWRITE_OPTICAL_ALIGNMENT) callconv(.Stdcall) i32,
        GetOpticalAlignment: fn (self: *Self) callconv(.Stdcall) DWRITE_OPTICAL_ALIGNMENT,
        SetFontFallback: fn (self: *Self, fontFallback: *IDWriteFontFallback) callconv(.Stdcall) i32,
        GetFontFallback: fn (self: *Self, fontFallback: *?*IDWriteFontFallback) callconv(.Stdcall) i32,
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
        return @ptrCast(*IDWriteTextLayout1, self).SetPairKerning(
            isPairKerningEnabled,
            textRange,
        );
    }

    pub inline fn GetPairKerning(
        self: *Self,
        currentPosition: u32,
        isPairKerningEnabled: *bool,
        textRange: ?*DWRITE_TEXT_RANGE,
    ) i32 {
        return @ptrCast(*IDWriteTextLayout1, self).GetPairKerning(
            currentPosition,
            isPairKerningEnabled,
            textRange,
        );
    }

    pub inline fn SetCharacterSpacing(
        self: *Self,
        leadingSpacing: f32,
        trailingSpacing: f32,
        minimumAdvanceWidth: f32,
        textRange: DWRITE_TEXT_RANGE,
    ) i32 {
        return @ptrCast(*IDWriteTextLayout1, self).SetCharacterSpacing(
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
        return @ptrCast(*IDWriteTextLayout1, self).GetCharacterSpacing(
            currentPosition,
            leadingSpacing,
            trailingSpacing,
            minimumAdvanceWidth,
            textRange,
        );
    }

    pub inline fn GetMetrics(self: *Self, textMetrics: *DWRITE_TEXT_METRICS1) i32 {
        return self.lpVtbl.*.GetMetrics(self, textMetrics);
    }

    pub inline fn SetVerticalGlyphOrientation(
        self: *Self,
        glyphOrientation: DWRITE_VERTICAL_GLYPH_ORIENTATION,
    ) i32 {
        return self.lpVtbl.*.SetVerticalGlyphOrientation(self, glyphOrientation);
    }

    pub inline fn GetVerticalGlyphOrientation(self: *Self) DWRITE_VERTICAL_GLYPH_ORIENTATION {
        return self.lpVtbl.*.GetVerticalGlyphOrientation(self);
    }

    pub inline fn SetLastLineWrapping(self: *Self, isLastLineWrappingEnabled: bool) i32 {
        return self.lpVtbl.*.SetLastLineWrapping(
            self,
            @as(i32, @boolToInt(isLastLineWrappingEnabled)),
        );
    }

    pub inline fn GetLastLineWrapping(self: *Self) bool {
        return self.lpVtbl.*.GetLastLineWrapping(self) != 0;
    }

    pub inline fn SetOpticalAlignment(self: *Self, opticalAlignment: DWRITE_OPTICAL_ALIGNMENT) i32 {
        return self.lpVtbl.*.SetOpticalAlignment(self, opticalAlignment);
    }

    pub inline fn GetOpticalAlignment(self: *Self) DWRITE_OPTICAL_ALIGNMENT {
        return self.lpVtbl.*.GetOpticalAlignment(self);
    }

    pub inline fn SetFontFallback(self: *Self, fontFallback: *IDWriteFontFallback) i32 {
        return self.lpVtbl.*.SetFontFallback(self, fontFallback);
    }

    pub inline fn GetFontFallback(self: *Self, fontFallback: *?*IDWriteFontFallback) i32 {
        return self.lpVtbl.*.GetFontFallback(self, fontFallback);
    }
};

pub const IDWriteTextAnalyzer2 = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("553A9FF3-5693-4DF7-B52B-74806F7F2EB9");
    pub const Vtbl = extern struct {
        // IDWriteTextAnalyzer1
        parent: IDWriteTextAnalyzer1.Vtbl,

        // IDWriteTextAnalyzer2
        GetGlyphOrientationTransform: fn (self: *Self, glyphOrientationAngle: DWRITE_GLYPH_ORIENTATION_ANGLE, isSideways: i32, originX: f32, originY: f32, transform: *DWRITE_MATRIX) callconv(.Stdcall) i32,
        GetTypographicFeatures: fn (self: *Self, fontFace: *IDWriteFontFace, scriptAnalysis: DWRITE_SCRIPT_ANALYSIS, localeName: ?[*:0]const u16, maxTagCount: u32, actualTagCount: *u32, tags: [*]DWRITE_FONT_FEATURE_TAG) callconv(.Stdcall) i32,
        CheckTypographicFeature: fn (self: *Self, fontFace: *IDWriteFontFace, scriptAnalysis: DWRITE_SCRIPT_ANALYSIS, localeName: ?[*:0]const u16, featureTag: DWRITE_FONT_FEATURE_TAG, glyphCount: u32, glyphIndices: [*]const u16, featureApplies: [*]u8) callconv(.Stdcall) i32,
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
        return @ptrCast(*IDWriteTextAnalyzer1, self).ApplyCharacterSpacing(
            leadingSpacing,
            trailingSpacing,
            minimumAdvanceWidth,
            clusterMap,
            glyphAdvances,
            glyphOffsets,
            glyphProperties,
            modifiedGlyphAdvances,
            modifiedGlyphOffsets,
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
        return @ptrCast(*IDWriteTextAnalyzer1, self).GetBaseline(
            fontFace,
            baseline,
            isVertical,
            isSimulationAllowed,
            scriptAnalysis,
            localeName,
            baselineCoordinate,
            exists,
        );
    }

    pub inline fn AnalyzeVerticalGlyphOrientation(
        self: *Self,
        analysisSource: *IDWriteTextAnalysisSource1,
        textPosition: u32,
        textLength: u32,
        analysisSink: *IDWriteTextAnalysisSink1,
    ) i32 {
        return @ptrCast(*IDWriteTextAnalyzer1, self).AnalyzeVerticalGlyphOrientation(
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
        return @ptrCast(*IDWriteTextAnalyzer1, self).GetGlyphOrientationTransform(
            glyphOrientationAngle,
            isSideways,
            transform,
        );
    }

    pub inline fn GetScriptProperties(
        self: *Self,
        scriptAnalysis: DWRITE_SCRIPT_ANALYSIS,
        scriptProperties: *DWRITE_SCRIPT_PROPERTIES,
    ) i32 {
        return @ptrCast(*IDWriteTextAnalyzer1, self).GetScriptProperties(
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
        return @ptrCast(*IDWriteTextAnalyzer1, self).GetTextComplexity(
            textString,
            fontFace,
            isTextSimple,
            textLengthRead,
            glyphIndices,
        );
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
        return @ptrCast(*IDWriteTextAnalyzer1, self).GetJustificationOpportunities(
            fontFace,
            fontEmSize,
            scriptAnalysis,
            textString,
            clusterMap,
            glyphProperties,
            justificationOpportunities,
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
        return @ptrCast(*IDWriteTextAnalyzer1, self).JustifyGlyphAdvances(
            lineWidth,
            justificationOpportunities,
            glyphAdvances,
            glyphOffsets,
            justifiedGlyphAdvances,
            justifiedGlyphOffsets,
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
        return @ptrCast(*IDWriteTextAnalyzer1, self).GetJustifiedGlyphs(
            fontFace,
            fontEmSize,
            scriptAnalysis,
            clusterMap,
            glyphIndices,
            glyphAdvances,
            justifiedGlyphAdvances,
            justifiedGlyphOffsets,
            glyphProperties,
            actualGlyphCount,
            modifiedClusterMap,
            modifiedGlyphIndices,
            modifiedGlyphAdvances,
            modifiedGlyphOffsets,
        );
    }

    pub inline fn GetGlyphOrientationTransform(
        self: *Self,
        glyphOrientationAngle: DWRITE_GLYPH_ORIENTATION_ANGLE,
        isSideways: bool,
        originX: f32,
        originY: f32,
        transform: *DWRITE_MATRIX,
    ) i32 {
        return self.lpVtbl.*.GetGlyphOrientationTransform(
            self,
            glyphOrientationAngle,
            @as(i32, @boolToInt(isSideways)),
            originX,
            originY,
            transform,
        );
    }

    pub inline fn GetTypographicFeatures(
        self: *Self,
        fontFace: *IDWriteFontFace,
        scriptAnalysis: DWRITE_SCRIPT_ANALYSIS,
        localeName: ?[:0]const u16,
        actualTagCount: *u32,
        tags: []DWRITE_FONT_FEATURE_TAG,
    ) i32 {
        return self.lpVtbl.*.GetTypographicFeatures(
            self,
            fontFace,
            scriptAnalysis,
            if (localeName) |payload| payload.ptr else null,
            @truncate(u32, tags.len),
            actualTagCount,
            tags.ptr,
        );
    }

    pub inline fn CheckTypographicFeature(
        self: *Self,
        fontFace: *IDWriteFontFace,
        scriptAnalysis: DWRITE_SCRIPT_ANALYSIS,
        localeName: ?[:0]const u16,
        featureTag: DWRITE_FONT_FEATURE_TAG,
        glyphIndices: []const u16,
        featureApplies: []u8,
    ) i32 {
        assert(glyphIndices.len == featureApplies.len);

        return self.lpVtbl.*.CheckTypographicFeature(
            self,
            fontFace,
            scriptAnalysis,
            localeName.ptr,
            featureTag,
            @truncate(u32, glyphIndices.len),
            glyphIndices.ptr,
            featureApplies.ptr,
        );
    }
};

pub const IDWriteFontFallback = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("EFA008F9-F7A1-48BF-B05C-F224713CC0FF");
    pub const Vtbl = extern struct {
        // IUnknown
        parent: IUnknown.Vtbl,

        // IDWriteFontFallback
        MapCharacters: fn (self: *Self, analysisSource: *IDWriteTextAnalysisSource, textPosition: u32, textLength: u32, baseFontCollection: ?*IDWriteFontCollection, baseFamilyName: ?[*:0]const wchar_t, baseWeight: DWRITE_FONT_WEIGHT, baseStyle: DWRITE_FONT_STYLE, baseStretch: DWRITE_FONT_STRETCH, mappedLength: *u32, mappedFont: *?*IDWriteFont, scale: *f32) callconv(.Stdcall) i32,
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

    pub inline fn MapCharacters(
        self: *Self,
        analysisSource: *IDWriteTextAnalysisSource,
        textPosition: u32,
        textLength: u32,
        baseFontCollection: ?*IDWriteFontCollection,
        baseFamilyName: ?[:0]const u16,
        baseWeight: DWRITE_FONT_WEIGHT,
        baseStyle: DWRITE_FONT_STYLE,
        baseStretch: DWRITE_FONT_STRETCH,
        mappedLength: *u32,
        mappedFont: *?*IDWriteFont,
        scale: *f32,
    ) i32 {
        return self.lpVtbl.*.MapCharacters(
            self,
            analysisSource,
            textPosition,
            textLength,
            baseFontCollection,
            baseFamilyName,
            baseWeight,
            baseStyle,
            baseStretch,
            mappedLength,
            mappedFont,
            scale,
        );
    }
};

pub const IDWriteFontFallbackBuilder = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("FD882D06-8ABA-4FB8-B849-8BE8B73E14DE");
    pub const Vtbl = extern struct {
        // IUnknown
        parent: IUnknown.Vtbl,

        // IDWriteFontFallbackBuilder
        AddMapping: fn (self: *Self, ranges: [*]const DWRITE_UNICODE_RANGE, rangesCount: u32, targetFamilyNames: [*][*:0]const u16, targetFamilyNamesCount: u32, fontCollection: ?*IDWriteFontCollection, localeName: ?[*:0]const u16, baseFamilyName: ?[*:0]const u16, scale: f32) callconv(.Stdcall) i32,
        AddMappings: fn (self: *Self, fontFallback: *IDWriteFontFallback) callconv(.Stdcall) i32,
        CreateFontFallback: fn (self: *Self, fontFallback: *?*IDWriteFontFallback) callconv(.Stdcall) i32,
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

    pub inline fn AddMapping(
        self: *Self,
        ranges: []const DWRITE_UNICODE_RANGE,
        targetFamilyNames: [][*:0]const u16,
        fontCollection: ?*IDWriteFontCollection,
        localeName: ?[:0]const u16,
        baseFamilyName: ?[:0]const u16,
        scale: f32,
    ) i32 {
        return self.lpVtbl.*.AddMapping(
            self,
            ranges.ptr,
            @truncate(u32, ranges.len),
            targetFamilyNames.ptr,
            @truncate(u32, targetFamilyNames.len),
            fontCollection,
            localeName.ptr,
            baseFamilyName.ptr,
            scale,
        );
    }

    pub inline fn AddMappings(self: *Self, fontFallback: *IDWriteFontFallback) i32 {
        return self.lpVtbl.*.AddMappings(self, fontFallback);
    }

    pub inline fn CreateFontFallback(self: *Self, fontFallback: *?*IDWriteFontFallback) i32 {
        return self.lpVtbl.*.CreateFontFallback(self, fontFallback);
    }
};

pub const IDWriteFont2 = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("29748ed6-8c9c-4a6a-be0b-d912e8538944");
    pub const Vtbl = extern struct {
        // IDWriteFont1
        parent: IDWriteFont1.Vtbl,

        // IDWriteFont2
        IsColorFont: fn (self: *Self) callconv(.Stdcall) i32,
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
        return @ptrCast(*IDWriteFont1, self).GetMetrics(fontMetrics);
    }

    pub inline fn GetPanose(self: *Self, panose: *DWRITE_PANOSE) void {
        return @ptrCast(*IDWriteFont1, self).GetPanose(panose);
    }

    pub inline fn GetUnicodeRanges(
        self: *Self,
        unicodeRanges: ?[]DWRITE_UNICODE_RANGE,
        actualRangeCount: *u32,
    ) i32 {
        return @ptrCast(*IDWriteFont1, self).GetUnicodeRanges(
            unicodeRanges,
            actualRangeCount,
        );
    }

    pub inline fn IsMonospacedFont(self: *Self) bool {
        return @ptrCast(*IDWriteFont1, self).IsMonospacedFont();
    }

    pub inline fn IsColorFont(self: *Self) bool {
        return self.lpVtbl.*.IsColorFont(self) != 0;
    }
};

pub const IDWriteFontFace2 = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("d8b768ff-64bc-4e66-982b-ec8e87f693f7");
    pub const Vtbl = extern struct {
        // IDWriteFontFace1
        parent: IDWriteFontFace1.Vtbl,

        // IDWriteFontFace2
        IsColorFont: fn (self: *Self) callconv(.Stdcall) i32,
        GetColorPaletteCount: fn (self: *Self) callconv(.Stdcall) u32,
        GetPaletteEntryCount: fn (self: *Self) callconv(.Stdcall) u32,
        GetPaletteEntries: fn (self: *Self, colorPaletteIndex: u32, firstEntryIndex: u32, entryCount: u32, paletteEntries: [*]DWRITE_COLOR_F) callconv(.Stdcall) i32,
        GetRecommendedRenderingMode: fn (self: *Self, fontEmSize: f32, dpiX: f32, dpiY: f32, transform: ?*const DWRITE_MATRIX, isSideways: i32, outlineThreshold: DWRITE_OUTLINE_THRESHOLD, measuringMode: DWRITE_MEASURING_MODE, renderingParams: ?*IDWriteRenderingParams, renderingMode: *DWRITE_RENDERING_MODE, gridFitMode: *DWRITE_GRID_FIT_MODE) callconv(.Stdcall) i32,
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
        return @ptrCast(*IDWriteFontFace1, self).GetMetrics(fontMetrics);
    }

    pub inline fn GetGdiCompatibleMetrics1(
        self: *Self,
        emSize: f32,
        pixelsPerDip: f32,
        transform: ?*const DWRITE_MATRIX,
        fontMetrics: *DWRITE_FONT_METRICS1,
    ) i32 {
        return @ptrCast(*IDWriteFontFace1, self).GetGdiCompatibleMetrics(
            emSize,
            pixelsPerDip,
            transform,
            fontMetrics,
        );
    }

    pub inline fn GetCaretMetrics(self: *Self, caretMetrics: *DWRITE_CARET_METRICS) void {
        return @ptrCast(*IDWriteFontFace1, self).GetCaretMetrics(caretMetrics);
    }

    pub inline fn GetUnicodeRanges(
        self: *Self,
        unicodeRanges: ?[]DWRITE_UNICODE_RANGE,
        actualRangeCount: *u32,
    ) i32 {
        return @ptrCast(*IDWriteFontFace1, self).GetUnicodeRanges(
            unicodeRanges,
            actualRangeCount,
        );
    }

    pub inline fn IsMonospacedFont(self: *Self) bool {
        return @ptrCast(*IDWriteFontFace1, self).IsMonospacedFont();
    }

    pub inline fn GetDesignGlyphAdvances(
        self: *Self,
        glyphIndices: []const u16,
        glyphAdvances: []i32,
        isSideways: bool,
    ) i32 {
        return @ptrCast(*IDWriteFontFace1, self).GetDesignGlyphAdvances(
            glyphIndices,
            glyphAdvances,
            isSideways,
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
        return @ptrCast(*IDWriteFontFace1, self).GetGdiCompatibleGlyphAdvances(
            emSize,
            pixelsPerDip,
            transform,
            useGdiNatural,
            isSideways,
            glyphIndices,
            glyphAdvances,
        );
    }

    pub inline fn GetKerningPairAdjustments(
        self: *Self,
        glyphIndices: []const u16,
        glyphAdvanceAdjustments: []i32,
    ) i32 {
        return @ptrCast(*IDWriteFontFace1, self).GetKerningPairAdjustments(
            glyphIndices,
            glyphAdvanceAdjustments,
        );
    }

    pub inline fn HasKerningPairs(self: *Self) bool {
        return @ptrCast(*IDWriteFontFace1, self).HasKerningPairs();
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
        return @ptrCast(*IDWriteFontFace1, self).GetRecommendedRenderingMode(
            fontEmSize,
            dpiX,
            dpiY,
            transform,
            isSideways,
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
        return @ptrCast(*IDWriteFontFace1, self).GetVerticalGlyphVariants(
            nominalGlyphIndices,
            verticalGlyphIndices,
        );
    }

    pub inline fn HasVerticalGlyphVariants(self: *Self) bool {
        return @ptrCast(*IDWriteFontFace1, self).HasVerticalGlyphVariants();
    }

    pub inline fn IsColorFont(self: *Self) bool {
        return self.lpVtbl.*.IsColorFont(self) != 0;
    }

    pub inline fn GetColorPaletteCount(self: *Self) u32 {
        return self.lpVtbl.*.GetColorPaletteCount(self);
    }

    pub inline fn GetPaletteEntryCount(self: *Self) u32 {
        return self.lpVtbl.*.GetPaletteEntryCount(self);
    }

    pub inline fn GetPaletteEntries(
        self: *Self,
        colorPaletteIndex: u32,
        firstEntryIndex: u32,
        paletteEntries: []DWRITE_COLOR_F,
    ) i32 {
        return self.lpVtbl.*.GetPaletteEntries(
            self,
            colorPaletteIndex,
            firstEntryIndex,
            @truncate(u32, paletteEntries.len),
            paletteEntries,
        );
    }

    pub inline fn GetRecommendedRenderingMode(
        self: *Self,
        fontEmSize: f32,
        dpiX: f32,
        dpiY: f32,
        transform: ?*const DWRITE_MATRIX,
        isSideways: bool,
        outlineThreshold: DWRITE_OUTLINE_THRESHOLD,
        measuringMode: DWRITE_MEASURING_MODE,
        renderingParams: ?*IDWriteRenderingParams,
        renderingMode: *DWRITE_RENDERING_MODE,
        gridFitMode: *DWRITE_GRID_FIT_MODE,
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
            renderingParams,
            renderingMode,
            gridFitMode,
        );
    }
};

pub const DWRITE_COLOR_GLYPH_RUN = extern struct {
    /// Glyph run to render.
    glyphRun: DWRITE_GLYPH_RUN,

    /// Optional glyph run description.
    glyphRunDescription: ?*DWRITE_GLYPH_RUN_DESCRIPTION,

    /// Location at which to draw this glyph run.
    baselineOriginX: f32,

    /// Location at which to draw this glyph run.
    baselineOriginY: f32,

    /// Color to use for this layer, if any. This is the same color that
    /// IDWriteFontFace2::GetPaletteEntries would return for the current
    /// palette index if the paletteIndex member is less than 0xFFFF. If
    /// the paletteIndex member is 0xFFFF then there is no associated
    /// palette entry, this member is set to { 0, 0, 0, 0 }, and the client
    /// should use the current foreground brush.
    runColor: D3DCOLORVALUE,

    /// Zero-based index of this layer's color entry in the current color
    /// palette, or 0xFFFF if this layer is to be rendered using
    /// the current foreground brush.
    paletteIndex: u16,
};

pub const IDWriteColorGlyphRunEnumerator = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("d31fbe17-f157-41a2-8d24-cb779e0560e8");
    pub const Vtbl = extern struct {
        // IUnknown
        parent: IUnknown.Vtbl,

        // IDWriteColorGlyphRunEnumerator
        MoveNext: fn (self: *Self, hasRun: *i32) callconv(.Stdcall) i32,
        GetCurrentRun: fn (self: *Self, colorGlyphRun: *?*const DWRITE_COLOR_GLYPH_RUN) callconv(.Stdcall) i32,
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

    pub inline fn MoveNext(self: *Self, hasRun: *bool) i32 {
        var hasRun_aux: i32 = 0;
        const ret = self.lpVtbl.*.MoveNext(self, &hasRun_aux);

        hasRun.* = hasRun_aux != 0;
        return ret;
    }

    pub inline fn GetCurrentRun(self: *Self, colorGlyphRun: *?*const DWRITE_COLOR_GLYPH_RUN) i32 {
        return self.lpVtbl.*.GetCurrentRun(self, colorGlyphRun);
    }
};

pub const IDWriteRenderingParams2 = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("F9D711C3-9777-40AE-87E8-3E5AF9BF0948");
    pub const Vtbl = extern struct {
        // IDWriteRenderingParams1
        parent: IDWriteRenderingParams1.Vtbl,

        // IDWriteRenderingParams2
        GetGridFitMode: fn (self: *Self) callconv(.Stdcall) DWRITE_GRID_FIT_MODE,
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
        return @ptrCast(*IDWriteRenderingParams1, self).GetGrayscaleEnhancedContrast();
    }

    pub inline fn GetGridFitMode(self: *Self) DWRITE_GRID_FIT_MODE {
        return self.lpVtbl.*.GetGridFitMode(self);
    }
};

pub const IDWriteFactory2 = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("0439fc60-ca44-4994-8dee-3a9af7b732ec");
    pub const Vtbl = extern struct {
        // IDWriteFactory1
        parent: IDWriteFactory1.Vtbl,

        // IDWriteFactory2
        GetSystemFontFallback: fn (self: *Self, fontFallback: *?*IDWriteFontFallback) callconv(.Stdcall) i32,
        CreateFontFallbackBuilder: fn (self: *Self, fontFallbackBuilder: *?*IDWriteFontFallbackBuilder) callconv(.Stdcall) i32,
        TranslateColorGlyphRun: fn (self: *Self, baselineOriginX: f32, baselineOriginY: f32, glyphRun: *const DWRITE_GLYPH_RUN, glyphRunDescription: ?*const DWRITE_GLYPH_RUN_DESCRIPTION, measuringMode: DWRITE_MEASURING_MODE, worldToDeviceTransform: ?*const DWRITE_MATRIX, colorPaletteIndex: u32, colorLayers: *?*IDWriteColorGlyphRunEnumerator) callconv(.Stdcall) i32,
        CreateCustomRenderingParams: fn (self: *Self, gamma: f32, enhancedContrast: f32, grayscaleEnhancedContrast: f32, clearTypeLevel: f32, pixelGeometry: DWRITE_PIXEL_GEOMETRY, renderingMode: DWRITE_RENDERING_MODE, gridFitMode: DWRITE_GRID_FIT_MODE, renderingParams: *?*IDWriteRenderingParams2) callconv(.Stdcall) i32,
        CreateGlyphRunAnalysis: fn (self: *Self, glyphRun: *const DWRITE_GLYPH_RUN, transform: ?*const DWRITE_MATRIX, renderingMode: DWRITE_RENDERING_MODE, measuringMode: DWRITE_MEASURING_MODE, gridFitMode: DWRITE_GRID_FIT_MODE, antialiasMode: DWRITE_TEXT_ANTIALIAS_MODE, baselineOriginX: f32, baselineOriginY: f32, glyphRunAnalysis: *?*IDWriteGlyphRunAnalysis) callconv(.Stdcall) i32,
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
        return @ptrCast(*IDWriteFactory1, self).GetEudcFontCollection(
            fontCollection,
            checkForUpdates,
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
        return @ptrCast(*IDWriteFactory1, self).CreateCustomRenderingParams(
            gamma,
            enhancedContrast,
            enhancedContrastGrayscale,
            clearTypeLevel,
            pixelGeometry,
            renderingMode,
            renderingParams,
        );
    }

    pub inline fn GetSystemFontFallback(self: *Self, fontFallback: *?*IDWriteFontFallback) i32 {
        return self.lpVtbl.*.GetSystemFontFallback(self, fontFallback);
    }

    pub inline fn CreateFontFallbackBuilder(self: *Self, fontFallbackBuilder: *?*IDWriteFontFallbackBuilder) i32 {
        return self.lpVtbl.*.CreateFontFallbackBuilder(self, fontFallbackBuilder);
    }

    pub inline fn TranslateColorGlyphRun(
        self: *Self,
        baselineOriginX: f32,
        baselineOriginY: f32,
        glyphRun: *const DWRITE_GLYPH_RUN,
        glyphRunDescription: ?*const DWRITE_GLYPH_RUN_DESCRIPTION,
        measuringMode: DWRITE_MEASURING_MODE,
        worldToDeviceTransform: ?*const DWRITE_MATRIX,
        colorPaletteIndex: u32,
        colorLayers: *?*IDWriteColorGlyphRunEnumerator,
    ) i32 {
        return self.lpVtbl.*.TranslateColorGlyphRun(
            self,
            baselineOriginX,
            baselineOriginY,
            glyphRun,
            glyphRunDescription,
            measuringMode,
            worldToDeviceTransform,
            colorPaletteIndex,
            colorLayers,
        );
    }

    pub inline fn CreateCustomRenderingParams(
        self: *Self,
        gamma: f32,
        enhancedContrast: f32,
        grayscaleEnhancedContrast: f32,
        clearTypeLevel: f32,
        pixelGeometry: DWRITE_PIXEL_GEOMETRY,
        renderingMode: DWRITE_RENDERING_MODE,
        gridFitMode: DWRITE_GRID_FIT_MODE,
        renderingParams: *?*IDWriteRenderingParams2,
    ) i32 {
        return self.lpVtbl.*.CreateCustomRenderingParams(
            self,
            gamma,
            enhancedContrast,
            grayscaleEnhancedContrast,
            clearTypeLevel,
            pixelGeometry,
            renderingMode,
            gridFitMode,
            renderingParams,
        );
    }

    pub inline fn CreateGlyphRunAnalysis(
        self: *Self,
        glyphRun: *const DWRITE_GLYPH_RUN,
        transform: ?*const DWRITE_MATRIX,
        renderingMode: DWRITE_RENDERING_MODE,
        measuringMode: DWRITE_MEASURING_MODE,
        gridFitMode: DWRITE_GRID_FIT_MODE,
        antialiasMode: DWRITE_TEXT_ANTIALIAS_MODE,
        baselineOriginX: f32,
        baselineOriginY: f32,
        glyphRunAnalysis: *?*IDWriteGlyphRunAnalysis,
    ) i32 {
        return self.lpVtbl.*.CreateGlyphRunAnalysis(
            self,
            glyphRun,
            transform,
            renderingMode,
            measuringMode,
            gridFitMode,
            antialiasMode,
            baselineOriginX,
            baselineOriginY,
            glyphRunAnalysis,
        );
    }
};
