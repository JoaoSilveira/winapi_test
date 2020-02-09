const d3dcommon = @import("d3dcommon.zig");
const dcommon = @import("dcommon.zig");
const dwrite = @import("dwrite.zig");
const dxgi = @import("dxgi.zig");
const dxgitype = @import("dxgitype.zig");
const functions = @import("functions.zig");
const std = @import("std");
const structs = @import("structs.zig");
const unknwn = @import("unknwn.zig");
const wincodec = @import("wincodec.zig");

const IDXGISurface = dxgi.IDXGISurface;
const D3DCOLORVALUE = dxgitype.D3DCOLORVALUE;
const D3D_FEATURE_LEVEL = d3dcommon.D3D_FEATURE_LEVEL;
const D2D1_SIZE_U = dcommon.D2D1_SIZE_U;
const D2D1_PIXEL_FORMAT = dcommon.D2D1_PIXEL_FORMAT;
const D2D1_SIZE_F = dcommon.D2D1_SIZE_F;
const D2D1_RECT_U = dcommon.D2D1_RECT_U;
const D2D1_POINT_2U = dcommon.D2D1_POINT_2U;
const D2D1_POINT_2F = dcommon.D2D1_POINT_2F;
const D2D1_MATRIX_3X2_F = dcommon.D2D1_MATRIX_3X2_F;
const D2D1_RECT_F = dcommon.D2D1_RECT_F;
const DWRITE_MEASURING_MODE = dcommon.DWRITE_MEASURING_MODE;
const DWRITE_GLYPH_RUN = dwrite.DWRITE_GLYPH_RUN;
const GUID = structs.GUID;
const GUID_STRING = functions.GUID_STRING;
const IDWriteRenderingParams = dwrite.IDWriteRenderingParams;
const IDWriteTextFormat = dwrite.IDWriteTextFormat;
const IDWriteTextLayout = dwrite.IDWriteTextLayout;
const IUnknown = unknwn.IUnknown;
const IWICBitmap = wincodec.IWICBitmap;
const IWICBitmapSource = wincodec.IWICBitmapSource;
const maxInt = std.math.maxInt;
const RECT = structs.RECT;
const assert = std.debug.assert;

pub const D2D1_INVALID_TAG = maxInt(u64);
pub const D2D1_DEFAULT_FLATTENING_TOLERANCE = 0.25;

/// This defines the superset of interpolation mode supported by D2D APIs
/// and built-in effects
pub const D2D1_INTERPOLATION_MODE = extern enum {
    NEAREST_NEIGHBOR = 0,
    LINEAR = 1,
    CUBIC = 2,
    MULTI_SAMPLE_LINEAR = 3,
    ANISOTROPIC = 4,
    HIGH_QUALITY_CUBIC = 5,
    FANT = 6,
    MIPMAP_LINEAR = 7,
};

/// This determines what gamma is used for interpolation/blending.
pub const D2D1_GAMMA = extern enum(u32) {
    /// Colors are manipulated in 2.2 gamma color space.
    _2_2 = 0,

    /// Colors are manipulated in 1.0 gamma color space.
    _1_0 = 1,
    _FORCE_DWORD = 0xffffffff,
};

/// Specifies what the contents are of an opacity mask.
pub const D2D1_OPACITY_MASK_CONTENT = extern enum(u32) {
    /// The mask contains geometries or bitmaps.
    GRAPHICS = 0,

    /// The mask contains text rendered using one of the natural text modes.
    TEXT_NATURAL = 1,

    /// The mask contains text rendered using one of the GDI compatible text modes.
    TEXT_GDI_COMPATIBLE = 2,
    FORCE_DWORD = 0xffffffff,
};

/// Enum which describes how to sample from a source outside its base tile.
pub const D2D1_EXTEND_MODE = extern enum(u32) {
    /// Extend the edges of the source out by clamping sample points outside the source
    /// to the edges.
    CLAMP = 0,

    /// The base tile is drawn untransformed and the remainder are filled by repeating
    /// the base tile.
    WRAP = 1,

    /// The same as wrap, but alternate tiles are flipped  The base tile is drawn
    /// untransformed.
    MIRROR = 2,
    FORCE_DWORD = 0xffffffff,
};

/// Enum which describes the manner in which we render edges of non-text primitives.
pub const D2D1_ANTIALIAS_MODE = extern enum(u32) {
    /// The edges of each primitive are antialiased sequentially.
    PER_PRIMITIVE = 0,

    /// Each pixel is rendered if its pixel center is contained by the geometry.
    ALIASED = 1,
    FORCE_DWORD = 0xffffffff,
};

/// Describes the antialiasing mode used for drawing text.
pub const D2D1_TEXT_ANTIALIAS_MODE = extern enum(u32) {
    /// Render text using the current system setting.
    DEFAULT = 0,

    /// Render text using ClearType.
    CLEARTYPE = 1,

    /// Render text using gray-scale.
    GRAYSCALE = 2,

    /// Render text aliased.
    ALIASED = 3,
    FORCE_DWORD = 0xffffffff,
};

/// Specifies the algorithm that is used when images are scaled or rotated. Note
/// Starting in Windows 8, more interpolations modes are available. See
/// D2D1_INTERPOLATION_MODE for more info.
pub const D2D1_BITMAP_INTERPOLATION_MODE = extern enum(u32) {
    /// Nearest Neighbor filtering. Also known as nearest pixel or nearest point
    /// sampling.
    NEAREST_NEIGHBOR = @enumToInt(D2D1_INTERPOLATION_MODE.NEAREST_NEIGHBOR),

    /// Linear filtering.
    LINEAR = @enumToInt(D2D1_INTERPOLATION_MODE.LINEAR),
    FORCE_DWORD = 0xffffffff,
};

/// Modifications made to the draw text call that influence how the text is
/// rendered.
pub const D2D1_DRAW_TEXT_OPTIONS = extern enum(u32) {
    /// Do not snap the baseline of the text vertically.
    NO_SNAP = 0x00000001,

    /// Clip the text to the content bounds.
    CLIP = 0x00000002,

    /// Render color versions of glyphs if defined by the font.
    ENABLE_COLOR_FONT = 0x00000004,

    /// Bitmap origins of color glyph bitmaps are not snapped.
    DISABLE_COLOR_BITMAP_SNAPPING = 0x00000008,
    NONE = 0x00000000,
    FORCE_DWORD = 0xffffffff,
};

/// Describes the pixel format and dpi of a bitmap.
pub const D2D1_BITMAP_PROPERTIES = extern struct {
    pixelFormat: D2D1_PIXEL_FORMAT,
    dpiX: f32,
    dpiY: f32,
};

/// Contains the position and color of a gradient stop.
pub const D2D1_GRADIENT_STOP = extern struct {
    position: f32,
    color: D3DCOLORVALUE,
};

/// Describes the opacity and transformation of a brush.
pub const D2D1_BRUSH_PROPERTIES = extern struct {
    opacity: f32,
    transform: D2D1_MATRIX_3X2_F,
};

/// Describes the extend modes and the interpolation mode of an ID2D1BitmapBrush.
pub const D2D1_BITMAP_BRUSH_PROPERTIES = extern struct {
    extendModeX: D2D1_EXTEND_MODE,
    extendModeY: D2D1_EXTEND_MODE,
    interpolationMode: D2D1_BITMAP_INTERPOLATION_MODE,
};

/// Contains the starting point and endpoint of the gradient axis for an
/// ID2D1LinearGradientBrush.
pub const D2D1_LINEAR_GRADIENT_BRUSH_PROPERTIES = extern struct {
    startPoint: D2D1_POINT_2F,
    endPoint: D2D1_POINT_2F,
};

/// Contains the gradient origin offset and the size and position of the gradient
/// ellipse for an ID2D1RadialGradientBrush.
pub const D2D1_RADIAL_GRADIENT_BRUSH_PROPERTIES = extern struct {
    center: D2D1_POINT_2F,
    gradientOriginOffset: D2D1_POINT_2F,
    radiusX: f32,
    radiusY: f32,
};

/// Differentiates which of the two possible arcs could match the given arc
/// parameters.
pub const D2D1_ARC_SIZE = extern enum(u32) {
    SMALL = 0,
    LARGE = 1,
    FORCE_DWORD = 0xffffffff,
};

/// Enum which describes the drawing of the ends of a line.
pub const D2D1_CAP_STYLE = extern enum(u32) {
    /// Flat line cap.
    FLAT = 0,

    /// Square line cap.
    SQUARE = 1,

    /// Round line cap.
    ROUND = 2,

    /// Triangle line cap.
    TRIANGLE = 3,
    FORCE_DWORD = 0xffffffff,
};

/// Describes the sequence of dashes and gaps in a stroke.
pub const D2D1_DASH_STYLE = extern enum(u32) {
    SOLID = 0,
    DASH = 1,
    DOT = 2,
    DASH_DOT = 3,
    DASH_DOT_DOT = 4,
    CUSTOM = 5,
    FORCE_DWORD = 0xffffffff,
};

/// Enum which describes the drawing of the corners on the line.
pub const D2D1_LINE_JOIN = extern enum(u32) {
    /// Miter join.
    MITER = 0,

    /// Bevel join.
    BEVEL = 1,

    /// Round join.
    ROUND = 2,

    /// Miter/Bevel join.
    MITER_OR_BEVEL = 3,
    FORCE_DWORD = 0xffffffff,
};

/// This enumeration describes the type of combine operation to be performed.
pub const D2D1_COMBINE_MODE = extern enum(u32) {
    /// Produce a geometry representing the set of points contained in either the first
    /// or the second geometry.
    UNION = 0,

    /// Produce a geometry representing the set of points common to the first and the
    /// second geometries.
    INTERSECT = 1,

    /// Produce a geometry representing the set of points contained in the first
    /// geometry or the second geometry, but not both.
    XOR = 2,

    /// Produce a geometry representing the set of points contained in the first
    /// geometry but not the second geometry.
    EXCLUDE = 3,
    FORCE_DWORD = 0xffffffff,
};

/// Describes how one geometry object is spatially related to another geometry
/// object.
pub const D2D1_GEOMETRY_RELATION = extern enum(u32) {
    /// The relation between the geometries couldn't be determined. This value is never
    /// returned by any D2D method.
    UNKNOWN = 0,

    /// The two geometries do not intersect at all.
    DISJOINT = 1,

    /// The passed in geometry is entirely contained by the object.
    IS_CONTAINED = 2,

    /// The object entirely contains the passed in geometry.
    CONTAINS = 3,

    /// The two geometries overlap but neither completely contains the other.
    OVERLAP = 4,
    FORCE_DWORD = 0xffffffff,
};

/// Specifies how simple the output of a simplified geometry sink should be.
pub const D2D1_GEOMETRY_SIMPLIFICATION_OPTION = extern enum(u32) {
    CUBICS_AND_LINES = 0,
    LINES = 1,
    FORCE_DWORD = 0xffffffff,
};

/// Indicates whether the given figure is filled or hollow.
pub const D2D1_FIGURE_BEGIN = extern enum(u32) {
    FILLED = 0,
    HOLLOW = 1,
    FORCE_DWORD = 0xffffffff,
};

/// Indicates whether the figure is open or closed on its end point.
pub const D2D1_FIGURE_END = extern enum(u32) {
    OPEN = 0,
    CLOSED = 1,
    FORCE_DWORD = 0xffffffff,
};

/// Describes a cubic bezier in a path.
pub const D2D1_BEZIER_SEGMENT = extern struct {
    point1: D2D1_POINT_2F,
    point2: D2D1_POINT_2F,
    point3: D2D1_POINT_2F,
};

/// Describes a triangle.
pub const D2D1_TRIANGLE = extern struct {
    point1: D2D1_POINT_2F,
    point2: D2D1_POINT_2F,
    point3: D2D1_POINT_2F,
};

/// Indicates whether the given segment should be stroked, or, if the join between
/// self segment and the previous one should be smooth.
pub const D2D1_PATH_SEGMENT = extern enum(u32) {
    NONE = 0x00000000,
    FORCE_UNSTROKED = 0x00000001,
    FORCE_ROUND_LINE_JOIN = 0x00000002,
    FORCE_DWORD = 0xffffffff,
};

/// Defines the direction that an elliptical arc is drawn.
pub const D2D1_SWEEP_DIRECTION = extern enum(u32) {
    COUNTER_CLOCKWISE = 0,
    CLOCKWISE = 1,
    FORCE_DWORD = 0xffffffff,
};

/// Specifies how the intersecting areas of geometries or figures are combined to
/// form the area of the composite geometry.
pub const D2D1_FILL_MODE = extern enum(u32) {
    ALTERNATE = 0,
    WINDING = 1,
    FORCE_DWORD = 0xffffffff,
};

/// Describes an arc that is defined as part of a path.
pub const D2D1_ARC_SEGMENT = extern struct {
    point: D2D1_POINT_2F,
    size: D2D1_SIZE_F,
    rotationAngle: f32,
    sweepDirection: D2D1_SWEEP_DIRECTION,
    arcSize: D2D1_ARC_SIZE,
};

/// Contains the control point and end point for a quadratic Bezier segment.
pub const D2D1_QUADRATIC_BEZIER_SEGMENT = extern struct {
    point1: D2D1_POINT_2F,
    point2: D2D1_POINT_2F,
};

/// Contains the center point, x-radius, and y-radius of an ellipse.
pub const D2D1_ELLIPSE = extern struct {
    point: D2D1_POINT_2F,
    radiusX: f32,
    radiusY: f32,
};

/// Contains the dimensions and corner radii of a rounded rectangle.
pub const D2D1_ROUNDED_RECT = extern struct {
    rect: D2D1_RECT_F,
    radiusX: f32,
    radiusY: f32,
};

/// Properties, aside from the width, that allow geometric penning to be specified.
pub const D2D1_STROKE_STYLE_PROPERTIES = extern struct {
    startCap: D2D1_CAP_STYLE,
    endCap: D2D1_CAP_STYLE,
    dashCap: D2D1_CAP_STYLE,
    lineJoin: D2D1_LINE_JOIN,
    miterLimit: f32,
    dashStyle: D2D1_DASH_STYLE,
    dashOffset: f32,
};

/// Specified options that can be applied when a layer resource is applied to create
/// a layer.
pub const D2D1_LAYER_OPTIONS = extern enum(u32) {
    NONE = 0x00000000,

    /// The layer will render correctly for ClearType text. If the render target was set
    /// to ClearType previously, the layer will continue to render ClearType. If the
    /// render target was set to ClearType and self option is not specified, the render
    /// target will be set to render gray-scale until the layer is popped. The caller
    /// can override self default by calling SetTextAntialiasMode while within the
    /// layer. This flag is slightly slower than the default.
    INITIALIZE_FOR_CLEARTYPE = 0x00000001,
    FORCE_DWORD = 0xffffffff,
};

/// Contains the content bounds, mask information, opacity settings, and other
/// options for a layer resource.
pub const D2D1_LAYER_PARAMETERS = extern struct {
    /// The rectangular clip that will be applied to the layer. The clip is affected by
    /// the world transform. Content outside of the content bounds will not render.
    contentBounds: D2D1_RECT_F,

    /// A general mask that can be optionally applied to the content. Content not inside
    /// the fill of the mask will not be rendered.
    geometricMask: ID2D1Geometry,

    /// Specifies whether the mask should be aliased or antialiased.
    maskAntialiasMode: D2D1_ANTIALIAS_MODE,

    /// An additional transform that may be applied to the mask in addition to the
    /// current world transform.
    maskTransform: D2D1_MATRIX_3X2_F,

    /// The opacity with which all of the content in the layer will be blended back to
    /// the target when the layer is popped.
    opacity: f32,

    /// An additional brush that can be applied to the layer. Only the opacity channel
    /// is sampled from self brush and multiplied both with the layer content and the
    /// over-all layer opacity.
    opacityBrush: ID2D1Brush,

    /// Specifies if ClearType will be rendered into the layer.
    layerOptions: D2D1_LAYER_OPTIONS,
};

/// Describes whether a window is occluded.
pub const D2D1_WINDOW_STATE = extern enum(u32) {
    NONE = 0x0000000,
    OCCLUDED = 0x0000001,
    FORCE_DWORD = 0xffffffff,
};

/// Describes whether a render target uses hardware or software rendering, or if
/// Direct2D should select the rendering mode.
pub const D2D1_RENDER_TARGET_TYPE = extern enum(u32) {
    /// D2D is free to choose the render target type for the caller.
    DEFAULT = 0,

    /// The render target will render using the CPU.
    SOFTWARE = 1,

    /// The render target will render using the GPU.
    HARDWARE = 2,
    FORCE_DWORD = 0xffffffff,
};

/// Describes the minimum DirectX support required for hardware rendering by a
/// render target.
pub const D2D1_FEATURE_LEVEL = extern enum(u32) {
    /// The caller does not require a particular underlying D3D device level.
    _DEFAULT = 0,

    /// The D3D device level is DX9 compatible.
    _9 = @enumToInt(D3D_FEATURE_LEVEL.D3D_FEATURE_LEVEL_9_1),

    /// The D3D device level is DX10 compatible.
    _10 = @enumToInt(D3D_FEATURE_LEVEL.D3D_FEATURE_LEVEL_10_0),
    _FORCE_DWORD = 0xffffffff,
};

/// Describes how a render target is remoted and whether it should be
/// GDI-compatible. This enumeration allows a bitwise combination of its member
/// values.
pub const D2D1_RENDER_TARGET_USAGE = extern enum(u32) {
    NONE = 0x00000000,

    /// Rendering will occur locally, if a terminal-services session is established, the
    /// bitmap updates will be sent to the terminal services client.
    FORCE_BITMAP_REMOTING = 0x00000001,

    /// The render target will allow a call to GetDC on the ID2D1GdiInteropRenderTarget
    /// interface. Rendering will also occur locally.
    GDI_COMPATIBLE = 0x00000002,
    FORCE_DWORD = 0xffffffff,
};

/// Describes how present should behave.
pub const D2D1_PRESENT_OPTIONS = extern enum(u32) {
    NONE = 0x00000000,

    /// Keep the target contents intact through present.
    RETAIN_CONTENTS = 0x00000001,

    /// Do not wait for display refresh to commit changes to display.
    IMMEDIATELY = 0x00000002,
    FORCE_DWORD = 0xffffffff,
};

/// Contains rendering options (hardware or software), pixel format, DPI
/// information, remoting options, and Direct3D support requirements for a render
/// target.
pub const D2D1_RENDER_TARGET_PROPERTIES = extern struct {
    _type: D2D1_RENDER_TARGET_TYPE,
    pixelFormat: D2D1_PIXEL_FORMAT,
    dpiX: f32,
    dpiY: f32,
    usage: D2D1_RENDER_TARGET_USAGE,
    minLevel: D2D1_FEATURE_LEVEL,
};

/// Contains the HWND, pixel size, and presentation options for an
/// ID2D1HwndRenderTarget.
pub const D2D1_HWND_RENDER_TARGET_PROPERTIES = extern struct {
    hwnd: *c_void,
    pixelSize: D2D1_SIZE_U,
    presentOptions: D2D1_PRESENT_OPTIONS,
};

/// Specifies additional features supportable by a compatible render target when it
/// is created. This enumeration allows a bitwise combination of its member values.
pub const D2D1_COMPATIBLE_RENDER_TARGET_OPTIONS = extern enum(u32) {
    NONE = 0x00000000,

    /// The compatible render target will allow a call to GetDC on the
    /// ID2D1GdiInteropRenderTarget interface. This can be specified even if the parent
    /// render target is not GDI compatible.
    GDI_COMPATIBLE = 0x00000001,
    FORCE_DWORD = 0xffffffff,
};

/// Allows the drawing state to be atomically created. This also specifies the
/// drawing state that is saved into an IDrawingStateBlock object.
pub const D2D1_DRAWING_STATE_DESCRIPTION = extern struct {
    antialiasMode: D2D1_ANTIALIAS_MODE,
    textAntialiasMode: D2D1_TEXT_ANTIALIAS_MODE,
    tag1: u64,
    tag2: u64,
    transform: D2D1_MATRIX_3X2_F,
};

/// Specifies how a device context is initialized for GDI rendering when it is
/// retrieved from the render target.
pub const D2D1_DC_INITIALIZE_MODE = extern enum(u32) {
    /// The contents of the D2D render target will be copied to the DC.
    COPY = 0,

    /// The contents of the DC will be cleared.
    CLEAR = 1,
    FORCE_DWORD = 0xffffffff,
};

/// Indicates the debug level to be output by the debug layer.
pub const D2D1_DEBUG_LEVEL = extern enum(u32) {
    NONE = 0,
    ERROR = 1,
    WARNING = 2,
    INFORMATION = 3,
    FORCE_DWORD = 0xffffffff,
};

/// Specifies the threading model of the created factory and all of its derived
/// resources.
pub const D2D1_FACTORY_TYPE = extern enum(u32) {
    /// The resulting factory and derived resources may only be invoked serially.
    /// Reference counts on resources are interlocked, however, resource and render
    /// target state is not protected from multi-threaded access.
    SINGLE_THREADED = 0,

    /// The resulting factory may be invoked from multiple threads. Returned resources
    /// use interlocked reference counting and their state is protected.
    MULTI_THREADED = 1,
    FORCE_DWORD = 0xffffffff,
};

/// Allows additional parameters for factory creation.
pub const D2D1_FACTORY_OPTIONS = extern struct {
    /// Requests a certain level of debugging information from the debug layer. This
    /// parameter is ignored if the debug layer DLL is not present.
    debugLevel: D2D1_DEBUG_LEVEL,
};

pub const ID2D1Resource = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("2cd90691-12e2-11dc-9fed-001143a055f9");
    pub const Vtbl = extern struct {
        // IUnknown
        iunknown: IUnknown.Vtbl,

        // ID2D1Resource
        GetFactory: fn (self: *Self, factory: *?*ID2D1Factory) callconv(.Stdcall) void,
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

    pub inline fn GetFactory(self: *Self, factory: *?*ID2D1Factory) void {
        return self.lpVtbl.*.GetFactory(self, factory);
    }
};

pub const ID2D1Image = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("65019f75-8da2-497c-b32c-dfa34e48ede6");
    pub const Vtbl = extern struct {
        // ID2D1Resource
        id2d1resource: ID2D1Resource.Vtbl,

        // ID2D1Image
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

    pub inline fn GetFactory(self: *Self, factory: *?*ID2D1Factory) void {
        return @ptrCast(*ID2D1Resource, self).GetFactory(factory);
    }
};

pub const ID2D1Bitmap = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("a2296057-ea42-4099-983b-539fb6505426");
    pub const Vtbl = extern struct {
        // ID2D1Image
        id2d1image: ID2D1Image.Vtbl,

        // ID2D1Bitmap
        GetSize: fn (self: *Self) callconv(.Stdcall) D2D1_SIZE_F,
        GetPixelSize: fn (self: *Self) callconv(.Stdcall) D2D1_SIZE_U,
        GetPixelFormat: fn (self: *Self) callconv(.Stdcall) D2D1_PIXEL_FORMAT,
        GetDpi: fn (self: *Self, dpiX: *f32, dpiY: *f32) callconv(.Stdcall) void,
        CopyFromBitmap: fn (self: *Self, destPoint: ?*const D2D1_POINT_2U, bitmap: *ID2D1Bitmap, srcRect: ?*const D2D1_RECT_U) callconv(.Stdcall) i32,
        CopyFromRenderTarget: fn (self: *Self, destPoint: ?*const D2D1_POINT_2U, renderTarget: *ID2D1RenderTarget, srcRect: ?*const D2D1_RECT_U) callconv(.Stdcall) i32,
        CopyFromMemory: fn (self: *Self, dstRect: ?*const D2D1_RECT_U, srcData: *const c_void, pitch: u32) callconv(.Stdcall) i32,
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

    pub inline fn GetFactory(self: *Self, factory: *?*ID2D1Factory) void {
        return @ptrCast(*ID2D1Resource, self).GetFactory(factory);
    }

    pub inline fn GetSize(self: *Self) D2D1_SIZE_F {
        return self.lpVtbl.*.GetSize(self);
    }

    pub inline fn GetPixelSize(self: *Self) D2D1_SIZE_U {
        return self.lpVtbl.*.GetPixelSize(self);
    }

    pub inline fn GetPixelFormat(self: *Self) D2D1_PIXEL_FORMAT {
        return self.lpVtbl.*.GetPixelFormat(self);
    }

    pub inline fn GetDpi(self: *Self, dpiX: *f32, dpiY: *f32) void {
        return self.lpVtbl.*.GetDpi(self, dpiX, dpiY);
    }

    pub inline fn CopyFromBitmap(
        self: *Self,
        destPoint: ?*const D2D1_POINT_2U,
        bitmap: *ID2D1Bitmap,
        srcRect: ?*const D2D1_RECT_U,
    ) i32 {
        return self.lpVtbl.*.CopyFromBitmap(
            self,
            destPoint,
            bitmap,
            srcRect,
        );
    }

    pub inline fn CopyFromRenderTarget(
        self: *Self,
        destPoint: ?*const D2D1_POINT_2U,
        renderTarget: *ID2D1RenderTarget,
        srcRect: ?*const D2D1_RECT_U,
    ) i32 {
        return self.lpVtbl.*.CopyFromRenderTarget(
            self,
            destPoint,
            renderTarget,
            srcRect,
        );
    }

    pub inline fn CopyFromMemory(
        self: *Self,
        dstRect: ?*const D2D1_RECT_U,
        srcData: *const c_void,
        pitch: u32,
    ) i32 {
        return self.lpVtbl.*.CopyFromMemory(
            self,
            dstRect,
            srcData,
            pitch,
        );
    }
};

pub const ID2D1GradientStopCollection = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("2cd906a7-12e2-11dc-9fed-001143a055f9");
    pub const Vtbl = extern struct {
        // ID2D1Resource
        id2d1resource: ID2D1Resource.Vtbl,

        // ID2D1GradientStopCollection
        GetGradientStopCount: fn (self: *Self) callconv(.Stdcall) u32,
        GetGradientStops: fn (self: *Self, gradientStops: [*]D2D1_GRADIENT_STOP, gradientStopsCount: u32) callconv(.Stdcall) void,
        GetColorInterpolationGamma: fn (self: *Self) callconv(.Stdcall) D2D1_GAMMA,
        GetExtendMode: fn (self: *Self) callconv(.Stdcall) D2D1_EXTEND_MODE,
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

    pub inline fn GetFactory(self: *Self, factory: *?*ID2D1Factory) void {
        return @ptrCast(*ID2D1Resource, self).GetFactory(factory);
    }

    pub inline fn GetGradientStopCount(self: *Self) u32 {
        return self.lpVtbl.*.GetGradientStopCount(self);
    }

    pub inline fn GetGradientStops(self: *Self, gradientStops: []D2D1_GRADIENT_STOP) void {
        return self.lpVtbl.*.GetGradientStops(
            self,
            gradientStops.ptr,
            @truncate(u32, gradientStops.len),
        );
    }

    pub inline fn GetColorInterpolationGamma(self: *Self) D2D1_GAMMA {
        return self.lpVtbl.*.GetColorInterpolationGamma(self);
    }

    pub inline fn GetExtendMode(self: *Self) D2D1_EXTEND_MODE {
        return self.lpVtbl.*.GetExtendMode(self);
    }
};

pub const ID2D1Brush = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("2cd906a8-12e2-11dc-9fed-001143a055f9");
    pub const Vtbl = extern struct {
        // ID2D1Resource
        id2d1resource: ID2D1Resource.Vtbl,

        // ID2D1Brush
        SetOpacity: fn (self: *Self, opacity: f32) callconv(.Stdcall) void,
        SetTransform: fn (self: *Self, transform: *const D2D1_MATRIX_3X2_F) callconv(.Stdcall) void,
        GetOpacity: fn (self: *Self) callconv(.Stdcall) f32,
        GetTransform: fn (self: *Self, transform: *D2D1_MATRIX_3X2_F) callconv(.Stdcall) void,
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

    pub inline fn GetFactory(self: *Self, factory: *?*ID2D1Factory) void {
        return @ptrCast(*ID2D1Resource, self).GetFactory(factory);
    }

    pub inline fn SetOpacity(self: *Self, opacity: f32) void {
        return self.lpVtbl.*.SetOpacity(self, opacity);
    }

    pub inline fn SetTransform(self: *Self, transform: *const D2D1_MATRIX_3X2_F) void {
        return self.lpVtbl.*.SetTransform(self, transform);
    }

    pub inline fn GetOpacity(self: *Self) f32 {
        return self.lpVtbl.*.GetOpacity(self);
    }

    pub inline fn GetTransform(self: *Self, transform: *D2D1_MATRIX_3X2_F) void {
        return self.lpVtbl.*.GetTransform(self, transform);
    }
};

pub const ID2D1BitmapBrush = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("2cd906aa-12e2-11dc-9fed-001143a055f9");
    pub const Vtbl = extern struct {
        // ID2D1Brush
        id2d1brush: ID2D1Brush.Vtbl,

        // ID2D1BitmapBrush
        SetExtendModeX: fn (self: *Self, extendModeX: D2D1_EXTEND_MODE) callconv(.Stdcall) void,
        SetExtendModeY: fn (self: *Self, extendModeY: D2D1_EXTEND_MODE) callconv(.Stdcall) void,
        SetInterpolationMode: fn (self: *Self, interpolationMode: D2D1_BITMAP_INTERPOLATION_MODE) callconv(.Stdcall) void,
        SetBitmap: fn (self: *Self, bitmap: ?*ID2D1Bitmap) callconv(.Stdcall) void,
        GetExtendModeX: fn (self: *Self) callconv(.Stdcall) D2D1_EXTEND_MODE,
        GetExtendModeY: fn (self: *Self) callconv(.Stdcall) D2D1_EXTEND_MODE,
        GetInterpolationMode: fn (self: *Self) callconv(.Stdcall) D2D1_BITMAP_INTERPOLATION_MODE,
        GetBitmap: fn (self: *Self, bitmap: *?*ID2D1Bitmap) callconv(.Stdcall) void,
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

    pub inline fn GetFactory(self: *Self, factory: *?*ID2D1Factory) void {
        return @ptrCast(*ID2D1Resource, self).GetFactory(factory);
    }

    pub inline fn SetOpacity(self: *Self, opacity: f32) void {
        return @ptrCast(*ID2D1Brush, self).SetOpacity(opacity);
    }

    pub inline fn SetTransform(self: *Self, transform: *const D2D1_MATRIX_3X2_F) void {
        return @ptrCast(*ID2D1Brush, self).SetTransform(transform);
    }

    pub inline fn GetOpacity(self: *Self) f32 {
        return @ptrCast(*ID2D1Brush, self).GetOpacity();
    }

    pub inline fn GetTransform(self: *Self, transform: *D2D1_MATRIX_3X2_F) void {
        return @ptrCast(*ID2D1Brush, self).GetTransform(transform);
    }

    pub inline fn SetExtendModeX(self: *Self, extendModeX: D2D1_EXTEND_MODE) void {
        return self.lpVtbl.*.SetExtendModeX(self, extendModeX);
    }

    pub inline fn SetExtendModeY(self: *Self, extendModeY: D2D1_EXTEND_MODE) void {
        return self.lpVtbl.*.SetExtendModeY(self, extendModeY);
    }

    pub inline fn SetInterpolationMode(
        self: *Self,
        interpolationMode: D2D1_BITMAP_INTERPOLATION_MODE,
    ) void {
        return self.lpVtbl.*.SetInterpolationMode(self, interpolationMode);
    }

    pub inline fn SetBitmap(self: *Self, bitmap: ?*ID2D1Bitmap) void {
        return self.lpVtbl.*.SetBitmap(self, bitmap);
    }

    pub inline fn GetExtendModeX(self: *Self) D2D1_EXTEND_MODE {
        return self.lpVtbl.*.GetExtendModeX(self);
    }

    pub inline fn GetExtendModeY(self: *Self) D2D1_EXTEND_MODE {
        return self.lpVtbl.*.GetExtendModeY(self);
    }

    pub inline fn GetInterpolationMode(self: *Self) D2D1_BITMAP_INTERPOLATION_MODE {
        return self.lpVtbl.*.GetInterpolationMode(self);
    }

    pub inline fn GetBitmap(self: *Self, bitmap: *?*ID2D1Bitmap) void {
        return self.lpVtbl.*.GetBitmap(self,bitmap);
    }
};

pub const ID2D1SolidColorBrush = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("2cd906a9-12e2-11dc-9fed-001143a055f9");
    pub const Vtbl = extern struct {
        // ID2D1Brush
        id2d1brush: ID2D1Brush.Vtbl,

        // ID2D1SolidColorBrush
        SetColor: fn (self: *Self, color: *const D3DCOLORVALUE) callconv(.Stdcall) void,
        GetColor: fn (self: *Self) callconv(.Stdcall) D3DCOLORVALUE,
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

    pub inline fn GetFactory(self: *Self, factory: *?*ID2D1Factory) void {
        return @ptrCast(*ID2D1Resource, self).GetFactory(factory);
    }

    pub inline fn SetOpacity(self: *Self, opacity: f32) void {
        return @ptrCast(*ID2D1Brush, self).SetOpacity(opacity);
    }

    pub inline fn SetTransform(self: *Self, transform: *const D2D1_MATRIX_3X2_F) void {
        return @ptrCast(*ID2D1Brush, self).SetTransform(transform);
    }

    pub inline fn GetOpacity(self: *Self) f32 {
        return @ptrCast(*ID2D1Brush, self).GetOpacity();
    }

    pub inline fn GetTransform(self: *Self, transform: *D2D1_MATRIX_3X2_F) void {
        return @ptrCast(*ID2D1Brush, self).GetTransform(transform);
    }

    pub inline fn SetColor(self: *Self, color: *const D3DCOLORVALUE) void {
        return self.lpVtbl.*.SetColor(self, color);
    }

    pub inline fn GetColor(self: *Self) D3DCOLORVALUE {
        return self.lpVtbl.*.GetColor(self);
    }
};

pub const ID2D1LinearGradientBrush = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("2cd906ab-12e2-11dc-9fed-001143a055f9");
    pub const Vtbl = extern struct {
        // ID2D1Brush
        id2d1brush: ID2D1Brush.Vtbl,

        // ID2D1LinearGradientBrush
        SetStartPoint: fn (self: *Self, startPoint: D2D1_POINT_2F) callconv(.Stdcall) void,
        SetEndPoint: fn (self: *Self, endPoint: D2D1_POINT_2F) callconv(.Stdcall) void,
        GetStartPoint: fn (self: *Self) callconv(.Stdcall) D2D1_POINT_2F,
        GetEndPoint: fn (self: *Self) callconv(.Stdcall) D2D1_POINT_2F,
        GetGradientStopCollection: fn (self: *Self, gradientStopCollection: *?*ID2D1GradientStopCollection) callconv(.Stdcall) void,
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

    pub inline fn GetFactory(self: *Self, factory: *?*ID2D1Factory) void {
        return @ptrCast(*ID2D1Resource, self).GetFactory(factory);
    }

    pub inline fn SetOpacity(self: *Self, opacity: f32) void {
        return @ptrCast(*ID2D1Brush, self).SetOpacity(opacity);
    }

    pub inline fn SetTransform(self: *Self, transform: *const D2D1_MATRIX_3X2_F) void {
        return @ptrCast(*ID2D1Brush, self).SetTransform(transform);
    }

    pub inline fn GetOpacity(self: *Self) f32 {
        return @ptrCast(*ID2D1Brush, self).GetOpacity();
    }

    pub inline fn GetTransform(self: *Self, transform: *D2D1_MATRIX_3X2_F) void {
        return @ptrCast(*ID2D1Brush, self).GetTransform(transform);
    }

    pub inline fn SetStartPoint(self: *Self, startPoint: D2D1_POINT_2F) void {
        return self.lpVtbl.*.SetStartPoint(self, startPoint);
    }

    pub inline fn SetEndPoint(self: *Self, endPoint: D2D1_POINT_2F) void {
        return self.lpVtbl.*.SetEndPoint(self, endPoint);
    }

    pub inline fn GetStartPoint(self: *Self) D2D1_POINT_2F {
        return self.lpVtbl.*.GetStartPoint(self);
    }

    pub inline fn GetEndPoint(self: *Self) D2D1_POINT_2F {
        return self.lpVtbl.*.GetEndPoint(self);
    }

    pub inline fn GetGradientStopCollection(
        self: *Self,
        gradientStopCollection: *?*ID2D1GradientStopCollection,
    ) void {
        return self.lpVtbl.*.GetGradientStopCollection(self, gradientStopCollection);
    }
};

pub const ID2D1RadialGradientBrush = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("2cd906ac-12e2-11dc-9fed-001143a055f9");
    pub const Vtbl = extern struct {
        // ID2D1Brush
        id2d1brush: ID2D1Brush.Vtbl,

        // ID2D1RadialGradientBrush
        SetCenter: fn (self: *Self, center: D2D1_POINT_2F) callconv(.Stdcall) void,
        SetGradientOriginOffset: fn (self: *Self, gradientOriginOffset: D2D1_POINT_2F) callconv(.Stdcall) void,
        SetRadiusX: fn (self: *Self, radiusX: f32) callconv(.Stdcall) void,
        SetRadiusY: fn (self: *Self, radiusY: f32) callconv(.Stdcall) void,
        GetCenter: fn (self: *Self) callconv(.Stdcall) D2D1_POINT_2F,
        GetGradientOriginOffset: fn (self: *Self) callconv(.Stdcall) D2D1_POINT_2F,
        GetRadiusX: fn (self: *Self) callconv(.Stdcall) f32,
        GetRadiusY: fn (self: *Self) callconv(.Stdcall) f32,
        GetGradientStopCollection: fn (self: *Self, gradientStopCollection: *?*ID2D1GradientStopCollection) callconv(.Stdcall) void,
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

    pub inline fn GetFactory(self: *Self, factory: *?*ID2D1Factory) void {
        return @ptrCast(*ID2D1Resource, self).GetFactory(factory);
    }

    pub inline fn SetOpacity(self: *Self, opacity: f32) void {
        return @ptrCast(*ID2D1Brush, self).SetOpacity(opacity);
    }

    pub inline fn SetTransform(self: *Self, transform: *const D2D1_MATRIX_3X2_F) void {
        return @ptrCast(*ID2D1Brush, self).SetTransform(transform);
    }

    pub inline fn GetOpacity(self: *Self) f32 {
        return @ptrCast(*ID2D1Brush, self).GetOpacity();
    }

    pub inline fn GetTransform(self: *Self, transform: *D2D1_MATRIX_3X2_F) void {
        return @ptrCast(*ID2D1Brush, self).GetTransform(transform);
    }

    pub inline fn SetCenter(self: *Self, center: D2D1_POINT_2F) void {
        return self.lpVtbl.*.SetCenter(self, center);
    }

    pub inline fn SetGradientOriginOffset(self: *Self, gradientOriginOffset: D2D1_POINT_2F) void {
        return self.lpVtbl.*.SetGradientOriginOffset(self, gradientOriginOffset);
    }

    pub inline fn SetRadiusX(self: *Self, radiusX: f32) void {
        return self.lpVtbl.*.SetRadiusX(self, radiusX);
    }

    pub inline fn SetRadiusY(self: *Self, radiusY: f32) void {
        return self.lpVtbl.*.SetRadiusY(self, radiusY);
    }

    pub inline fn GetCenter(self: *Self) D2D1_POINT_2F {
        return self.lpVtbl.*.GetCenter(self);
    }

    pub inline fn GetGradientOriginOffset(self: *Self) D2D1_POINT_2F {
        return self.lpVtbl.*.GetGradientOriginOffset(self);
    }

    pub inline fn GetRadiusX(self: *Self) f32 {
        return self.lpVtbl.*.GetRadiusX(self);
    }

    pub inline fn GetRadiusY(self: *Self) f32 {
        return self.lpVtbl.*.GetRadiusY(self);
    }

    pub inline fn GetGradientStopCollection(self: *Self, gradientStopCollection: *?*ID2D1GradientStopCollection) void {
        return self.lpVtbl.*.GetGradientStopCollection(self, gradientStopCollection);
    }
};

pub const ID2D1StrokeStyle = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("2cd9069d-12e2-11dc-9fed-001143a055f9");
    pub const Vtbl = extern struct {
        // ID2D1Resource
        id2d1resource: ID2D1Resource.Vtbl,

        // ID2D1StrokeStyle
        GetStartCap: fn (self: *Self) callconv(.Stdcall) D2D1_CAP_STYLE,
        GetEndCap: fn (self: *Self) callconv(.Stdcall) D2D1_CAP_STYLE,
        GetDashCap: fn (self: *Self) callconv(.Stdcall) D2D1_CAP_STYLE,
        GetMiterLimit: fn (self: *Self) callconv(.Stdcall) f32,
        GetLineJoin: fn (self: *Self) callconv(.Stdcall) D2D1_LINE_JOIN,
        GetDashOffset: fn (self: *Self) callconv(.Stdcall) f32,
        GetDashStyle: fn (self: *Self) callconv(.Stdcall) D2D1_DASH_STYLE,
        GetDashesCount: fn (self: *Self) callconv(.Stdcall) u32,
        GetDashes: fn (self: *Self, dashes: [*]f32, dashesCount: u32) callconv(.Stdcall) void,
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

    pub inline fn GetFactory(self: *Self, factory: *?*ID2D1Factory) void {
        return @ptrCast(*ID2D1Resource, self).GetFactory(factory);
    }

    pub inline fn GetStartCap(self: *Self) D2D1_CAP_STYLE {
        return self.lpVtbl.*.GetStartCap(self);
    }

    pub inline fn GetEndCap(self: *Self) D2D1_CAP_STYLE {
        return self.lpVtbl.*.GetEndCap(self);
    }

    pub inline fn GetDashCap(self: *Self) D2D1_CAP_STYLE {
        return self.lpVtbl.*.GetDashCap(self);
    }

    pub inline fn GetMiterLimit(self: *Self) f32 {
        return self.lpVtbl.*.GetMiterLimit(self);
    }

    pub inline fn GetLineJoin(self: *Self) D2D1_LINE_JOIN {
        return self.lpVtbl.*.GetLineJoin(self);
    }

    pub inline fn GetDashOffset(self: *Self) f32 {
        return self.lpVtbl.*.GetDashOffset(self);
    }

    pub inline fn GetDashStyle(self: *Self) D2D1_DASH_STYLE {
        return self.lpVtbl.*.GetDashStyle(self);
    }

    pub inline fn GetDashesCount(self: *Self) u32 {
        return self.lpVtbl.*.GetDashesCount(self);
    }

    pub inline fn GetDashes(self: *Self, dashes: []f32) void {
        return self.lpVtbl.*.GetDashes(self, dashes.ptr, @truncate(u32, dashes.len));
    }
};

pub const ID2D1Geometry = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("2cd906a1-12e2-11dc-9fed-001143a055f9");
    pub const Vtbl = extern struct {
        // ID2D1Resource
        id2d1resource: ID2D1Resource.Vtbl,

        // ID2D1Geometry
        GetBounds: fn (self: *Self, worldTransform: ?*const D2D1_MATRIX_3X2_F, bounds: *D2D1_RECT_F) callconv(.Stdcall) i32,
        GetWidenedBounds: fn (self: *Self, strokeWidth: f32, strokeStyle: ?*ID2D1StrokeStyle, worldTransform: ?*const D2D1_MATRIX_3X2_F, flatteningTolerance: f32, bounds: *D2D1_RECT_F) callconv(.Stdcall) i32,
        StrokeContainsPoint: fn (self: *Self, point: D2D1_POINT_2F, strokeWidth: f32, strokeStyle: ?*ID2D1StrokeStyle, worldTransform: ?*const D2D1_MATRIX_3X2_F, flatteningTolerance: f32, contains: *i32) callconv(.Stdcall) i32,
        FillContainsPoint: fn (self: *Self, point: D2D1_POINT_2F, worldTransform: ?*const D2D1_MATRIX_3X2_F, flatteningTolerance: f32, contains: *i32) callconv(.Stdcall) i32,
        CompareWithGeometry: fn (self: *Self, inputGeometry: *ID2D1Geometry, inputGeometryTransform: ?*const D2D1_MATRIX_3X2_F, flatteningTolerance: f32, relation: *D2D1_GEOMETRY_RELATION) callconv(.Stdcall) i32,
        Simplify: fn (self: *Self, simplificationOption: D2D1_GEOMETRY_SIMPLIFICATION_OPTION, worldTransform: ?*const D2D1_MATRIX_3X2_F, flatteningTolerance: f32, geometrySink: *ID2D1SimplifiedGeometrySink) callconv(.Stdcall) i32,
        Tessellate: fn (self: *Self, worldTransform: ?*const D2D1_MATRIX_3X2_F, flatteningTolerance: f32, tessellationSink: *ID2D1TessellationSink) callconv(.Stdcall) i32,
        CombineWithGeometry: fn (self: *Self, inputGeometry: *ID2D1Geometry, combineMode: D2D1_COMBINE_MODE, inputGeometryTransform: ?*const D2D1_MATRIX_3X2_F, flatteningTolerance: f32, geometrySink: *ID2D1SimplifiedGeometrySink) callconv(.Stdcall) i32,
        Outline: fn (self: *Self, worldTransform: ?*const D2D1_MATRIX_3X2_F, flatteningTolerance: f32, geometrySink: *ID2D1SimplifiedGeometrySink) callconv(.Stdcall) i32,
        ComputeArea: fn (self: *Self, worldTransform: ?*const D2D1_MATRIX_3X2_F, flatteningTolerance: f32, area: *f32) callconv(.Stdcall) i32,
        ComputeLength: fn (self: *Self, worldTransform: ?*const D2D1_MATRIX_3X2_F, flatteningTolerance: f32, length: *f32) callconv(.Stdcall) i32,
        ComputePointAtLength: fn (self: *Self, length: f32, worldTransform: ?*const D2D1_MATRIX_3X2_F, flatteningTolerance: f32, point: ?*D2D1_POINT_2F, unitTangentVector: ?*D2D1_POINT_2F) callconv(.Stdcall) i32,
        Widen: fn (self: *Self, strokeWidth: f32, strokeStyle: ?*ID2D1StrokeStyle, worldTransform: ?*const D2D1_MATRIX_3X2_F, flatteningTolerance: f32, geometrySink: *ID2D1SimplifiedGeometrySink) callconv(.Stdcall) i32,
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

    pub inline fn GetFactory(self: *Self, factory: *?*ID2D1Factory) void {
        return @ptrCast(*ID2D1Resource, self).GetFactory(factory);
    }

    pub inline fn GetBounds(
        self: *Self,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        bounds: *D2D1_RECT_F,
    ) i32 {
        return self.lpVtbl.*.GetBounds(
            self,
            worldTransform,
            bounds,
        );
    }

    pub inline fn GetWidenedBounds(
        self: *Self,
        strokeWidth: f32,
        strokeStyle: ?*ID2D1StrokeStyle,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        bounds: *D2D1_RECT_F,
    ) i32 {
        return self.lpVtbl.*.GetWidenedBounds(
            self,
            strokeWidth,
            strokeStyle,
            worldTransform,
            flatteningTolerance,
            bounds,
        );
    }

    pub inline fn StrokeContainsPoint(
        self: *Self,
        point: D2D1_POINT_2F,
        strokeWidth: f32,
        strokeStyle: ?*ID2D1StrokeStyle,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        contains: *bool,
    ) i32 {
        var contains_aux: i32 = 0;
        const ret = self.lpVtbl.*.StrokeContainsPoint(
            self,
            point,
            strokeWidth,
            strokeStyle,
            worldTransform,
            flatteningTolerance,
            &contains_aux,
        );

        contains.* = contains_aux != 0;
        return ret;
    }

    pub inline fn FillContainsPoint(
        self: *Self,
        point: D2D1_POINT_2F,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        contains: *bool,
    ) i32 {
        var contains_aux: i32 = 0;
        const ret = self.lpVtbl.*.FillContainsPoint(
            self,
            point,
            worldTransform,
            flatteningTolerance,
            &contains_aux,
        );

        contains.* = contains_aux != 0;
        return ret;
    }

    pub inline fn CompareWithGeometry(
        self: *Self,
        inputGeometry: *ID2D1Geometry,
        inputGeometryTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        relation: *D2D1_GEOMETRY_RELATION,
    ) i32 {
        return self.lpVtbl.*.CompareWithGeometry(
            self,
            inputGeometry,
            inputGeometryTransform,
            flatteningTolerance,
            relation,
        );
    }

    pub inline fn Simplify(
        self: *Self,
        simplificationOption: D2D1_GEOMETRY_SIMPLIFICATION_OPTION,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        geometrySink: *ID2D1SimplifiedGeometrySink,
    ) i32 {
        return self.lpVtbl.*.Simplify(
            self,
            simplificationOption,
            worldTransform,
            flatteningTolerance,
            geometrySink,
        );
    }

    pub inline fn Tessellate(
        self: *Self,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        tessellationSink: *ID2D1TessellationSink,
    ) i32 {
        return self.lpVtbl.*.Tessellate(
            self,
            worldTransform,
            flatteningTolerance,
            tessellationSink,
        );
    }

    pub inline fn CombineWithGeometry(
        self: *Self,
        inputGeometry: *ID2D1Geometry,
        combineMode: D2D1_COMBINE_MODE,
        inputGeometryTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        geometrySink: *ID2D1SimplifiedGeometrySink,
    ) i32 {
        return self.lpVtbl.*.CombineWithGeometry(
            self,
            inputGeometry,
            combineMode,
            inputGeometryTransform,
            flatteningTolerance,
            geometrySink,
        );
    }

    pub inline fn Outline(
        self: *Self,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        geometrySink: *ID2D1SimplifiedGeometrySink,
    ) i32 {
        return self.lpVtbl.*.Outline(
            self,
            worldTransform,
            flatteningTolerance,
            geometrySink,
        );
    }

    pub inline fn ComputeArea(
        self: *Self,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        area: *f32,
    ) i32 {
        return self.lpVtbl.*.ComputeArea(
            self,
            worldTransform,
            flatteningTolerance,
            area,
        );
    }

    pub inline fn ComputeLength(
        self: *Self,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        length: *f32,
    ) i32 {
        return self.lpVtbl.*.ComputeLength(
            self,
            worldTransform,
            flatteningTolerance,
            length,
        );
    }

    pub inline fn ComputePointAtLength(
        self: *Self,
        length: f32,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        point: ?*D2D1_POINT_2F,
        unitTangentVector: ?*D2D1_POINT_2F,
    ) i32 {
        return self.lpVtbl.*.ComputePointAtLength(
            self,
            length,
            worldTransform,
            flatteningTolerance,
            point,
            unitTangentVector,
        );
    }

    pub inline fn Widen(
        self: *Self,
        strokeWidth: f32,
        strokeStyle: ?*ID2D1StrokeStyle,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        geometrySink: *ID2D1SimplifiedGeometrySink,
    ) i32 {
        return self.lpVtbl.*.Widen(
            self,
            strokeWidth,
            strokeStyle,
            worldTransform,
            flatteningTolerance,
            geometrySink,
        );
    }
};

pub const ID2D1RectangleGeometry = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("2cd906a2-12e2-11dc-9fed-001143a055f9");
    pub const Vtbl = extern struct {
        // ID2D1Geometry
        id2d1geometry: ID2D1Geometry.Vtbl,

        // ID2D1RectangleGeometry
        GetRect: fn (self: *Self, rect: *D2D1_RECT_F) callconv(.Stdcall) void,
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

    pub inline fn GetFactory(self: *Self, factory: *?*ID2D1Factory) void {
        return @ptrCast(*ID2D1Resource, self).GetFactory(factory);
    }

    pub inline fn GetBounds(
        self: *Self,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        bounds: *D2D1_RECT_F,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).GetBounds(
            worldTransform,
            bounds,
        );
    }

    pub inline fn GetWidenedBounds(
        self: *Self,
        strokeWidth: f32,
        strokeStyle: ?*ID2D1StrokeStyle,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        bounds: *D2D1_RECT_F,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).GetWidenedBounds(
            strokeWidth,
            strokeStyle,
            worldTransform,
            flatteningTolerance,
            bounds,
        );
    }

    pub inline fn StrokeContainsPoint(
        self: *Self,
        point: D2D1_POINT_2F,
        strokeWidth: f32,
        strokeStyle: ?*ID2D1StrokeStyle,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        contains: *bool,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).StrokeContainsPoint(
            point,
            strokeWidth,
            strokeStyle,
            worldTransform,
            flatteningTolerance,
            contains,
        );
    }

    pub inline fn FillContainsPoint(
        self: *Self,
        point: D2D1_POINT_2F,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        contains: *bool,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).FillContainsPoint(
            point,
            worldTransform,
            flatteningTolerance,
            contains,
        );
    }

    pub inline fn CompareWithGeometry(
        self: *Self,
        inputGeometry: *ID2D1Geometry,
        inputGeometryTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        relation: *D2D1_GEOMETRY_RELATION,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).CompareWithGeometry(
            inputGeometry,
            inputGeometryTransform,
            flatteningTolerance,
            relation,
        );
    }

    pub inline fn Simplify(
        self: *Self,
        simplificationOption: D2D1_GEOMETRY_SIMPLIFICATION_OPTION,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        geometrySink: *ID2D1SimplifiedGeometrySink,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).Simplify(
            simplificationOption,
            worldTransform,
            flatteningTolerance,
            geometrySink,
        );
    }

    pub inline fn Tessellate(
        self: *Self,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        tessellationSink: *ID2D1TessellationSink,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).Tessellate(
            worldTransform,
            flatteningTolerance,
            tessellationSink,
        );
    }

    pub inline fn CombineWithGeometry(
        self: *Self,
        inputGeometry: *ID2D1Geometry,
        combineMode: D2D1_COMBINE_MODE,
        inputGeometryTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        geometrySink: *ID2D1SimplifiedGeometrySink,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).CombineWithGeometry(
            inputGeometry,
            combineMode,
            inputGeometryTransform,
            flatteningTolerance,
            geometrySink,
        );
    }

    pub inline fn Outline(
        self: *Self,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        geometrySink: *ID2D1SimplifiedGeometrySink,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).Outline(
            worldTransform,
            flatteningTolerance,
            geometrySink,
        );
    }

    pub inline fn ComputeArea(
        self: *Self,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        area: *f32,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).ComputeArea(
            worldTransform,
            flatteningTolerance,
            area,
        );
    }

    pub inline fn ComputeLength(
        self: *Self,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        length: *f32,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).ComputeLength(
            worldTransform,
            flatteningTolerance,
            length,
        );
    }

    pub inline fn ComputePointAtLength(
        self: *Self,
        length: f32,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        point: ?*D2D1_POINT_2F,
        unitTangentVector: ?*D2D1_POINT_2F,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).ComputePointAtLength(
            length,
            worldTransform,
            flatteningTolerance,
            point,
            unitTangentVector,
        );
    }

    pub inline fn Widen(
        self: *Self,
        strokeWidth: f32,
        strokeStyle: ?*ID2D1StrokeStyle,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        geometrySink: *ID2D1SimplifiedGeometrySink,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).Widen(
            strokeWidth,
            strokeStyle,
            worldTransform,
            flatteningTolerance,
            geometrySink,
        );
    }

    pub inline fn GetRect(self: *Self, rect: *D2D1_RECT_F) void {
        return self.lpVtbl.*.GetRect(self, rect);
    }
};

pub const ID2D1RoundedRectangleGeometry = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("2cd906a3-12e2-11dc-9fed-001143a055f9");
    pub const Vtbl = extern struct {
        // ID2D1Geometry
        id2d1geometry: ID2D1Geometry.Vtbl,

        // ID2D1RoundedRectangleGeometry
        GetRoundedRect: fn (self: *Self, roundedRect: *D2D1_ROUNDED_RECT) callconv(.Stdcall) void,
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

    pub inline fn GetFactory(self: *Self, factory: *?*ID2D1Factory) void {
        return @ptrCast(*ID2D1Resource, self).GetFactory(factory);
    }

    pub inline fn GetBounds(
        self: *Self,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        bounds: *D2D1_RECT_F,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).GetBounds(
            worldTransform,
            bounds,
        );
    }

    pub inline fn GetWidenedBounds(
        self: *Self,
        strokeWidth: f32,
        strokeStyle: ?*ID2D1StrokeStyle,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        bounds: *D2D1_RECT_F,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).GetWidenedBounds(
            strokeWidth,
            strokeStyle,
            worldTransform,
            flatteningTolerance,
            bounds,
        );
    }

    pub inline fn StrokeContainsPoint(
        self: *Self,
        point: D2D1_POINT_2F,
        strokeWidth: f32,
        strokeStyle: ?*ID2D1StrokeStyle,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        contains: *bool,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).StrokeContainsPoint(
            point,
            strokeWidth,
            strokeStyle,
            worldTransform,
            flatteningTolerance,
            contains,
        );
    }

    pub inline fn FillContainsPoint(
        self: *Self,
        point: D2D1_POINT_2F,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        contains: *bool,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).FillContainsPoint(
            point,
            worldTransform,
            flatteningTolerance,
            contains,
        );
    }

    pub inline fn CompareWithGeometry(
        self: *Self,
        inputGeometry: *ID2D1Geometry,
        inputGeometryTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        relation: *D2D1_GEOMETRY_RELATION,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).CompareWithGeometry(
            inputGeometry,
            inputGeometryTransform,
            flatteningTolerance,
            relation,
        );
    }

    pub inline fn Simplify(
        self: *Self,
        simplificationOption: D2D1_GEOMETRY_SIMPLIFICATION_OPTION,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        geometrySink: *ID2D1SimplifiedGeometrySink,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).Simplify(
            simplificationOption,
            worldTransform,
            flatteningTolerance,
            geometrySink,
        );
    }

    pub inline fn Tessellate(
        self: *Self,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        tessellationSink: *ID2D1TessellationSink,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).Tessellate(
            worldTransform,
            flatteningTolerance,
            tessellationSink,
        );
    }

    pub inline fn CombineWithGeometry(
        self: *Self,
        inputGeometry: *ID2D1Geometry,
        combineMode: D2D1_COMBINE_MODE,
        inputGeometryTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        geometrySink: *ID2D1SimplifiedGeometrySink,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).CombineWithGeometry(
            inputGeometry,
            combineMode,
            inputGeometryTransform,
            flatteningTolerance,
            geometrySink,
        );
    }

    pub inline fn Outline(
        self: *Self,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        geometrySink: *ID2D1SimplifiedGeometrySink,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).Outline(
            worldTransform,
            flatteningTolerance,
            geometrySink,
        );
    }

    pub inline fn ComputeArea(
        self: *Self,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        area: *f32,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).ComputeArea(
            worldTransform,
            flatteningTolerance,
            area,
        );
    }

    pub inline fn ComputeLength(
        self: *Self,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        length: *f32,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).ComputeLength(
            worldTransform,
            flatteningTolerance,
            length,
        );
    }

    pub inline fn ComputePointAtLength(
        self: *Self,
        length: f32,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        point: ?*D2D1_POINT_2F,
        unitTangentVector: ?*D2D1_POINT_2F,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).ComputePointAtLength(
            length,
            worldTransform,
            flatteningTolerance,
            point,
            unitTangentVector,
        );
    }

    pub inline fn Widen(
        self: *Self,
        strokeWidth: f32,
        strokeStyle: ?*ID2D1StrokeStyle,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        geometrySink: *ID2D1SimplifiedGeometrySink,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).Widen(
            strokeWidth,
            strokeStyle,
            worldTransform,
            flatteningTolerance,
            geometrySink,
        );
    }

    pub inline fn GetRoundedRect(self: *Self, roundedRect: *D2D1_ROUNDED_RECT) void {
        return self.lpVtbl.*.GetRoundedRect(self, roundedRect);
    }
};

pub const ID2D1EllipseGeometry = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("2cd906a4-12e2-11dc-9fed-001143a055f9");
    pub const Vtbl = extern struct {
        // ID2D1Geometry
        ID2D1Geometry: ID2D1Geometry.Vtbl,

        // ID2D1EllipseGeometry
        GetEllipse: fn (self: *Self, ellipse: *D2D1_ELLIPSE) callconv(.Stdcall) void,
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

    pub inline fn GetFactory(self: *Self, factory: *?*ID2D1Factory) void {
        return @ptrCast(*ID2D1Resource, self).GetFactory(factory);
    }

    pub inline fn GetBounds(
        self: *Self,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        bounds: *D2D1_RECT_F,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).GetBounds(
            worldTransform,
            bounds,
        );
    }

    pub inline fn GetWidenedBounds(
        self: *Self,
        strokeWidth: f32,
        strokeStyle: ?*ID2D1StrokeStyle,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        bounds: *D2D1_RECT_F,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).GetWidenedBounds(
            strokeWidth,
            strokeStyle,
            worldTransform,
            flatteningTolerance,
            bounds,
        );
    }

    pub inline fn StrokeContainsPoint(
        self: *Self,
        point: D2D1_POINT_2F,
        strokeWidth: f32,
        strokeStyle: ?*ID2D1StrokeStyle,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        contains: *bool,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).StrokeContainsPoint(
            point,
            strokeWidth,
            strokeStyle,
            worldTransform,
            flatteningTolerance,
            contains,
        );
    }

    pub inline fn FillContainsPoint(
        self: *Self,
        point: D2D1_POINT_2F,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        contains: *bool,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).FillContainsPoint(
            point,
            worldTransform,
            flatteningTolerance,
            contains,
        );
    }

    pub inline fn CompareWithGeometry(
        self: *Self,
        inputGeometry: *ID2D1Geometry,
        inputGeometryTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        relation: *D2D1_GEOMETRY_RELATION,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).CompareWithGeometry(
            inputGeometry,
            inputGeometryTransform,
            flatteningTolerance,
            relation,
        );
    }

    pub inline fn Simplify(
        self: *Self,
        simplificationOption: D2D1_GEOMETRY_SIMPLIFICATION_OPTION,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        geometrySink: *ID2D1SimplifiedGeometrySink,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).Simplify(
            simplificationOption,
            worldTransform,
            flatteningTolerance,
            geometrySink,
        );
    }

    pub inline fn Tessellate(
        self: *Self,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        tessellationSink: *ID2D1TessellationSink,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).Tessellate(
            worldTransform,
            flatteningTolerance,
            tessellationSink,
        );
    }

    pub inline fn CombineWithGeometry(
        self: *Self,
        inputGeometry: *ID2D1Geometry,
        combineMode: D2D1_COMBINE_MODE,
        inputGeometryTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        geometrySink: *ID2D1SimplifiedGeometrySink,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).CombineWithGeometry(
            inputGeometry,
            combineMode,
            inputGeometryTransform,
            flatteningTolerance,
            geometrySink,
        );
    }

    pub inline fn Outline(
        self: *Self,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        geometrySink: *ID2D1SimplifiedGeometrySink,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).Outline(
            worldTransform,
            flatteningTolerance,
            geometrySink,
        );
    }

    pub inline fn ComputeArea(
        self: *Self,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        area: *f32,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).ComputeArea(
            worldTransform,
            flatteningTolerance,
            area,
        );
    }

    pub inline fn ComputeLength(
        self: *Self,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        length: *f32,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).ComputeLength(
            worldTransform,
            flatteningTolerance,
            length,
        );
    }

    pub inline fn ComputePointAtLength(
        self: *Self,
        length: f32,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        point: ?*D2D1_POINT_2F,
        unitTangentVector: ?*D2D1_POINT_2F,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).ComputePointAtLength(
            length,
            worldTransform,
            flatteningTolerance,
            point,
            unitTangentVector,
        );
    }

    pub inline fn Widen(
        self: *Self,
        strokeWidth: f32,
        strokeStyle: ?*ID2D1StrokeStyle,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        geometrySink: *ID2D1SimplifiedGeometrySink,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).Widen(
            strokeWidth,
            strokeStyle,
            worldTransform,
            flatteningTolerance,
            geometrySink,
        );
    }

    pub inline fn GetEllipse(self: *Self, ellipse: *D2D1_ELLIPSE) void {
        return self.lpVtbl.*.GetEllipse(self, ellipse);
    }
};

pub const ID2D1GeometryGroup = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("2cd906a6-12e2-11dc-9fed-001143a055f9");
    pub const Vtbl = extern struct {
        // ID2D1Geometry
        id2d1geometry: ID2D1Geometry.Vtbl,

        // ID2D1GeometryGroup
        GetFillMode: fn (self: *Self) callconv(.Stdcall) D2D1_FILL_MODE,
        GetSourceGeometryCount: fn (self: *Self) callconv(.Stdcall) u32,
        GetSourceGeometries: fn (self: *Self, geometries: [*]*ID2D1Geometry, geometriesCount: u32) callconv(.Stdcall) void,
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

    pub inline fn GetFactory(self: *Self, factory: *?*ID2D1Factory) void {
        return @ptrCast(*ID2D1Resource, self).GetFactory(factory);
    }

    pub inline fn GetBounds(
        self: *Self,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        bounds: *D2D1_RECT_F,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).GetBounds(
            worldTransform,
            bounds,
        );
    }

    pub inline fn GetWidenedBounds(
        self: *Self,
        strokeWidth: f32,
        strokeStyle: ?*ID2D1StrokeStyle,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        bounds: *D2D1_RECT_F,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).GetWidenedBounds(
            strokeWidth,
            strokeStyle,
            worldTransform,
            flatteningTolerance,
            bounds,
        );
    }

    pub inline fn StrokeContainsPoint(
        self: *Self,
        point: D2D1_POINT_2F,
        strokeWidth: f32,
        strokeStyle: ?*ID2D1StrokeStyle,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        contains: *bool,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).StrokeContainsPoint(
            point,
            strokeWidth,
            strokeStyle,
            worldTransform,
            flatteningTolerance,
            contains,
        );
    }

    pub inline fn FillContainsPoint(
        self: *Self,
        point: D2D1_POINT_2F,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        contains: *bool,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).FillContainsPoint(
            point,
            worldTransform,
            flatteningTolerance,
            contains,
        );
    }

    pub inline fn CompareWithGeometry(
        self: *Self,
        inputGeometry: *ID2D1Geometry,
        inputGeometryTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        relation: *D2D1_GEOMETRY_RELATION,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).CompareWithGeometry(
            inputGeometry,
            inputGeometryTransform,
            flatteningTolerance,
            relation,
        );
    }

    pub inline fn Simplify(
        self: *Self,
        simplificationOption: D2D1_GEOMETRY_SIMPLIFICATION_OPTION,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        geometrySink: *ID2D1SimplifiedGeometrySink,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).Simplify(
            simplificationOption,
            worldTransform,
            flatteningTolerance,
            geometrySink,
        );
    }

    pub inline fn Tessellate(
        self: *Self,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        tessellationSink: *ID2D1TessellationSink,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).Tessellate(
            worldTransform,
            flatteningTolerance,
            tessellationSink,
        );
    }

    pub inline fn CombineWithGeometry(
        self: *Self,
        inputGeometry: *ID2D1Geometry,
        combineMode: D2D1_COMBINE_MODE,
        inputGeometryTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        geometrySink: *ID2D1SimplifiedGeometrySink,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).CombineWithGeometry(
            inputGeometry,
            combineMode,
            inputGeometryTransform,
            flatteningTolerance,
            geometrySink,
        );
    }

    pub inline fn Outline(
        self: *Self,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        geometrySink: *ID2D1SimplifiedGeometrySink,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).Outline(
            worldTransform,
            flatteningTolerance,
            geometrySink,
        );
    }

    pub inline fn ComputeArea(
        self: *Self,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        area: *f32,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).ComputeArea(
            worldTransform,
            flatteningTolerance,
            area,
        );
    }

    pub inline fn ComputeLength(
        self: *Self,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        length: *f32,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).ComputeLength(
            worldTransform,
            flatteningTolerance,
            length,
        );
    }

    pub inline fn ComputePointAtLength(
        self: *Self,
        length: f32,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        point: ?*D2D1_POINT_2F,
        unitTangentVector: ?*D2D1_POINT_2F,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).ComputePointAtLength(
            length,
            worldTransform,
            flatteningTolerance,
            point,
            unitTangentVector,
        );
    }

    pub inline fn Widen(
        self: *Self,
        strokeWidth: f32,
        strokeStyle: ?*ID2D1StrokeStyle,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        geometrySink: *ID2D1SimplifiedGeometrySink,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).Widen(
            strokeWidth,
            strokeStyle,
            worldTransform,
            flatteningTolerance,
            geometrySink,
        );
    }

    pub inline fn GetFillMode(self: *Self) D2D1_FILL_MODE {
        return self.lpVtbl.*.GetFillMode(self);
    }

    pub inline fn GetSourceGeometryCount(self: *Self) u32 {
        return self.lpVtbl.*.GetSourceGeometryCount(self);
    }

    pub inline fn GetSourceGeometries(self: *Self, geometries: []*ID2D1Geometry) void {
        return self.lpVtbl.*.GetSourceGeometries(self, geometries.ptr, @truncate(u32, geometries.len));
    }
};

pub const ID2D1TransformedGeometry = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("2cd906bb-12e2-11dc-9fed-001143a055f9");
    pub const Vtbl = extern struct {
        // ID2D1Geometry
        id2d1geometry: ID2D1Geometry.Vtbl,

        // ID2D1TransformedGeometry
        GetSourceGeometry: fn (self: *Self, sourceGeometry: *?*ID2D1Geometry) callconv(.Stdcall) void,
        GetTransform: fn (self: *Self, transform: *D2D1_MATRIX_3X2_F) callconv(.Stdcall) void,
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

    pub inline fn GetFactory(self: *Self, factory: *?*ID2D1Factory) void {
        return @ptrCast(*ID2D1Resource, self).GetFactory(factory);
    }

    pub inline fn GetBounds(
        self: *Self,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        bounds: *D2D1_RECT_F,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).GetBounds(
            worldTransform,
            bounds,
        );
    }

    pub inline fn GetWidenedBounds(
        self: *Self,
        strokeWidth: f32,
        strokeStyle: ?*ID2D1StrokeStyle,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        bounds: *D2D1_RECT_F,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).GetWidenedBounds(
            strokeWidth,
            strokeStyle,
            worldTransform,
            flatteningTolerance,
            bounds,
        );
    }

    pub inline fn StrokeContainsPoint(
        self: *Self,
        point: D2D1_POINT_2F,
        strokeWidth: f32,
        strokeStyle: ?*ID2D1StrokeStyle,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        contains: *bool,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).StrokeContainsPoint(
            point,
            strokeWidth,
            strokeStyle,
            worldTransform,
            flatteningTolerance,
            contains,
        );
    }

    pub inline fn FillContainsPoint(
        self: *Self,
        point: D2D1_POINT_2F,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        contains: *bool,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).FillContainsPoint(
            point,
            worldTransform,
            flatteningTolerance,
            contains,
        );
    }

    pub inline fn CompareWithGeometry(
        self: *Self,
        inputGeometry: *ID2D1Geometry,
        inputGeometryTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        relation: *D2D1_GEOMETRY_RELATION,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).CompareWithGeometry(
            inputGeometry,
            inputGeometryTransform,
            flatteningTolerance,
            relation,
        );
    }

    pub inline fn Simplify(
        self: *Self,
        simplificationOption: D2D1_GEOMETRY_SIMPLIFICATION_OPTION,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        geometrySink: *ID2D1SimplifiedGeometrySink,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).Simplify(
            simplificationOption,
            worldTransform,
            flatteningTolerance,
            geometrySink,
        );
    }

    pub inline fn Tessellate(
        self: *Self,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        tessellationSink: *ID2D1TessellationSink,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).Tessellate(
            worldTransform,
            flatteningTolerance,
            tessellationSink,
        );
    }

    pub inline fn CombineWithGeometry(
        self: *Self,
        inputGeometry: *ID2D1Geometry,
        combineMode: D2D1_COMBINE_MODE,
        inputGeometryTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        geometrySink: *ID2D1SimplifiedGeometrySink,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).CombineWithGeometry(
            inputGeometry,
            combineMode,
            inputGeometryTransform,
            flatteningTolerance,
            geometrySink,
        );
    }

    pub inline fn Outline(
        self: *Self,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        geometrySink: *ID2D1SimplifiedGeometrySink,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).Outline(
            worldTransform,
            flatteningTolerance,
            geometrySink,
        );
    }

    pub inline fn ComputeArea(
        self: *Self,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        area: *f32,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).ComputeArea(
            worldTransform,
            flatteningTolerance,
            area,
        );
    }

    pub inline fn ComputeLength(
        self: *Self,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        length: *f32,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).ComputeLength(
            worldTransform,
            flatteningTolerance,
            length,
        );
    }

    pub inline fn ComputePointAtLength(
        self: *Self,
        length: f32,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        point: ?*D2D1_POINT_2F,
        unitTangentVector: ?*D2D1_POINT_2F,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).ComputePointAtLength(
            length,
            worldTransform,
            flatteningTolerance,
            point,
            unitTangentVector,
        );
    }

    pub inline fn Widen(
        self: *Self,
        strokeWidth: f32,
        strokeStyle: ?*ID2D1StrokeStyle,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        geometrySink: *ID2D1SimplifiedGeometrySink,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).Widen(
            strokeWidth,
            strokeStyle,
            worldTransform,
            flatteningTolerance,
            geometrySink,
        );
    }

    pub inline fn GetSourceGeometry(self: *Self, sourceGeometry: *?*ID2D1Geometry) void {
        return self.lpVtbl.*.GetSourceGeometry(self, sourceGeometry);
    }

    pub inline fn GetTransform(self: *Self, transform: *D2D1_MATRIX_3X2_F) void {
        return self.lpVtbl.*.GetTransform(self, transform);
    }
};

pub const ID2D1SimplifiedGeometrySink = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("2cd9069e-12e2-11dc-9fed-001143a055f9");
    pub const Vtbl = extern struct {
        // IUnknown
        iunknown: IUnknown.Vtbl,

        // ID2D1SimplifiedGeometrySink
        SetFillMode: fn (self: *Self, fillMode: D2D1_FILL_MODE) callconv(.Stdcall) void,
        SetSegmentFlags: fn (self: *Self, vertexFlags: D2D1_PATH_SEGMENT) callconv(.Stdcall) void,
        BeginFigure: fn (self: *Self, startPoint: D2D1_POINT_2F, figureBegin: D2D1_FIGURE_BEGIN) callconv(.Stdcall) void,
        AddLines: fn (self: *Self, points: [*]const D2D1_POINT_2F, pointsCount: u32) callconv(.Stdcall) void,
        AddBeziers: fn (self: *Self, beziers: [*]const D2D1_BEZIER_SEGMENT, beziersCount: u32) callconv(.Stdcall) void,
        EndFigure: fn (self: *Self, figureEnd: D2D1_FIGURE_END) callconv(.Stdcall) void,
        Close: fn (self: *Self) callconv(.Stdcall) i32,
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

    pub inline fn SetFillMode(self: *Self, fillMode: D2D1_FILL_MODE) void {
        return self.lpVtbl.*.SetFillMode(self, fillMode);
    }

    pub inline fn SetSegmentFlags(self: *Self, vertexFlags: D2D1_PATH_SEGMENT) void {
        return self.lpVtbl.*.SetSegmentFlags(self, vertexFlags);
    }

    pub inline fn BeginFigure(
        self: *Self,
        startPoint: D2D1_POINT_2F,
        figureBegin: D2D1_FIGURE_BEGIN,
    ) void {
        return self.lpVtbl.*.BeginFigure(self, startPoint, figureBegin);
    }

    pub inline fn AddLines(self: *Self, points: []const D2D1_POINT_2F) void {
        return self.lpVtbl.*.AddLines(self, points.ptr, @truncate(u32, points.len));
    }

    pub inline fn AddBeziers(self: *Self, beziers: []const D2D1_BEZIER_SEGMENT) void {
        return self.lpVtbl.*.AddBeziers(self, beziers.ptr, @truncate(u32, beziers.len));
    }

    pub inline fn EndFigure(self: *Self, figureEnd: D2D1_FIGURE_END) void {
        return self.lpVtbl.*.EndFigure(self, figureEnd);
    }

    pub inline fn Close(self: *Self) i32 {
        return self.lpVtbl.*.Close(self);
    }
};

pub const ID2D1GeometrySink = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("2cd9069f-12e2-11dc-9fed-001143a055f9");
    pub const Vtbl = extern struct {
        // ID2D1SimplifiedGeometrySink
        id2d1simplifiedgeometrysink: ID2D1SimplifiedGeometrySink.Vtbl,

        // ID2D1GeometrySink
        AddLine: fn (self: *Self, point: D2D1_POINT_2F) callconv(.Stdcall) void,
        AddBezier: fn (self: *Self, bezier: *const D2D1_BEZIER_SEGMENT) callconv(.Stdcall) void,
        AddQuadraticBezier: fn (self: *Self, bezier: *const D2D1_QUADRATIC_BEZIER_SEGMENT) callconv(.Stdcall) void,
        AddQuadraticBeziers: fn (self: *Self, beziers: [*]const D2D1_QUADRATIC_BEZIER_SEGMENT, beziersCount: u32) callconv(.Stdcall) void,
        AddArc: fn (self: *Self, arc: *const D2D1_ARC_SEGMENT) callconv(.Stdcall) void,
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

    pub inline fn GetFactory(self: *Self, factory: *?*ID2D1Factory) void {
        return @ptrCast(*ID2D1Resource, self).GetFactory(factory);
    }

    pub inline fn SetFillMode(self: *Self, fillMode: D2D1_FILL_MODE) void {
        return @ptrCast(*ID2D1SimplifiedGeometrySink, self).SetFillMode(fillMode);
    }

    pub inline fn SetSegmentFlags(self: *Self, vertexFlags: D2D1_PATH_SEGMENT) void {
        return @ptrCast(*ID2D1SimplifiedGeometrySink, self).SetSegmentFlags(vertexFlags);
    }

    pub inline fn BeginFigure(
        self: *Self,
        startPoint: D2D1_POINT_2F,
        figureBegin: D2D1_FIGURE_BEGIN,
    ) void {
        return @ptrCast(*ID2D1SimplifiedGeometrySink, self).BeginFigure(
            startPoint,
            figureBegin,
        );
    }

    pub inline fn AddLines(self: *Self, points: []const D2D1_POINT_2F) void {
        return @ptrCast(*ID2D1SimplifiedGeometrySink, self).AddLines(
            points
        );
    }

    pub inline fn AddBeziers(self: *Self, beziers: []const D2D1_BEZIER_SEGMENT) void {
        return @ptrCast(*ID2D1SimplifiedGeometrySink, self).AddBeziers(
            beziers
        );
    }

    pub inline fn EndFigure(self: *Self, figureEnd: D2D1_FIGURE_END) void {
        return @ptrCast(*ID2D1SimplifiedGeometrySink, self).EndFigure(figureEnd);
    }

    pub inline fn Close(self: *Self) i32 {
        return @ptrCast(*ID2D1SimplifiedGeometrySink, self).Close();
    }

    pub inline fn AddLine(self: *Self, point: D2D1_POINT_2F) void {
        return self.lpVtbl.*.AddLine(self, point);
    }

    pub inline fn AddBezier(self: *Self, bezier: *const D2D1_BEZIER_SEGMENT) void {
        return self.lpVtbl.*.AddBezier(self, bezier);
    }

    pub inline fn AddQuadraticBezier(
        self: *Self,
        bezier: *const D2D1_QUADRATIC_BEZIER_SEGMENT,
    ) void {
        return self.lpVtbl.*.AddQuadraticBezier(self, bezier);
    }

    pub inline fn AddQuadraticBeziers(self: *Self, beziers: []const D2D1_QUADRATIC_BEZIER_SEGMENT) void {
        return self.lpVtbl.*.AddQuadraticBeziers(self, beziers.ptr, @truncate(u32, beziers.len));
    }

    pub inline fn AddArc(self: *Self, arc: *const D2D1_ARC_SEGMENT) void {
        return self.lpVtbl.*.AddArc(self, arc);
    }
};

pub const ID2D1TessellationSink = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("2cd906c1-12e2-11dc-9fed-001143a055f9");
    pub const Vtbl = extern struct {
        // IUnknown
        iunknown: IUnknown.Vtbl,

        // ID2D1TessellationSink
        AddTriangles: fn (self: *Self, triangles: [*]const D2D1_TRIANGLE, trianglesCount: u32) callconv(.Stdcall) void,
        Close: fn (self: *Self) callconv(.Stdcall) i32,
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

    pub inline fn AddTriangles(self: *Self, triangles: []const D2D1_TRIANGLE) void {
        return self.lpVtbl.*.AddTriangles(self, triangles.ptr, @truncate(u32, triangles.len));
    }

    pub inline fn Close(self: *Self) i32 {
        return self.lpVtbl.*.Close(self);
    }
};

pub const ID2D1PathGeometry = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("2cd906a5-12e2-11dc-9fed-001143a055f9");
    pub const Vtbl = extern struct {
        // ID2D1Geometry
        id2d1geometry: ID2D1Geometry.Vtbl,

        // ID2D1PathGeometry
        Open: fn (self: *Self, geometrySink: *?*ID2D1GeometrySink) callconv(.Stdcall) i32,
        Stream: fn (self: *Self, geometrySink: *ID2D1GeometrySink) callconv(.Stdcall) i32,
        GetSegmentCount: fn (self: *Self, count: *u32) callconv(.Stdcall) i32,
        GetFigureCount: fn (self: *Self, count: *u32) callconv(.Stdcall) i32,
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

    pub inline fn GetFactory(self: *Self, factory: *?*ID2D1Factory) void {
        return @ptrCast(*ID2D1Resource, self).GetFactory(factory);
    }

    pub inline fn GetBounds(
        self: *Self,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        bounds: *D2D1_RECT_F,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).GetBounds(
            worldTransform,
            bounds,
        );
    }

    pub inline fn GetWidenedBounds(
        self: *Self,
        strokeWidth: f32,
        strokeStyle: ?*ID2D1StrokeStyle,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        bounds: *D2D1_RECT_F,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).GetWidenedBounds(
            strokeWidth,
            strokeStyle,
            worldTransform,
            flatteningTolerance,
            bounds,
        );
    }

    pub inline fn StrokeContainsPoint(
        self: *Self,
        point: D2D1_POINT_2F,
        strokeWidth: f32,
        strokeStyle: ?*ID2D1StrokeStyle,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        contains: *bool,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).StrokeContainsPoint(
            point,
            strokeWidth,
            strokeStyle,
            worldTransform,
            flatteningTolerance,
            contains,
        );
    }

    pub inline fn FillContainsPoint(
        self: *Self,
        point: D2D1_POINT_2F,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        contains: *bool,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).FillContainsPoint(
            point,
            worldTransform,
            flatteningTolerance,
            contains,
        );
    }

    pub inline fn CompareWithGeometry(
        self: *Self,
        inputGeometry: *ID2D1Geometry,
        inputGeometryTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        relation: *D2D1_GEOMETRY_RELATION,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).CompareWithGeometry(
            inputGeometry,
            inputGeometryTransform,
            flatteningTolerance,
            relation,
        );
    }

    pub inline fn Simplify(
        self: *Self,
        simplificationOption: D2D1_GEOMETRY_SIMPLIFICATION_OPTION,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        geometrySink: *ID2D1SimplifiedGeometrySink,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).Simplify(
            simplificationOption,
            worldTransform,
            flatteningTolerance,
            geometrySink,
        );
    }

    pub inline fn Tessellate(
        self: *Self,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        tessellationSink: *ID2D1TessellationSink,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).Tessellate(
            worldTransform,
            flatteningTolerance,
            tessellationSink,
        );
    }

    pub inline fn CombineWithGeometry(
        self: *Self,
        inputGeometry: *ID2D1Geometry,
        combineMode: D2D1_COMBINE_MODE,
        inputGeometryTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        geometrySink: *ID2D1SimplifiedGeometrySink,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).CombineWithGeometry(
            inputGeometry,
            combineMode,
            inputGeometryTransform,
            flatteningTolerance,
            geometrySink,
        );
    }

    pub inline fn Outline(
        self: *Self,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        geometrySink: *ID2D1SimplifiedGeometrySink,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).Outline(
            worldTransform,
            flatteningTolerance,
            geometrySink,
        );
    }

    pub inline fn ComputeArea(
        self: *Self,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        area: *f32,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).ComputeArea(
            worldTransform,
            flatteningTolerance,
            area,
        );
    }

    pub inline fn ComputeLength(
        self: *Self,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        length: *f32,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).ComputeLength(
            worldTransform,
            flatteningTolerance,
            length,
        );
    }

    pub inline fn ComputePointAtLength(
        self: *Self,
        length: f32,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        point: ?*D2D1_POINT_2F,
        unitTangentVector: ?*D2D1_POINT_2F,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).ComputePointAtLength(
            length,
            worldTransform,
            flatteningTolerance,
            point,
            unitTangentVector,
        );
    }

    pub inline fn Widen(
        self: *Self,
        strokeWidth: f32,
        strokeStyle: ?*ID2D1StrokeStyle,
        worldTransform: ?*const D2D1_MATRIX_3X2_F,
        flatteningTolerance: f32,
        geometrySink: *ID2D1SimplifiedGeometrySink,
    ) i32 {
        return @ptrCast(*ID2D1Geometry, self).Widen(
            strokeWidth,
            strokeStyle,
            worldTransform,
            flatteningTolerance,
            geometrySink,
        );
    }

    pub inline fn Open(self: *Self, geometrySink: *?*ID2D1GeometrySink) i32 {
        return self.lpVtbl.*.Open(self, geometrySink);
    }

    pub inline fn Stream(self: *Self, geometrySink: *ID2D1GeometrySink) i32 {
        return self.lpVtbl.*.Stream(self, geometrySink);
    }

    pub inline fn GetSegmentCount(self: *Self, count: *u32) i32 {
        return self.lpVtbl.*.GetSegmentCount(self, count);
    }

    pub inline fn GetFigureCount(self: *Self, count: *u32) i32 {
        return self.lpVtbl.*.GetFigureCount(self, count);
    }
};

pub const ID2D1Mesh = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("2cd906c2-12e2-11dc-9fed-001143a055f9");
    pub const Vtbl = extern struct {
        // ID2D1Resource
        id2d1resource: ID2D1Resource.Vtbl,

        // ID2D1Mesh
        Open: fn (self: *Self, tessellationSink: *?*ID2D1TessellationSink) callconv(.Stdcall) i32,
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

    pub inline fn GetFactory(self: *Self, factory: *?*ID2D1Factory) void {
        return @ptrCast(*ID2D1Resource, self).GetFactory(factory);
    }

    pub inline fn Open(self: *Self, tessellationSink: *?*ID2D1TessellationSink) i32 {
        return self.lpVtbl.*.Open(self, tessellationSink);
    }
};

pub const ID2D1Layer = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("2cd9069b-12e2-11dc-9fed-001143a055f9");
    pub const Vtbl = extern struct {
        // ID2D1Resource
        id2d1resource: ID2D1Resource.Vtbl,

        // ID2D1Layer
        GetSize: fn (self: *Self) callconv(.Stdcall) D2D1_SIZE_F,
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

    pub inline fn GetFactory(self: *Self, factory: *?*ID2D1Factory) void {
        return @ptrCast(*ID2D1Resource, self).GetFactory(factory);
    }

    pub inline fn GetSize(self: *Self) D2D1_SIZE_F {
        return self.lpVtbl.*.GetSize(self);
    }
};

pub const ID2D1DrawingStateBlock = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("28506e39-ebf6-46a1-bb47-fd85565ab957");
    pub const Vtbl = extern struct {
        // ID2D1Resource
        id2d1resource: ID2D1Resource.Vtbl,

        // ID2D1DrawingStateBlock
        GetDescription: fn (self: *Self, stateDescription: *D2D1_DRAWING_STATE_DESCRIPTION) callconv(.Stdcall) void,
        SetDescription: fn (self: *Self, stateDescription: *const D2D1_DRAWING_STATE_DESCRIPTION) callconv(.Stdcall) void,
        SetTextRenderingParams: fn (self: *Self, textRenderingParams: ?*IDWriteRenderingParams) callconv(.Stdcall) void,
        GetTextRenderingParams: fn (self: *Self, textRenderingParams: *?*IDWriteRenderingParams) callconv(.Stdcall) void,
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

    pub inline fn GetFactory(self: *Self, factory: *?*ID2D1Factory) void {
        return @ptrCast(*ID2D1Resource, self).GetFactory(factory);
    }

    pub inline fn GetDescription(self: *Self, stateDescription: *D2D1_DRAWING_STATE_DESCRIPTION) void {
        return self.lpVtbl.*.GetDescription(self, stateDescription);
    }

    pub inline fn SetDescription(
        self: *Self,
        stateDescription: *const D2D1_DRAWING_STATE_DESCRIPTION,
    ) void {
        return self.lpVtbl.*.SetDescription(self, stateDescription);
    }

    pub inline fn SetTextRenderingParams(
        self: *Self,
        textRenderingParams: ?*IDWriteRenderingParams,
    ) void {
        return self.lpVtbl.*.SetTextRenderingParams(self, textRenderingParams);
    }

    pub inline fn GetTextRenderingParams(
        self: *Self,
        textRenderingParams: *?*IDWriteRenderingParams,
    ) void {
        return self.lpVtbl.*.GetTextRenderingParams(self, textRenderingParams);
    }
};

pub const ID2D1RenderTarget = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("2cd90694-12e2-11dc-9fed-001143a055f9");
    pub const Vtbl = extern struct {
        // ID2D1Resource
        id2d1resource: ID2D1Resource.Vtbl,

        // ID2D1RenderTarget
        CreateBitmap: fn (self: *Self, size: D2D1_SIZE_U, srcData: ?*const c_void, pitch: u32, bitmapProperties: *const D2D1_BITMAP_PROPERTIES, bitmap: *?*ID2D1Bitmap) callconv(.Stdcall) i32,
        CreateBitmapFromWicBitmap: fn (self: *Self, wicBitmapSource: *IWICBitmapSource, bitmapProperties: ?*const D2D1_BITMAP_PROPERTIES, bitmap: *?*ID2D1Bitmap) callconv(.Stdcall) i32,
        CreateSharedBitmap: fn (self: *Self, riid: *const GUID, data: *c_void, bitmapProperties: ?*const D2D1_BITMAP_PROPERTIES, bitmap: *?*ID2D1Bitmap) callconv(.Stdcall) i32,
        CreateBitmapBrush: fn (self: *Self, bitmap: ?*ID2D1Bitmap, bitmapBrushProperties: ?*const D2D1_BITMAP_BRUSH_PROPERTIES, brushProperties: ?*const D2D1_BRUSH_PROPERTIES, bitmapBrush: *?*ID2D1BitmapBrush) callconv(.Stdcall) i32,
        CreateSolidColorBrush: fn (self: *Self, color: *const D3DCOLORVALUE, brushProperties: ?*const D2D1_BRUSH_PROPERTIES, solidColorBrush: *?*ID2D1SolidColorBrush) callconv(.Stdcall) i32,
        CreateGradientStopCollection: fn (self: *Self, gradientStops: [*]const D2D1_GRADIENT_STOP, gradientStopsCount: u32, colorInterpolationGamma: D2D1_GAMMA, extendMode: D2D1_EXTEND_MODE, gradientStopCollection: *?*ID2D1GradientStopCollection) callconv(.Stdcall) i32,
        CreateLinearGradientBrush: fn (self: *Self, linearGradientBrushProperties: *const D2D1_LINEAR_GRADIENT_BRUSH_PROPERTIES, brushProperties: ?*const D2D1_BRUSH_PROPERTIES, gradientStopCollection: *ID2D1GradientStopCollection, linearGradientBrush: *?*ID2D1LinearGradientBrush) callconv(.Stdcall) i32,
        CreateRadialGradientBrush: fn (self: *Self, radialGradientBrushProperties: *const D2D1_RADIAL_GRADIENT_BRUSH_PROPERTIES, brushProperties: ?*const D2D1_BRUSH_PROPERTIES, gradientStopCollection: *ID2D1GradientStopCollection, radialGradientBrush: *?*ID2D1RadialGradientBrush) callconv(.Stdcall) i32,
        CreateCompatibleRenderTarget: fn (self: *Self, desiredSize: ?*const D2D1_SIZE_F, desiredPixelSize: ?*const D2D1_SIZE_U, desiredFormat: ?*const D2D1_PIXEL_FORMAT, options: D2D1_COMPATIBLE_RENDER_TARGET_OPTIONS, bitmapRenderTarget: *?*ID2D1BitmapRenderTarget) callconv(.Stdcall) i32,
        CreateLayer: fn (self: *Self, size: ?*const D2D1_SIZE_F, layer: *?*ID2D1Layer) callconv(.Stdcall) i32,
        CreateMesh: fn (self: *Self, mesh: *?*ID2D1Mesh) callconv(.Stdcall) i32,
        DrawLine: fn (self: *Self, point0: D2D1_POINT_2F, point1: D2D1_POINT_2F, brush: *ID2D1Brush, strokeWidth: f32, strokeStyle: ?*ID2D1StrokeStyle) callconv(.Stdcall) void,
        DrawRectangle: fn (self: *Self, rect: *const D2D1_RECT_F, brush: *ID2D1Brush, strokeWidth: f32, strokeStyle: ?*ID2D1StrokeStyle) callconv(.Stdcall) void,
        FillRectangle: fn (self: *Self, rect: *const D2D1_RECT_F, brush: *ID2D1Brush) callconv(.Stdcall) void,
        DrawRoundedRectangle: fn (self: *Self, roundedRect: *const D2D1_ROUNDED_RECT, brush: *ID2D1Brush, strokeWidth: f32, strokeStyle: ?*ID2D1StrokeStyle) callconv(.Stdcall) void,
        FillRoundedRectangle: fn (self: *Self, roundedRect: *const D2D1_ROUNDED_RECT, brush: *ID2D1Brush) callconv(.Stdcall) void,
        DrawEllipse: fn (self: *Self, ellipse: *const D2D1_ELLIPSE, brush: *ID2D1Brush, strokeWidth: f32, strokeStyle: ?*ID2D1StrokeStyle) callconv(.Stdcall) void,
        FillEllipse: fn (self: *Self, ellipse: *const D2D1_ELLIPSE, brush: *ID2D1Brush) callconv(.Stdcall) void,
        DrawGeometry: fn (self: *Self, geometry: *ID2D1Geometry, brush: *ID2D1Brush, strokeWidth: f32, strokeStyle: ?*ID2D1StrokeStyle) callconv(.Stdcall) void,
        FillGeometry: fn (self: *Self, geometry: *ID2D1Geometry, brush: *ID2D1Brush, opacityBrush: ?*ID2D1Brush) callconv(.Stdcall) void,
        FillMesh: fn (self: *Self, mesh: *ID2D1Mesh, brush: *ID2D1Brush) callconv(.Stdcall) void,
        FillOpacityMask: fn (self: *Self, opacityMask: *ID2D1Bitmap, brush: *ID2D1Brush, content: D2D1_OPACITY_MASK_CONTENT, destinationRectangle: ?*const D2D1_RECT_F, sourceRectangle: ?*const D2D1_RECT_F) callconv(.Stdcall) void,
        DrawBitmap: fn (self: *Self, bitmap: *ID2D1Bitmap, destinationRectangle: ?*const D2D1_RECT_F, opacity: f32, interpolationMode: D2D1_BITMAP_INTERPOLATION_MODE, sourceRectangle: ?*const D2D1_RECT_F) callconv(.Stdcall) void,
        DrawText: fn (self: *Self, string: [*]const u16, stringLength: u32, textFormat: *IDWriteTextFormat, layoutRect: *const D2D1_RECT_F, defaultFillBrush: *ID2D1Brush, options: D2D1_DRAW_TEXT_OPTIONS, measuringMode: DWRITE_MEASURING_MODE) callconv(.Stdcall) void,
        DrawTextLayout: fn (self: *Self, origin: D2D1_POINT_2F, textLayout: *IDWriteTextLayout, defaultFillBrush: *ID2D1Brush, options: D2D1_DRAW_TEXT_OPTIONS) callconv(.Stdcall) void,
        DrawGlyphRun: fn (self: *Self, baselineOrigin: D2D1_POINT_2F, glyphRun: *const DWRITE_GLYPH_RUN, foregroundBrush: *ID2D1Brush, measuringMode: DWRITE_MEASURING_MODE) callconv(.Stdcall) void,
        SetTransform: fn (self: *Self, transform: *const D2D1_MATRIX_3X2_F) callconv(.Stdcall) void,
        GetTransform: fn (self: *Self, transform: *D2D1_MATRIX_3X2_F) callconv(.Stdcall) void,
        SetAntialiasMode: fn (self: *Self, antialiasMode: D2D1_ANTIALIAS_MODE) callconv(.Stdcall) void,
        GetAntialiasMode: fn (self: *Self) callconv(.Stdcall) D2D1_ANTIALIAS_MODE,
        SetTextAntialiasMode: fn (self: *Self, textAntialiasMode: D2D1_TEXT_ANTIALIAS_MODE) callconv(.Stdcall) void,
        GetTextAntialiasMode: fn (self: *Self) callconv(.Stdcall) D2D1_TEXT_ANTIALIAS_MODE,
        SetTextRenderingParams: fn (self: *Self, textRenderingParams: ?*IDWriteRenderingParams) callconv(.Stdcall) void,
        GetTextRenderingParams: fn (self: *Self, textRenderingParams: *?*IDWriteRenderingParams) callconv(.Stdcall) void,
        SetTags: fn (self: *Self, tag1: u64, tag2: u64) callconv(.Stdcall) void,
        GetTags: fn (self: *Self, tag1: ?*u64, tag2: ?*u64) callconv(.Stdcall) void,
        PushLayer: fn (self: *Self, layerParameters: *const D2D1_LAYER_PARAMETERS, layer: ?*ID2D1Layer) callconv(.Stdcall) void,
        PopLayer: fn (self: *Self) callconv(.Stdcall) void,
        Flush: fn (self: *Self, tag1: ?*u64, tag2: ?*u64) callconv(.Stdcall) i32,
        SaveDrawingState: fn (self: *Self, drawingStateBlock: *ID2D1DrawingStateBlock) callconv(.Stdcall) void,
        RestoreDrawingState: fn (self: *Self, drawingStateBlock: *ID2D1DrawingStateBlock) callconv(.Stdcall) void,
        PushAxisAlignedClip: fn (self: *Self, clipRect: *const D2D1_RECT_F, antialiasMode: D2D1_ANTIALIAS_MODE) callconv(.Stdcall) void,
        PopAxisAlignedClip: fn (self: *Self) callconv(.Stdcall) void,
        Clear: fn (self: *Self, clearColor: ?*const D3DCOLORVALUE) callconv(.Stdcall) void,
        BeginDraw: fn (self: *Self) callconv(.Stdcall) void,
        EndDraw: fn (self: *Self, tag1: ?*u64, tag2: ?*u64) callconv(.Stdcall) i32,
        GetPixelFormat: fn (self: *Self) callconv(.Stdcall) D2D1_PIXEL_FORMAT,
        SetDpi: fn (self: *Self, dpiX: f32, dpiY: f32) callconv(.Stdcall) void,
        GetDpi: fn (self: *Self, dpiX: *f32, dpiY: *f32) callconv(.Stdcall) void,
        GetSize: fn (self: *Self) callconv(.Stdcall) D2D1_SIZE_F,
        GetPixelSize: fn (self: *Self) callconv(.Stdcall) D2D1_SIZE_U,
        GetMaximumBitmapSize: fn (self: *Self) callconv(.Stdcall) u32,
        IsSupported: fn (self: *Self, renderTargetProperties: *const D2D1_RENDER_TARGET_PROPERTIES) callconv(.Stdcall) i32,
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

    pub inline fn GetFactory(self: *Self, factory: *?*ID2D1Factory) void {
        return @ptrCast(*ID2D1Resource, self).GetFactory(factory);
    }

    pub inline fn CreateBitmap(
        self: *Self,
        size: D2D1_SIZE_U,
        srcData: ?*const c_void,
        pitch: u32,
        bitmapProperties: *const D2D1_BITMAP_PROPERTIES,
        bitmap: *?*ID2D1Bitmap,
    ) i32 {
        return self.lpVtbl.*.CreateBitmap(
            self,
            size,
            srcData,
            pitch,
            bitmapProperties,
            bitmap,
        );
    }

    pub inline fn CreateBitmapFromWicBitmap(
        self: *Self,
        wicBitmapSource: *IWICBitmapSource,
        bitmapProperties: ?*const D2D1_BITMAP_PROPERTIES,
        bitmap: *?*ID2D1Bitmap,
    ) i32 {
        return self.lpVtbl.*.CreateBitmapFromWicBitmap(
            self,
            wicBitmapSource,
            bitmapProperties,
            bitmap,
        );
    }

    pub inline fn CreateSharedBitmap(
        self: *Self,
        riid: *const GUID,
        data: *c_void,
        bitmapProperties: ?*const D2D1_BITMAP_PROPERTIES,
        bitmap: *?*ID2D1Bitmap,
    ) i32 {
        return self.lpVtbl.*.CreateSharedBitmap(
            self,
            riid,
            data,
            bitmapProperties,
            bitmap,
        );
    }

    pub inline fn CreateBitmapBrush(
        self: *Self,
        bitmap: ?*ID2D1Bitmap,
        bitmapBrushProperties: ?*const D2D1_BITMAP_BRUSH_PROPERTIES,
        brushProperties: ?*const D2D1_BRUSH_PROPERTIES,
        bitmapBrush: *?*ID2D1BitmapBrush,
    ) i32 {
        return self.lpVtbl.*.CreateBitmapBrush(
            self,
            bitmap,
            bitmapBrushProperties,
            brushProperties,
            bitmapBrush,
        );
    }

    pub inline fn CreateSolidColorBrush(
        self: *Self,
        color: *const D3DCOLORVALUE,
        brushProperties: ?*const D2D1_BRUSH_PROPERTIES,
        solidColorBrush: *?*ID2D1SolidColorBrush,
    ) i32 {
        return self.lpVtbl.*.CreateSolidColorBrush(
            self,
            color,
            brushProperties,
            solidColorBrush,
        );
    }

    pub inline fn CreateGradientStopCollection(
        self: *Self,
        gradientStops: []const D2D1_GRADIENT_STOP,
        colorInterpolationGamma: D2D1_GAMMA,
        extendMode: D2D1_EXTEND_MODE,
        gradientStopCollection: *?*ID2D1GradientStopCollection,
    ) i32 {
        assert(gradientStops.len > 0);
        return self.lpVtbl.*.CreateGradientStopCollection(
            self,
            gradientStops.ptr,
            @truncate(u32, gradientStops.len),
            colorInterpolationGamma,
            extendMode,
            gradientStopCollection,
        );
    }

    pub inline fn CreateLinearGradientBrush(
        self: *Self,
        linearGradientBrushProperties: *const D2D1_LINEAR_GRADIENT_BRUSH_PROPERTIES,
        brushProperties: ?*const D2D1_BRUSH_PROPERTIES,
        gradientStopCollection: *ID2D1GradientStopCollection,
        linearGradientBrush: *?*ID2D1LinearGradientBrush,
    ) i32 {
        return self.lpVtbl.*.CreateLinearGradientBrush(
            self,
            linearGradientBrushProperties,
            brushProperties,
            gradientStopCollection,
            linearGradientBrush,
        );
    }

    pub inline fn CreateRadialGradientBrush(
        self: *Self,
        radialGradientBrushProperties: *const D2D1_RADIAL_GRADIENT_BRUSH_PROPERTIES,
        brushProperties: ?*const D2D1_BRUSH_PROPERTIES,
        gradientStopCollection: *ID2D1GradientStopCollection,
        radialGradientBrush: *?*ID2D1RadialGradientBrush,
    ) i32 {
        return self.lpVtbl.*.CreateRadialGradientBrush(
            self,
            radialGradientBrushProperties,
            brushProperties,
            gradientStopCollection,
            radialGradientBrush,
        );
    }

    pub inline fn CreateCompatibleRenderTarget(
        self: *Self,
        desiredSize: ?*const D2D1_SIZE_F,
        desiredPixelSize: ?*const D2D1_SIZE_U,
        desiredFormat: ?*const D2D1_PIXEL_FORMAT,
        options: D2D1_COMPATIBLE_RENDER_TARGET_OPTIONS,
        bitmapRenderTarget: *?*ID2D1BitmapRenderTarget,
    ) i32 {
        return self.lpVtbl.*.CreateCompatibleRenderTarget(
            self,
            desiredSize,
            desiredPixelSize,
            desiredFormat,
            options,
            bitmapRenderTarget,
        );
    }

    pub inline fn CreateLayer(self: *Self, size: ?*const D2D1_SIZE_F, layer: *?*ID2D1Layer) i32 {
        return self.lpVtbl.*.CreateLayer(self, size, layer);
    }

    pub inline fn CreateMesh(self: *Self, mesh: *?*ID2D1Mesh) i32 {
        return self.lpVtbl.*.CreateMesh(self, mesh);
    }

    pub inline fn DrawLine(
        self: *Self,
        point0: D2D1_POINT_2F,
        point1: D2D1_POINT_2F,
        brush: *ID2D1Brush,
        strokeWidth: f32,
        strokeStyle: ?*ID2D1StrokeStyle,
    ) void {
        return self.lpVtbl.*.DrawLine(
            self,
            point0,
            point1,
            brush,
            strokeWidth,
            strokeStyle,
        );
    }

    pub inline fn DrawRectangle(
        self: *Self,
        rect: *const D2D1_RECT_F,
        brush: *ID2D1Brush,
        strokeWidth: f32,
        strokeStyle: ?*ID2D1StrokeStyle,
    ) void {
        return self.lpVtbl.*.DrawRectangle(
            self,
            rect,
            brush,
            strokeWidth,
            strokeStyle,
        );
    }

    pub inline fn FillRectangle(self: *Self, rect: *const D2D1_RECT_F, brush: *ID2D1Brush) void {
        return self.lpVtbl.*.FillRectangle(self, rect, brush);
    }

    pub inline fn DrawRoundedRectangle(
        self: *Self,
        roundedRect: *const D2D1_ROUNDED_RECT,
        brush: *ID2D1Brush,
        strokeWidth: f32,
        strokeStyle: ?*ID2D1StrokeStyle,
    ) void {
        return self.lpVtbl.*.DrawRoundedRectangle(
            self,
            roundedRect,
            brush,
            strokeWidth,
            strokeStyle,
        );
    }

    pub inline fn FillRoundedRectangle(
        self: *Self,
        roundedRect: *const D2D1_ROUNDED_RECT,
        brush: *ID2D1Brush,
    ) void {
        return self.lpVtbl.*.FillRoundedRectangle(self, roundedRect, brush);
    }

    pub inline fn DrawEllipse(
        self: *Self,
        ellipse: *const D2D1_ELLIPSE,
        brush: *ID2D1Brush,
        strokeWidth: f32,
        strokeStyle: ?*ID2D1StrokeStyle,
    ) void {
        return self.lpVtbl.*.DrawEllipse(
            self,
            ellipse,
            brush,
            strokeWidth,
            strokeStyle,
        );
    }

    pub inline fn FillEllipse(self: *Self, ellipse: *const D2D1_ELLIPSE, brush: *ID2D1Brush) void {
        return self.lpVtbl.*.FillEllipse(self, ellipse, brush);
    }

    pub inline fn DrawGeometry(
        self: *Self,
        geometry: *ID2D1Geometry,
        brush: *ID2D1Brush,
        strokeWidth: f32,
        strokeStyle: ?*ID2D1StrokeStyle,
    ) void {
        return self.lpVtbl.*.DrawGeometry(
            self,
            geometry,
            brush,
            strokeWidth,
            strokeStyle,
        );
    }

    pub inline fn FillGeometry(
        self: *Self,
        geometry: *ID2D1Geometry,
        brush: *ID2D1Brush,
        opacityBrush: ?*ID2D1Brush,
    ) void {
        return self.lpVtbl.*.FillGeometry(
            self,
            geometry,
            brush,
            opacityBrush,
        );
    }

    pub inline fn FillMesh(self: *Self, mesh: *ID2D1Mesh, brush: *ID2D1Brush) void {
        return self.lpVtbl.*.FillMesh(self, mesh, brush);
    }

    pub inline fn FillOpacityMask(
        self: *Self,
        opacityMask: *ID2D1Bitmap,
        brush: *ID2D1Brush,
        content: D2D1_OPACITY_MASK_CONTENT,
        destinationRectangle: ?*const D2D1_RECT_F,
        sourceRectangle: ?*const D2D1_RECT_F,
    ) void {
        return self.lpVtbl.*.FillOpacityMask(
            self,
            opacityMask,
            brush,
            content,
            destinationRectangle,
            sourceRectangle,
        );
    }

    pub inline fn DrawBitmap(
        self: *Self,
        bitmap: *ID2D1Bitmap,
        destinationRectangle: ?*const D2D1_RECT_F,
        opacity: f32,
        interpolationMode: D2D1_BITMAP_INTERPOLATION_MODE,
        sourceRectangle: ?*const D2D1_RECT_F,
    ) void {
        return self.lpVtbl.*.DrawBitmap(
            self,
            bitmap,
            destinationRectangle,
            opacity,
            interpolationMode,
            sourceRectangle,
        );
    }

    pub inline fn DrawText(
        self: *Self,
        string: []const u16,
        textFormat: *IDWriteTextFormat,
        layoutRect: *const D2D1_RECT_F,
        defaultFillBrush: *ID2D1Brush,
        options: D2D1_DRAW_TEXT_OPTIONS,
        measuringMode: DWRITE_MEASURING_MODE,
    ) void {
        return self.lpVtbl.*.DrawText(
            self,
            string.ptr,
            @truncate(u32, string.len),
            textFormat,
            layoutRect,
            defaultFillBrush,
            options,
            measuringMode,
        );
    }

    pub inline fn DrawTextLayout(
        self: *Self,
        origin: D2D1_POINT_2F,
        textLayout: *IDWriteTextLayout,
        defaultFillBrush: *ID2D1Brush,
        options: D2D1_DRAW_TEXT_OPTIONS,
    ) void {
        return self.lpVtbl.*.DrawTextLayout(
            self,
            origin,
            textLayout,
            defaultFillBrush,
            options,
        );
    }

    pub inline fn DrawGlyphRun(
        self: *Self,
        baselineOrigin: D2D1_POINT_2F,
        glyphRun: *const DWRITE_GLYPH_RUN,
        foregroundBrush: *ID2D1Brush,
        measuringMode: DWRITE_MEASURING_MODE,
    ) void {
        return self.lpVtbl.*.DrawGlyphRun(
            self,
            baselineOrigin,
            glyphRun,
            foregroundBrush,
            measuringMode,
        );
    }

    pub inline fn SetTransform(self: *Self, transform: *const D2D1_MATRIX_3X2_F) void {
        return self.lpVtbl.*.SetTransform(self, transform);
    }

    pub inline fn GetTransform(self: *Self, transform: *D2D1_MATRIX_3X2_F) void {
        return self.lpVtbl.*.GetTransform(self, transform);
    }

    pub inline fn SetAntialiasMode(self: *Self, antialiasMode: D2D1_ANTIALIAS_MODE) void {
        return self.lpVtbl.*.SetAntialiasMode(self, antialiasMode);
    }

    pub inline fn GetAntialiasMode(self: *Self) D2D1_ANTIALIAS_MODE {
        return self.lpVtbl.*.GetAntialiasMode(self);
    }

    pub inline fn SetTextAntialiasMode(self: *Self, textAntialiasMode: D2D1_TEXT_ANTIALIAS_MODE) void {
        return self.lpVtbl.*.SetTextAntialiasMode(self, textAntialiasMode);
    }

    pub inline fn GetTextAntialiasMode(self: *Self) D2D1_TEXT_ANTIALIAS_MODE {
        return self.lpVtbl.*.GetTextAntialiasMode(self);
    }

    pub inline fn SetTextRenderingParams(self: *Self, textRenderingParams: ?*IDWriteRenderingParams) void {
        return self.lpVtbl.*.SetTextRenderingParams(self, textRenderingParams);
    }

    pub inline fn GetTextRenderingParams(self: *Self, textRenderingParams: *?*IDWriteRenderingParams) void {
        return self.lpVtbl.*.GetTextRenderingParams(self, textRenderingParams);
    }

    pub inline fn SetTags(self: *Self, tag1: u64, tag2: u64) void {
        return self.lpVtbl.*.SetTags(self, tag1, tag2);
    }

    pub inline fn GetTags(self: *Self, tag1: ?*u64, tag2: ?*u64) void {
        return self.lpVtbl.*.GetTags(self, tag1, tag2);
    }

    pub inline fn PushLayer(
        self: *Self,
        layerParameters: *const D2D1_LAYER_PARAMETERS,
        layer: ?*ID2D1Layer,
    ) void {
        return self.lpVtbl.*.PushLayer(self, layerParameters, layer);
    }

    pub inline fn PopLayer(self: *Self) void {
        return self.lpVtbl.*.PopLayer(self);
    }

    pub inline fn Flush(
        self: *Self,
        tag1: ?*u64,
        tag2: ?*u64,
    ) i32 {
        return self.lpVtbl.*.Flush(self, tag1, tag2);
    }

    pub inline fn SaveDrawingState(self: *Self, drawingStateBlock: *ID2D1DrawingStateBlock) void {
        return self.lpVtbl.*.SaveDrawingState(self, drawingStateBlock);
    }

    pub inline fn RestoreDrawingState(self: *Self, drawingStateBlock: *ID2D1DrawingStateBlock) void {
        return self.lpVtbl.*.RestoreDrawingState(self, drawingStateBlock);
    }

    pub inline fn PushAxisAlignedClip(
        self: *Self,
        clipRect: *const D2D1_RECT_F,
        antialiasMode: D2D1_ANTIALIAS_MODE,
    ) void {
        return self.lpVtbl.*.PushAxisAlignedClip(self, clipRect, antialiasMode);
    }

    pub inline fn PopAxisAlignedClip(self: *Self) void {
        return self.lpVtbl.*.PopAxisAlignedClip(self);
    }

    pub inline fn Clear(self: *Self, clearColor: ?*const D3DCOLORVALUE) void {
        return self.lpVtbl.*.Clear(self, clearColor);
    }

    pub inline fn BeginDraw(self: *Self) void {
        return self.lpVtbl.*.BeginDraw(self);
    }

    pub inline fn EndDraw(self: *Self, tag1: ?*u64, tag2: ?*u64) i32 {
        return self.lpVtbl.*.EndDraw(self, tag1, tag2);
    }

    pub inline fn GetPixelFormat(self: *Self) D2D1_PIXEL_FORMAT {
        return self.lpVtbl.*.GetPixelFormat(self);
    }

    pub inline fn SetDpi(self: *Self, dpiX: f32, dpiY: f32) void {
        return self.lpVtbl.*.SetDpi(self, dpiX, dpiY);
    }

    pub inline fn GetDpi(self: *Self, dpiX: *f32, dpiY: *f32) void {
        return self.lpVtbl.*.GetDpi(self, dpiX, dpiY);
    }

    pub inline fn GetSize(self: *Self) D2D1_SIZE_F {
        return self.lpVtbl.*.GetSize(self);
    }

    pub inline fn GetPixelSize(self: *Self) D2D1_SIZE_U {
        return self.lpVtbl.*.GetPixelSize(self);
    }

    pub inline fn GetMaximumBitmapSize(self: *Self) u32 {
        return self.lpVtbl.*.GetMaximumBitmapSize(self);
    }

    pub inline fn IsSupported(
        self: *Self,
        renderTargetProperties: *const D2D1_RENDER_TARGET_PROPERTIES,
    ) bool {
        return self.lpVtbl.*.IsSupported(self, renderTargetProperties) != 0;
    }
};

pub const ID2D1BitmapRenderTarget = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("2cd90695-12e2-11dc-9fed-001143a055f9");
    pub const Vtbl = extern struct {
        // ID2D1RenderTarget
        id2d1rendertarget: ID2D1RenderTarget.Vtbl,

        // ID2D1BitmapRenderTarget
        GetBitmap: fn (self: *Self, bitmap: *?*ID2D1Bitmap) callconv(.Stdcall) i32,
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

    pub inline fn GetFactory(self: *Self, factory: *?*ID2D1Factory) void {
        return @ptrCast(*ID2D1Resource, self).GetFactory(factory);
    }

    pub inline fn CreateBitmap(
        self: *Self,
        size: D2D1_SIZE_U,
        srcData: ?*const c_void,
        pitch: u32,
        bitmapProperties: *const D2D1_BITMAP_PROPERTIES,
        bitmap: *?*ID2D1Bitmap,
    ) i32 {
        return @ptrCast(*ID2D1RenderTarget, self).CreateBitmap(
            size,
            srcData,
            pitch,
            bitmapProperties,
            bitmap,
        );
    }

    pub inline fn CreateBitmapFromWicBitmap(
        self: *Self,
        wicBitmapSource: *IWICBitmapSource,
        bitmapProperties: ?*const D2D1_BITMAP_PROPERTIES,
        bitmap: *?*ID2D1Bitmap,
    ) i32 {
        return @ptrCast(*ID2D1RenderTarget, self).CreateBitmapFromWicBitmap(
            wicBitmapSource,
            bitmapProperties,
            bitmap,
        );
    }

    pub inline fn CreateSharedBitmap(
        self: *Self,
        riid: *const GUID,
        data: *c_void,
        bitmapProperties: ?*const D2D1_BITMAP_PROPERTIES,
        bitmap: *?*ID2D1Bitmap,
    ) i32 {
        return @ptrCast(*ID2D1RenderTarget, self).CreateSharedBitmap(
            riid,
            data,
            bitmapProperties,
            bitmap,
        );
    }

    pub inline fn CreateBitmapBrush(
        self: *Self,
        bitmap: ?*ID2D1Bitmap,
        bitmapBrushProperties: ?*const D2D1_BITMAP_BRUSH_PROPERTIES,
        brushProperties: ?*const D2D1_BRUSH_PROPERTIES,
        bitmapBrush: *?*ID2D1BitmapBrush,
    ) i32 {
        return @ptrCast(*ID2D1RenderTarget, self).CreateBitmapBrush(
            bitmap,
            bitmapBrushProperties,
            brushProperties,
            bitmapBrush,
        );
    }

    pub inline fn CreateSolidColorBrush(
        self: *Self,
        color: *const D3DCOLORVALUE,
        brushProperties: ?*const D2D1_BRUSH_PROPERTIES,
        solidColorBrush: *?*ID2D1SolidColorBrush,
    ) i32 {
        return @ptrCast(*ID2D1RenderTarget, self).CreateSolidColorBrush(
            color,
            brushProperties,
            solidColorBrush,
        );
    }

    pub inline fn CreateGradientStopCollection(
        self: *Self,
        gradientStops: []const D2D1_GRADIENT_STOP,
        colorInterpolationGamma: D2D1_GAMMA,
        extendMode: D2D1_EXTEND_MODE,
        gradientStopCollection: *?*ID2D1GradientStopCollection,
    ) i32 {
        assert(gradientStops.len > 0);
        return @ptrCast(*ID2D1RenderTarget, self).CreateGradientStopCollection(
            gradientStops,
            colorInterpolationGamma,
            extendMode,
            gradientStopCollection,
        );
    }

    pub inline fn CreateLinearGradientBrush(
        self: *Self,
        linearGradientBrushProperties: *const D2D1_LINEAR_GRADIENT_BRUSH_PROPERTIES,
        brushProperties: ?*const D2D1_BRUSH_PROPERTIES,
        gradientStopCollection: *ID2D1GradientStopCollection,
        linearGradientBrush: *?*ID2D1LinearGradientBrush,
    ) i32 {
        return @ptrCast(*ID2D1RenderTarget, self).CreateLinearGradientBrush(
            linearGradientBrushProperties,
            brushProperties,
            gradientStopCollection,
            linearGradientBrush,
        );
    }

    pub inline fn CreateRadialGradientBrush(
        self: *Self,
        radialGradientBrushProperties: *const D2D1_RADIAL_GRADIENT_BRUSH_PROPERTIES,
        brushProperties: ?*const D2D1_BRUSH_PROPERTIES,
        gradientStopCollection: *ID2D1GradientStopCollection,
        radialGradientBrush: *?*ID2D1RadialGradientBrush,
    ) i32 {
        return @ptrCast(*ID2D1RenderTarget, self).CreateRadialGradientBrush(
            radialGradientBrushProperties,
            brushProperties,
            gradientStopCollection,
            radialGradientBrush,
        );
    }

    pub inline fn CreateCompatibleRenderTarget(
        self: *Self,
        desiredSize: ?*const D2D1_SIZE_F,
        desiredPixelSize: ?*const D2D1_SIZE_U,
        desiredFormat: ?*const D2D1_PIXEL_FORMAT,
        options: D2D1_COMPATIBLE_RENDER_TARGET_OPTIONS,
        bitmapRenderTarget: *?*ID2D1BitmapRenderTarget,
    ) i32 {
        return @ptrCast(*ID2D1RenderTarget, self).CreateCompatibleRenderTarget(
            desiredSize,
            desiredPixelSize,
            desiredFormat,
            options,
            bitmapRenderTarget,
        );
    }

    pub inline fn CreateLayer(self: *Self, size: ?*const D2D1_SIZE_F, layer: *?*ID2D1Layer) i32 {
        return @ptrCast(*ID2D1RenderTarget, self).CreateLayer(size, layer);
    }

    pub inline fn CreateMesh(self: *Self, mesh: *?*ID2D1Mesh) i32 {
        return @ptrCast(*ID2D1RenderTarget, self).CreateMesh(mesh);
    }

    pub inline fn DrawLine(
        self: *Self,
        point0: D2D1_POINT_2F,
        point1: D2D1_POINT_2F,
        brush: *ID2D1Brush,
        strokeWidth: f32,
        strokeStyle: ?*ID2D1StrokeStyle,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).DrawLine(
            point0,
            point1,
            brush,
            strokeWidth,
            strokeStyle,
        );
    }

    pub inline fn DrawRectangle(
        self: *Self,
        rect: *const D2D1_RECT_F,
        brush: *ID2D1Brush,
        strokeWidth: f32,
        strokeStyle: ?*ID2D1StrokeStyle,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).DrawRectangle(
            rect,
            brush,
            strokeWidth,
            strokeStyle,
        );
    }

    pub inline fn FillRectangle(self: *Self, rect: *const D2D1_RECT_F, brush: *ID2D1Brush) void {
        return @ptrCast(*ID2D1RenderTarget, self).FillRectangle(rect, brush);
    }

    pub inline fn DrawRoundedRectangle(
        self: *Self,
        roundedRect: *const D2D1_ROUNDED_RECT,
        brush: *ID2D1Brush,
        strokeWidth: f32,
        strokeStyle: ?*ID2D1StrokeStyle,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).DrawRoundedRectangle(
            roundedRect,
            brush,
            strokeWidth,
            strokeStyle,
        );
    }

    pub inline fn FillRoundedRectangle(
        self: *Self,
        roundedRect: *const D2D1_ROUNDED_RECT,
        brush: *ID2D1Brush,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).FillRoundedRectangle(roundedRect, brush);
    }

    pub inline fn DrawEllipse(
        self: *Self,
        ellipse: *const D2D1_ELLIPSE,
        brush: *ID2D1Brush,
        strokeWidth: f32,
        strokeStyle: ?*ID2D1StrokeStyle,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).DrawEllipse(
            ellipse,
            brush,
            strokeWidth,
            strokeStyle,
        );
    }

    pub inline fn FillEllipse(self: *Self, ellipse: *const D2D1_ELLIPSE, brush: *ID2D1Brush) void {
        return @ptrCast(*ID2D1RenderTarget, self).FillEllipse(ellipse, brush);
    }

    pub inline fn DrawGeometry(
        self: *Self,
        geometry: *ID2D1Geometry,
        brush: *ID2D1Brush,
        strokeWidth: f32,
        strokeStyle: ?*ID2D1StrokeStyle,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).DrawGeometry(
            geometry,
            brush,
            strokeWidth,
            strokeStyle,
        );
    }

    pub inline fn FillGeometry(
        self: *Self,
        geometry: *ID2D1Geometry,
        brush: *ID2D1Brush,
        opacityBrush: ?*ID2D1Brush,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).FillGeometry(
            geometry,
            brush,
            opacityBrush,
        );
    }

    pub inline fn FillMesh(self: *Self, mesh: *ID2D1Mesh, brush: *ID2D1Brush) void {
        return @ptrCast(*ID2D1RenderTarget, self).FillMesh(mesh, brush);
    }

    pub inline fn FillOpacityMask(
        self: *Self,
        opacityMask: *ID2D1Bitmap,
        brush: *ID2D1Brush,
        content: D2D1_OPACITY_MASK_CONTENT,
        destinationRectangle: ?*const D2D1_RECT_F,
        sourceRectangle: ?*const D2D1_RECT_F,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).FillOpacityMask(
            opacityMask,
            brush,
            content,
            destinationRectangle,
            sourceRectangle,
        );
    }

    pub inline fn DrawBitmap(
        self: *Self,
        bitmap: *ID2D1Bitmap,
        destinationRectangle: ?*const D2D1_RECT_F,
        opacity: f32,
        interpolationMode: D2D1_BITMAP_INTERPOLATION_MODE,
        sourceRectangle: ?*const D2D1_RECT_F,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).DrawBitmap(
            bitmap,
            destinationRectangle,
            opacity,
            interpolationMode,
            sourceRectangle,
        );
    }

    pub inline fn DrawText(
        self: *Self,
        string: []const u16,
        textFormat: *IDWriteTextFormat,
        layoutRect: *const D2D1_RECT_F,
        defaultFillBrush: *ID2D1Brush,
        options: D2D1_DRAW_TEXT_OPTIONS,
        measuringMode: DWRITE_MEASURING_MODE,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).DrawText(
            string,
            textFormat,
            layoutRect,
            defaultFillBrush,
            options,
            measuringMode,
        );
    }

    pub inline fn DrawTextLayout(
        self: *Self,
        origin: D2D1_POINT_2F,
        textLayout: *IDWriteTextLayout,
        defaultFillBrush: *ID2D1Brush,
        options: D2D1_DRAW_TEXT_OPTIONS,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).DrawTextLayout(
            origin,
            textLayout,
            defaultFillBrush,
            options,
        );
    }

    pub inline fn DrawGlyphRun(
        self: *Self,
        baselineOrigin: D2D1_POINT_2F,
        glyphRun: *const DWRITE_GLYPH_RUN,
        foregroundBrush: *ID2D1Brush,
        measuringMode: DWRITE_MEASURING_MODE,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).DrawGlyphRun(
            baselineOrigin,
            glyphRun,
            foregroundBrush,
            measuringMode,
        );
    }

    pub inline fn SetTransform(self: *Self, transform: *const D2D1_MATRIX_3X2_F) void {
        return @ptrCast(*ID2D1RenderTarget, self).SetTransform(transform);
    }

    pub inline fn GetTransform(self: *Self, transform: *D2D1_MATRIX_3X2_F) void {
        return @ptrCast(*ID2D1RenderTarget, self).GetTransform(transform);
    }

    pub inline fn SetAntialiasMode(self: *Self, antialiasMode: D2D1_ANTIALIAS_MODE) void {
        return @ptrCast(*ID2D1RenderTarget, self).SetAntialiasMode(antialiasMode);
    }

    pub inline fn GetAntialiasMode(self: *Self) D2D1_ANTIALIAS_MODE {
        return @ptrCast(*ID2D1RenderTarget, self).GetAntialiasMode();
    }

    pub inline fn SetTextAntialiasMode(self: *Self, textAntialiasMode: D2D1_TEXT_ANTIALIAS_MODE) void {
        return @ptrCast(*ID2D1RenderTarget, self).SetTextAntialiasMode(textAntialiasMode);
    }

    pub inline fn GetTextAntialiasMode(self: *Self) D2D1_TEXT_ANTIALIAS_MODE {
        return @ptrCast(*ID2D1RenderTarget, self).GetTextAntialiasMode();
    }

    pub inline fn SetTextRenderingParams(self: *Self, textRenderingParams: ?*IDWriteRenderingParams) void {
        return @ptrCast(*ID2D1RenderTarget, self).SetTextRenderingParams(textRenderingParams);
    }

    pub inline fn GetTextRenderingParams(self: *Self, textRenderingParams: *?*IDWriteRenderingParams) void {
        return @ptrCast(*ID2D1RenderTarget, self).GetTextRenderingParams(textRenderingParams);
    }

    pub inline fn SetTags(self: *Self, tag1: u64, tag2: u64) void {
        return @ptrCast(*ID2D1RenderTarget, self).SetTags(tag1, tag2);
    }

    pub inline fn GetTags(self: *Self, tag1: ?*u64, tag2: ?*u64) void {
        return @ptrCast(*ID2D1RenderTarget, self).GetTags(tag1, tag2);
    }

    pub inline fn PushLayer(
        self: *Self,
        layerParameters: *const D2D1_LAYER_PARAMETERS,
        layer: ?*ID2D1Layer,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).PushLayer(layerParameters, layer);
    }

    pub inline fn PopLayer(self: *Self) void {
        return @ptrCast(*ID2D1RenderTarget, self).PopLayer();
    }

    pub inline fn Flush(
        self: *Self,
        tag1: ?*u64,
        tag2: ?*u64,
    ) i32 {
        return @ptrCast(*ID2D1RenderTarget, self).Flush(tag1, tag2);
    }

    pub inline fn SaveDrawingState(self: *Self, drawingStateBlock: *ID2D1DrawingStateBlock) void {
        return @ptrCast(*ID2D1RenderTarget, self).SaveDrawingState(drawingStateBlock);
    }

    pub inline fn RestoreDrawingState(self: *Self, drawingStateBlock: *ID2D1DrawingStateBlock) void {
        return @ptrCast(*ID2D1RenderTarget, self).RestoreDrawingState(drawingStateBlock);
    }

    pub inline fn PushAxisAlignedClip(
        self: *Self,
        clipRect: *const D2D1_RECT_F,
        antialiasMode: D2D1_ANTIALIAS_MODE,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).PushAxisAlignedClip(clipRect, antialiasMode);
    }

    pub inline fn PopAxisAlignedClip(self: *Self) void {
        return @ptrCast(*ID2D1RenderTarget, self).PopAxisAlignedClip();
    }

    pub inline fn Clear(self: *Self, clearColor: ?*const D3DCOLORVALUE) void {
        return @ptrCast(*ID2D1RenderTarget, self).Clear(clearColor);
    }

    pub inline fn BeginDraw(self: *Self) void {
        return @ptrCast(*ID2D1RenderTarget, self).BeginDraw();
    }

    pub inline fn EndDraw(self: *Self, tag1: ?*u64, tag2: ?*u64) i32 {
        return @ptrCast(*ID2D1RenderTarget, self).EndDraw(tag1, tag2);
    }

    pub inline fn GetPixelFormat(self: *Self) D2D1_PIXEL_FORMAT {
        return @ptrCast(*ID2D1RenderTarget, self).GetPixelFormat();
    }

    pub inline fn SetDpi(self: *Self, dpiX: f32, dpiY: f32) void {
        return @ptrCast(*ID2D1RenderTarget, self).SetDpi(dpiX, dpiY);
    }

    pub inline fn GetDpi(self: *Self, dpiX: *f32, dpiY: *f32) void {
        return @ptrCast(*ID2D1RenderTarget, self).GetDpi(dpiX, dpiY);
    }

    pub inline fn GetSize(self: *Self) D2D1_SIZE_F {
        return @ptrCast(*ID2D1RenderTarget, self).GetSize();
    }

    pub inline fn GetPixelSize(self: *Self) D2D1_SIZE_U {
        return @ptrCast(*ID2D1RenderTarget, self).GetPixelSize();
    }

    pub inline fn GetMaximumBitmapSize(self: *Self) u32 {
        return @ptrCast(*ID2D1RenderTarget, self).GetMaximumBitmapSize();
    }

    pub inline fn IsSupported(
        self: *Self,
        renderTargetProperties: *const D2D1_RENDER_TARGET_PROPERTIES,
    ) bool {
        return @ptrCast(*ID2D1RenderTarget, self).IsSupported(renderTargetProperties);
    }

    pub inline fn GetBitmap(self: *Self, bitmap: *?*ID2D1Bitmap) i32 {
        return self.lpVtbl.*.GetBitmap(self, bitmap);
    }
};

pub const ID2D1HwndRenderTarget = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("2cd90698-12e2-11dc-9fed-001143a055f9");
    pub const Vtbl = extern struct {
        // ID2D1RenderTarget
        id2d1rendertarget: ID2D1RenderTarget.Vtbl,

        // ID2D1HwndRenderTarget
        CheckWindowState: fn (self: *Self) callconv(.Stdcall) D2D1_WINDOW_STATE,
        Resize: fn (self: *Self, pixelSize: *const D2D1_SIZE_U) callconv(.Stdcall) i32,
        GetHwnd: fn (self: *Self) callconv(.Stdcall) *c_void,
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

    pub inline fn GetFactory(self: *Self, factory: *?*ID2D1Factory) void {
        return @ptrCast(*ID2D1Resource, self).GetFactory(factory);
    }

    pub inline fn CreateBitmap(
        self: *Self,
        size: D2D1_SIZE_U,
        srcData: ?*const c_void,
        pitch: u32,
        bitmapProperties: *const D2D1_BITMAP_PROPERTIES,
        bitmap: *?*ID2D1Bitmap,
    ) i32 {
        return @ptrCast(*ID2D1RenderTarget, self).CreateBitmap(
            size,
            srcData,
            pitch,
            bitmapProperties,
            bitmap,
        );
    }

    pub inline fn CreateBitmapFromWicBitmap(
        self: *Self,
        wicBitmapSource: *IWICBitmapSource,
        bitmapProperties: ?*const D2D1_BITMAP_PROPERTIES,
        bitmap: *?*ID2D1Bitmap,
    ) i32 {
        return @ptrCast(*ID2D1RenderTarget, self).CreateBitmapFromWicBitmap(
            wicBitmapSource,
            bitmapProperties,
            bitmap,
        );
    }

    pub inline fn CreateSharedBitmap(
        self: *Self,
        riid: *const GUID,
        data: *c_void,
        bitmapProperties: ?*const D2D1_BITMAP_PROPERTIES,
        bitmap: *?*ID2D1Bitmap,
    ) i32 {
        return @ptrCast(*ID2D1RenderTarget, self).CreateSharedBitmap(
            riid,
            data,
            bitmapProperties,
            bitmap,
        );
    }

    pub inline fn CreateBitmapBrush(
        self: *Self,
        bitmap: ?*ID2D1Bitmap,
        bitmapBrushProperties: ?*const D2D1_BITMAP_BRUSH_PROPERTIES,
        brushProperties: ?*const D2D1_BRUSH_PROPERTIES,
        bitmapBrush: *?*ID2D1BitmapBrush,
    ) i32 {
        return @ptrCast(*ID2D1RenderTarget, self).CreateBitmapBrush(
            bitmap,
            bitmapBrushProperties,
            brushProperties,
            bitmapBrush,
        );
    }

    pub inline fn CreateSolidColorBrush(
        self: *Self,
        color: *const D3DCOLORVALUE,
        brushProperties: ?*const D2D1_BRUSH_PROPERTIES,
        solidColorBrush: *?*ID2D1SolidColorBrush,
    ) i32 {
        return @ptrCast(*ID2D1RenderTarget, self).CreateSolidColorBrush(
            color,
            brushProperties,
            solidColorBrush,
        );
    }

    pub inline fn CreateGradientStopCollection(
        self: *Self,
        gradientStops: []const D2D1_GRADIENT_STOP,
        colorInterpolationGamma: D2D1_GAMMA,
        extendMode: D2D1_EXTEND_MODE,
        gradientStopCollection: *?*ID2D1GradientStopCollection,
    ) i32 {
        assert(gradientStops.len > 0);
        return @ptrCast(*ID2D1RenderTarget, self).CreateGradientStopCollection(
            gradientStops,
            colorInterpolationGamma,
            extendMode,
            gradientStopCollection,
        );
    }

    pub inline fn CreateLinearGradientBrush(
        self: *Self,
        linearGradientBrushProperties: *const D2D1_LINEAR_GRADIENT_BRUSH_PROPERTIES,
        brushProperties: ?*const D2D1_BRUSH_PROPERTIES,
        gradientStopCollection: *ID2D1GradientStopCollection,
        linearGradientBrush: *?*ID2D1LinearGradientBrush,
    ) i32 {
        return @ptrCast(*ID2D1RenderTarget, self).CreateLinearGradientBrush(
            linearGradientBrushProperties,
            brushProperties,
            gradientStopCollection,
            linearGradientBrush,
        );
    }

    pub inline fn CreateRadialGradientBrush(
        self: *Self,
        radialGradientBrushProperties: *const D2D1_RADIAL_GRADIENT_BRUSH_PROPERTIES,
        brushProperties: ?*const D2D1_BRUSH_PROPERTIES,
        gradientStopCollection: *ID2D1GradientStopCollection,
        radialGradientBrush: *?*ID2D1RadialGradientBrush,
    ) i32 {
        return @ptrCast(*ID2D1RenderTarget, self).CreateRadialGradientBrush(
            radialGradientBrushProperties,
            brushProperties,
            gradientStopCollection,
            radialGradientBrush,
        );
    }

    pub inline fn CreateCompatibleRenderTarget(
        self: *Self,
        desiredSize: ?*const D2D1_SIZE_F,
        desiredPixelSize: ?*const D2D1_SIZE_U,
        desiredFormat: ?*const D2D1_PIXEL_FORMAT,
        options: D2D1_COMPATIBLE_RENDER_TARGET_OPTIONS,
        bitmapRenderTarget: *?*ID2D1BitmapRenderTarget,
    ) i32 {
        return @ptrCast(*ID2D1RenderTarget, self).CreateCompatibleRenderTarget(
            desiredSize,
            desiredPixelSize,
            desiredFormat,
            options,
            bitmapRenderTarget,
        );
    }

    pub inline fn CreateLayer(self: *Self, size: ?*const D2D1_SIZE_F, layer: *?*ID2D1Layer) i32 {
        return @ptrCast(*ID2D1RenderTarget, self).CreateLayer(size, layer);
    }

    pub inline fn CreateMesh(self: *Self, mesh: *?*ID2D1Mesh) i32 {
        return @ptrCast(*ID2D1RenderTarget, self).CreateMesh(mesh);
    }

    pub inline fn DrawLine(
        self: *Self,
        point0: D2D1_POINT_2F,
        point1: D2D1_POINT_2F,
        brush: *ID2D1Brush,
        strokeWidth: f32,
        strokeStyle: ?*ID2D1StrokeStyle,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).DrawLine(
            point0,
            point1,
            brush,
            strokeWidth,
            strokeStyle,
        );
    }

    pub inline fn DrawRectangle(
        self: *Self,
        rect: *const D2D1_RECT_F,
        brush: *ID2D1Brush,
        strokeWidth: f32,
        strokeStyle: ?*ID2D1StrokeStyle,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).DrawRectangle(
            rect,
            brush,
            strokeWidth,
            strokeStyle,
        );
    }

    pub inline fn FillRectangle(self: *Self, rect: *const D2D1_RECT_F, brush: *ID2D1Brush) void {
        return @ptrCast(*ID2D1RenderTarget, self).FillRectangle(rect, brush);
    }

    pub inline fn DrawRoundedRectangle(
        self: *Self,
        roundedRect: *const D2D1_ROUNDED_RECT,
        brush: *ID2D1Brush,
        strokeWidth: f32,
        strokeStyle: ?*ID2D1StrokeStyle,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).DrawRoundedRectangle(
            roundedRect,
            brush,
            strokeWidth,
            strokeStyle,
        );
    }

    pub inline fn FillRoundedRectangle(
        self: *Self,
        roundedRect: *const D2D1_ROUNDED_RECT,
        brush: *ID2D1Brush,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).FillRoundedRectangle(roundedRect, brush);
    }

    pub inline fn DrawEllipse(
        self: *Self,
        ellipse: *const D2D1_ELLIPSE,
        brush: *ID2D1Brush,
        strokeWidth: f32,
        strokeStyle: ?*ID2D1StrokeStyle,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).DrawEllipse(
            ellipse,
            brush,
            strokeWidth,
            strokeStyle,
        );
    }

    pub inline fn FillEllipse(self: *Self, ellipse: *const D2D1_ELLIPSE, brush: *ID2D1Brush) void {
        return @ptrCast(*ID2D1RenderTarget, self).FillEllipse(ellipse, brush);
    }

    pub inline fn DrawGeometry(
        self: *Self,
        geometry: *ID2D1Geometry,
        brush: *ID2D1Brush,
        strokeWidth: f32,
        strokeStyle: ?*ID2D1StrokeStyle,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).DrawGeometry(
            geometry,
            brush,
            strokeWidth,
            strokeStyle,
        );
    }

    pub inline fn FillGeometry(
        self: *Self,
        geometry: *ID2D1Geometry,
        brush: *ID2D1Brush,
        opacityBrush: ?*ID2D1Brush,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).FillGeometry(
            geometry,
            brush,
            opacityBrush,
        );
    }

    pub inline fn FillMesh(self: *Self, mesh: *ID2D1Mesh, brush: *ID2D1Brush) void {
        return @ptrCast(*ID2D1RenderTarget, self).FillMesh(mesh, brush);
    }

    pub inline fn FillOpacityMask(
        self: *Self,
        opacityMask: *ID2D1Bitmap,
        brush: *ID2D1Brush,
        content: D2D1_OPACITY_MASK_CONTENT,
        destinationRectangle: ?*const D2D1_RECT_F,
        sourceRectangle: ?*const D2D1_RECT_F,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).FillOpacityMask(
            opacityMask,
            brush,
            content,
            destinationRectangle,
            sourceRectangle,
        );
    }

    pub inline fn DrawBitmap(
        self: *Self,
        bitmap: *ID2D1Bitmap,
        destinationRectangle: ?*const D2D1_RECT_F,
        opacity: f32,
        interpolationMode: D2D1_BITMAP_INTERPOLATION_MODE,
        sourceRectangle: ?*const D2D1_RECT_F,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).DrawBitmap(
            bitmap,
            destinationRectangle,
            opacity,
            interpolationMode,
            sourceRectangle,
        );
    }

    pub inline fn DrawText(
        self: *Self,
        string: []const u16,
        textFormat: *IDWriteTextFormat,
        layoutRect: *const D2D1_RECT_F,
        defaultFillBrush: *ID2D1Brush,
        options: D2D1_DRAW_TEXT_OPTIONS,
        measuringMode: DWRITE_MEASURING_MODE,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).DrawText(
            string,
            textFormat,
            layoutRect,
            defaultFillBrush,
            options,
            measuringMode,
        );
    }

    pub inline fn DrawTextLayout(
        self: *Self,
        origin: D2D1_POINT_2F,
        textLayout: *IDWriteTextLayout,
        defaultFillBrush: *ID2D1Brush,
        options: D2D1_DRAW_TEXT_OPTIONS,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).DrawTextLayout(
            origin,
            textLayout,
            defaultFillBrush,
            options,
        );
    }

    pub inline fn DrawGlyphRun(
        self: *Self,
        baselineOrigin: D2D1_POINT_2F,
        glyphRun: *const DWRITE_GLYPH_RUN,
        foregroundBrush: *ID2D1Brush,
        measuringMode: DWRITE_MEASURING_MODE,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).DrawGlyphRun(
            baselineOrigin,
            glyphRun,
            foregroundBrush,
            measuringMode,
        );
    }

    pub inline fn SetTransform(self: *Self, transform: *const D2D1_MATRIX_3X2_F) void {
        return @ptrCast(*ID2D1RenderTarget, self).SetTransform(transform);
    }

    pub inline fn GetTransform(self: *Self, transform: *D2D1_MATRIX_3X2_F) void {
        return @ptrCast(*ID2D1RenderTarget, self).GetTransform(transform);
    }

    pub inline fn SetAntialiasMode(self: *Self, antialiasMode: D2D1_ANTIALIAS_MODE) void {
        return @ptrCast(*ID2D1RenderTarget, self).SetAntialiasMode(antialiasMode);
    }

    pub inline fn GetAntialiasMode(self: *Self) D2D1_ANTIALIAS_MODE {
        return @ptrCast(*ID2D1RenderTarget, self).GetAntialiasMode();
    }

    pub inline fn SetTextAntialiasMode(self: *Self, textAntialiasMode: D2D1_TEXT_ANTIALIAS_MODE) void {
        return @ptrCast(*ID2D1RenderTarget, self).SetTextAntialiasMode(textAntialiasMode);
    }

    pub inline fn GetTextAntialiasMode(self: *Self) D2D1_TEXT_ANTIALIAS_MODE {
        return @ptrCast(*ID2D1RenderTarget, self).GetTextAntialiasMode();
    }

    pub inline fn SetTextRenderingParams(self: *Self, textRenderingParams: ?*IDWriteRenderingParams) void {
        return @ptrCast(*ID2D1RenderTarget, self).SetTextRenderingParams(textRenderingParams);
    }

    pub inline fn GetTextRenderingParams(self: *Self, textRenderingParams: *?*IDWriteRenderingParams) void {
        return @ptrCast(*ID2D1RenderTarget, self).GetTextRenderingParams(textRenderingParams);
    }

    pub inline fn SetTags(self: *Self, tag1: u64, tag2: u64) void {
        return @ptrCast(*ID2D1RenderTarget, self).SetTags(tag1, tag2);
    }

    pub inline fn GetTags(self: *Self, tag1: ?*u64, tag2: ?*u64) void {
        return @ptrCast(*ID2D1RenderTarget, self).GetTags(tag1, tag2);
    }

    pub inline fn PushLayer(
        self: *Self,
        layerParameters: *const D2D1_LAYER_PARAMETERS,
        layer: ?*ID2D1Layer,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).PushLayer(layerParameters, layer);
    }

    pub inline fn PopLayer(self: *Self) void {
        return @ptrCast(*ID2D1RenderTarget, self).PopLayer();
    }

    pub inline fn Flush(
        self: *Self,
        tag1: ?*u64,
        tag2: ?*u64,
    ) i32 {
        return @ptrCast(*ID2D1RenderTarget, self).Flush(tag1, tag2);
    }

    pub inline fn SaveDrawingState(self: *Self, drawingStateBlock: *ID2D1DrawingStateBlock) void {
        return @ptrCast(*ID2D1RenderTarget, self).SaveDrawingState(drawingStateBlock);
    }

    pub inline fn RestoreDrawingState(self: *Self, drawingStateBlock: *ID2D1DrawingStateBlock) void {
        return @ptrCast(*ID2D1RenderTarget, self).RestoreDrawingState(drawingStateBlock);
    }

    pub inline fn PushAxisAlignedClip(
        self: *Self,
        clipRect: *const D2D1_RECT_F,
        antialiasMode: D2D1_ANTIALIAS_MODE,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).PushAxisAlignedClip(clipRect, antialiasMode);
    }

    pub inline fn PopAxisAlignedClip(self: *Self) void {
        return @ptrCast(*ID2D1RenderTarget, self).PopAxisAlignedClip();
    }

    pub inline fn Clear(self: *Self, clearColor: ?*const D3DCOLORVALUE) void {
        return @ptrCast(*ID2D1RenderTarget, self).Clear(clearColor);
    }

    pub inline fn BeginDraw(self: *Self) void {
        return @ptrCast(*ID2D1RenderTarget, self).BeginDraw();
    }

    pub inline fn EndDraw(self: *Self, tag1: ?*u64, tag2: ?*u64) i32 {
        return @ptrCast(*ID2D1RenderTarget, self).EndDraw(tag1, tag2);
    }

    pub inline fn GetPixelFormat(self: *Self) D2D1_PIXEL_FORMAT {
        return @ptrCast(*ID2D1RenderTarget, self).GetPixelFormat();
    }

    pub inline fn SetDpi(self: *Self, dpiX: f32, dpiY: f32) void {
        return @ptrCast(*ID2D1RenderTarget, self).SetDpi(dpiX, dpiY);
    }

    pub inline fn GetDpi(self: *Self, dpiX: *f32, dpiY: *f32) void {
        return @ptrCast(*ID2D1RenderTarget, self).GetDpi(dpiX, dpiY);
    }

    pub inline fn GetSize(self: *Self) D2D1_SIZE_F {
        return @ptrCast(*ID2D1RenderTarget, self).GetSize();
    }

    pub inline fn GetPixelSize(self: *Self) D2D1_SIZE_U {
        return @ptrCast(*ID2D1RenderTarget, self).GetPixelSize();
    }

    pub inline fn GetMaximumBitmapSize(self: *Self) u32 {
        return @ptrCast(*ID2D1RenderTarget, self).GetMaximumBitmapSize();
    }

    pub inline fn IsSupported(
        self: *Self,
        renderTargetProperties: *const D2D1_RENDER_TARGET_PROPERTIES,
    ) bool {
        return @ptrCast(*ID2D1RenderTarget, self).IsSupported(renderTargetProperties);
    }

    pub inline fn CheckWindowState(self: *Self) D2D1_WINDOW_STATE {
        return self.lpVtbl.*.CheckWindowState(self);
    }

    pub inline fn Resize(self: *Self, pixelSize: *const D2D1_SIZE_U) i32 {
        return self.lpVtbl.*.Resize(self, pixelSize);
    }

    pub inline fn GetHwnd(self: *Self) *c_void {
        return self.lpVtbl.*.GetHwnd(self);
    }
};

pub const ID2D1GdiInteropRenderTarget = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("e0db51c3-6f77-4bae-b3d5-e47509b35838");
    pub const Vtbl = extern struct {
        // IUnknown
        iunknown: IUnknown.Vtbl,

        // ID2D1GdiInteropRenderTarget
        GetDC: fn (self: *Self, mode: D2D1_DC_INITIALIZE_MODE, hdc: *?*c_void) callconv(.Stdcall) i32,
        ReleaseDC: fn (self: *Self, update: ?*const RECT) callconv(.Stdcall) i32,
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

    pub inline fn GetFactory(self: *Self, factory: *?*ID2D1Factory) void {
        return @ptrCast(*ID2D1Resource, self).GetFactory(factory);
    }

    pub inline fn CreateBitmap(
        self: *Self,
        size: D2D1_SIZE_U,
        srcData: ?*const c_void,
        pitch: u32,
        bitmapProperties: *const D2D1_BITMAP_PROPERTIES,
        bitmap: *?*ID2D1Bitmap,
    ) i32 {
        return @ptrCast(*ID2D1RenderTarget, self).CreateBitmap(
            size,
            srcData,
            pitch,
            bitmapProperties,
            bitmap,
        );
    }

    pub inline fn CreateBitmapFromWicBitmap(
        self: *Self,
        wicBitmapSource: *IWICBitmapSource,
        bitmapProperties: ?*const D2D1_BITMAP_PROPERTIES,
        bitmap: *?*ID2D1Bitmap,
    ) i32 {
        return @ptrCast(*ID2D1RenderTarget, self).CreateBitmapFromWicBitmap(
            wicBitmapSource,
            bitmapProperties,
            bitmap,
        );
    }

    pub inline fn CreateSharedBitmap(
        self: *Self,
        riid: *const GUID,
        data: *c_void,
        bitmapProperties: ?*const D2D1_BITMAP_PROPERTIES,
        bitmap: *?*ID2D1Bitmap,
    ) i32 {
        return @ptrCast(*ID2D1RenderTarget, self).CreateSharedBitmap(
            riid,
            data,
            bitmapProperties,
            bitmap,
        );
    }

    pub inline fn CreateBitmapBrush(
        self: *Self,
        bitmap: ?*ID2D1Bitmap,
        bitmapBrushProperties: ?*const D2D1_BITMAP_BRUSH_PROPERTIES,
        brushProperties: ?*const D2D1_BRUSH_PROPERTIES,
        bitmapBrush: *?*ID2D1BitmapBrush,
    ) i32 {
        return @ptrCast(*ID2D1RenderTarget, self).CreateBitmapBrush(
            bitmap,
            bitmapBrushProperties,
            brushProperties,
            bitmapBrush,
        );
    }

    pub inline fn CreateSolidColorBrush(
        self: *Self,
        color: *const D3DCOLORVALUE,
        brushProperties: ?*const D2D1_BRUSH_PROPERTIES,
        solidColorBrush: *?*ID2D1SolidColorBrush,
    ) i32 {
        return @ptrCast(*ID2D1RenderTarget, self).CreateSolidColorBrush(
            color,
            brushProperties,
            solidColorBrush,
        );
    }

    pub inline fn CreateGradientStopCollection(
        self: *Self,
        gradientStops: []const D2D1_GRADIENT_STOP,
        colorInterpolationGamma: D2D1_GAMMA,
        extendMode: D2D1_EXTEND_MODE,
        gradientStopCollection: *?*ID2D1GradientStopCollection,
    ) i32 {
        assert(gradientStops.len > 0);
        return @ptrCast(*ID2D1RenderTarget, self).CreateGradientStopCollection(
            gradientStops,
            colorInterpolationGamma,
            extendMode,
            gradientStopCollection,
        );
    }

    pub inline fn CreateLinearGradientBrush(
        self: *Self,
        linearGradientBrushProperties: *const D2D1_LINEAR_GRADIENT_BRUSH_PROPERTIES,
        brushProperties: ?*const D2D1_BRUSH_PROPERTIES,
        gradientStopCollection: *ID2D1GradientStopCollection,
        linearGradientBrush: *?*ID2D1LinearGradientBrush,
    ) i32 {
        return @ptrCast(*ID2D1RenderTarget, self).CreateLinearGradientBrush(
            linearGradientBrushProperties,
            brushProperties,
            gradientStopCollection,
            linearGradientBrush,
        );
    }

    pub inline fn CreateRadialGradientBrush(
        self: *Self,
        radialGradientBrushProperties: *const D2D1_RADIAL_GRADIENT_BRUSH_PROPERTIES,
        brushProperties: ?*const D2D1_BRUSH_PROPERTIES,
        gradientStopCollection: *ID2D1GradientStopCollection,
        radialGradientBrush: *?*ID2D1RadialGradientBrush,
    ) i32 {
        return @ptrCast(*ID2D1RenderTarget, self).CreateRadialGradientBrush(
            radialGradientBrushProperties,
            brushProperties,
            gradientStopCollection,
            radialGradientBrush,
        );
    }

    pub inline fn CreateCompatibleRenderTarget(
        self: *Self,
        desiredSize: ?*const D2D1_SIZE_F,
        desiredPixelSize: ?*const D2D1_SIZE_U,
        desiredFormat: ?*const D2D1_PIXEL_FORMAT,
        options: D2D1_COMPATIBLE_RENDER_TARGET_OPTIONS,
        bitmapRenderTarget: *?*ID2D1BitmapRenderTarget,
    ) i32 {
        return @ptrCast(*ID2D1RenderTarget, self).CreateCompatibleRenderTarget(
            desiredSize,
            desiredPixelSize,
            desiredFormat,
            options,
            bitmapRenderTarget,
        );
    }

    pub inline fn CreateLayer(self: *Self, size: ?*const D2D1_SIZE_F, layer: *?*ID2D1Layer) i32 {
        return @ptrCast(*ID2D1RenderTarget, self).CreateLayer(size, layer);
    }

    pub inline fn CreateMesh(self: *Self, mesh: *?*ID2D1Mesh) i32 {
        return @ptrCast(*ID2D1RenderTarget, self).CreateMesh(mesh);
    }

    pub inline fn DrawLine(
        self: *Self,
        point0: D2D1_POINT_2F,
        point1: D2D1_POINT_2F,
        brush: *ID2D1Brush,
        strokeWidth: f32,
        strokeStyle: ?*ID2D1StrokeStyle,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).DrawLine(
            point0,
            point1,
            brush,
            strokeWidth,
            strokeStyle,
        );
    }

    pub inline fn DrawRectangle(
        self: *Self,
        rect: *const D2D1_RECT_F,
        brush: *ID2D1Brush,
        strokeWidth: f32,
        strokeStyle: ?*ID2D1StrokeStyle,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).DrawRectangle(
            rect,
            brush,
            strokeWidth,
            strokeStyle,
        );
    }

    pub inline fn FillRectangle(self: *Self, rect: *const D2D1_RECT_F, brush: *ID2D1Brush) void {
        return @ptrCast(*ID2D1RenderTarget, self).FillRectangle(rect, brush);
    }

    pub inline fn DrawRoundedRectangle(
        self: *Self,
        roundedRect: *const D2D1_ROUNDED_RECT,
        brush: *ID2D1Brush,
        strokeWidth: f32,
        strokeStyle: ?*ID2D1StrokeStyle,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).DrawRoundedRectangle(
            roundedRect,
            brush,
            strokeWidth,
            strokeStyle,
        );
    }

    pub inline fn FillRoundedRectangle(
        self: *Self,
        roundedRect: *const D2D1_ROUNDED_RECT,
        brush: *ID2D1Brush,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).FillRoundedRectangle(roundedRect, brush);
    }

    pub inline fn DrawEllipse(
        self: *Self,
        ellipse: *const D2D1_ELLIPSE,
        brush: *ID2D1Brush,
        strokeWidth: f32,
        strokeStyle: ?*ID2D1StrokeStyle,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).DrawEllipse(
            ellipse,
            brush,
            strokeWidth,
            strokeStyle,
        );
    }

    pub inline fn FillEllipse(self: *Self, ellipse: *const D2D1_ELLIPSE, brush: *ID2D1Brush) void {
        return @ptrCast(*ID2D1RenderTarget, self).FillEllipse(ellipse, brush);
    }

    pub inline fn DrawGeometry(
        self: *Self,
        geometry: *ID2D1Geometry,
        brush: *ID2D1Brush,
        strokeWidth: f32,
        strokeStyle: ?*ID2D1StrokeStyle,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).DrawGeometry(
            geometry,
            brush,
            strokeWidth,
            strokeStyle,
        );
    }

    pub inline fn FillGeometry(
        self: *Self,
        geometry: *ID2D1Geometry,
        brush: *ID2D1Brush,
        opacityBrush: ?*ID2D1Brush,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).FillGeometry(
            geometry,
            brush,
            opacityBrush,
        );
    }

    pub inline fn FillMesh(self: *Self, mesh: *ID2D1Mesh, brush: *ID2D1Brush) void {
        return @ptrCast(*ID2D1RenderTarget, self).FillMesh(mesh, brush);
    }

    pub inline fn FillOpacityMask(
        self: *Self,
        opacityMask: *ID2D1Bitmap,
        brush: *ID2D1Brush,
        content: D2D1_OPACITY_MASK_CONTENT,
        destinationRectangle: ?*const D2D1_RECT_F,
        sourceRectangle: ?*const D2D1_RECT_F,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).FillOpacityMask(
            opacityMask,
            brush,
            content,
            destinationRectangle,
            sourceRectangle,
        );
    }

    pub inline fn DrawBitmap(
        self: *Self,
        bitmap: *ID2D1Bitmap,
        destinationRectangle: ?*const D2D1_RECT_F,
        opacity: f32,
        interpolationMode: D2D1_BITMAP_INTERPOLATION_MODE,
        sourceRectangle: ?*const D2D1_RECT_F,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).DrawBitmap(
            bitmap,
            destinationRectangle,
            opacity,
            interpolationMode,
            sourceRectangle,
        );
    }

    pub inline fn DrawText(
        self: *Self,
        string: []const u16,
        textFormat: *IDWriteTextFormat,
        layoutRect: *const D2D1_RECT_F,
        defaultFillBrush: *ID2D1Brush,
        options: D2D1_DRAW_TEXT_OPTIONS,
        measuringMode: DWRITE_MEASURING_MODE,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).DrawText(
            string,
            textFormat,
            layoutRect,
            defaultFillBrush,
            options,
            measuringMode,
        );
    }

    pub inline fn DrawTextLayout(
        self: *Self,
        origin: D2D1_POINT_2F,
        textLayout: *IDWriteTextLayout,
        defaultFillBrush: *ID2D1Brush,
        options: D2D1_DRAW_TEXT_OPTIONS,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).DrawTextLayout(
            origin,
            textLayout,
            defaultFillBrush,
            options,
        );
    }

    pub inline fn DrawGlyphRun(
        self: *Self,
        baselineOrigin: D2D1_POINT_2F,
        glyphRun: *const DWRITE_GLYPH_RUN,
        foregroundBrush: *ID2D1Brush,
        measuringMode: DWRITE_MEASURING_MODE,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).DrawGlyphRun(
            baselineOrigin,
            glyphRun,
            foregroundBrush,
            measuringMode,
        );
    }

    pub inline fn SetTransform(self: *Self, transform: *const D2D1_MATRIX_3X2_F) void {
        return @ptrCast(*ID2D1RenderTarget, self).SetTransform(transform);
    }

    pub inline fn GetTransform(self: *Self, transform: *D2D1_MATRIX_3X2_F) void {
        return @ptrCast(*ID2D1RenderTarget, self).GetTransform(transform);
    }

    pub inline fn SetAntialiasMode(self: *Self, antialiasMode: D2D1_ANTIALIAS_MODE) void {
        return @ptrCast(*ID2D1RenderTarget, self).SetAntialiasMode(antialiasMode);
    }

    pub inline fn GetAntialiasMode(self: *Self) D2D1_ANTIALIAS_MODE {
        return @ptrCast(*ID2D1RenderTarget, self).GetAntialiasMode();
    }

    pub inline fn SetTextAntialiasMode(self: *Self, textAntialiasMode: D2D1_TEXT_ANTIALIAS_MODE) void {
        return @ptrCast(*ID2D1RenderTarget, self).SetTextAntialiasMode(textAntialiasMode);
    }

    pub inline fn GetTextAntialiasMode(self: *Self) D2D1_TEXT_ANTIALIAS_MODE {
        return @ptrCast(*ID2D1RenderTarget, self).GetTextAntialiasMode();
    }

    pub inline fn SetTextRenderingParams(self: *Self, textRenderingParams: ?*IDWriteRenderingParams) void {
        return @ptrCast(*ID2D1RenderTarget, self).SetTextRenderingParams(textRenderingParams);
    }

    pub inline fn GetTextRenderingParams(self: *Self, textRenderingParams: *?*IDWriteRenderingParams) void {
        return @ptrCast(*ID2D1RenderTarget, self).GetTextRenderingParams(textRenderingParams);
    }

    pub inline fn SetTags(self: *Self, tag1: u64, tag2: u64) void {
        return @ptrCast(*ID2D1RenderTarget, self).SetTags(tag1, tag2);
    }

    pub inline fn GetTags(self: *Self, tag1: ?*u64, tag2: ?*u64) void {
        return @ptrCast(*ID2D1RenderTarget, self).GetTags(tag1, tag2);
    }

    pub inline fn PushLayer(
        self: *Self,
        layerParameters: *const D2D1_LAYER_PARAMETERS,
        layer: ?*ID2D1Layer,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).PushLayer(layerParameters, layer);
    }

    pub inline fn PopLayer(self: *Self) void {
        return @ptrCast(*ID2D1RenderTarget, self).PopLayer();
    }

    pub inline fn Flush(
        self: *Self,
        tag1: ?*u64,
        tag2: ?*u64,
    ) i32 {
        return @ptrCast(*ID2D1RenderTarget, self).Flush(tag1, tag2);
    }

    pub inline fn SaveDrawingState(self: *Self, drawingStateBlock: *ID2D1DrawingStateBlock) void {
        return @ptrCast(*ID2D1RenderTarget, self).SaveDrawingState(drawingStateBlock);
    }

    pub inline fn RestoreDrawingState(self: *Self, drawingStateBlock: *ID2D1DrawingStateBlock) void {
        return @ptrCast(*ID2D1RenderTarget, self).RestoreDrawingState(drawingStateBlock);
    }

    pub inline fn PushAxisAlignedClip(
        self: *Self,
        clipRect: *const D2D1_RECT_F,
        antialiasMode: D2D1_ANTIALIAS_MODE,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).PushAxisAlignedClip(clipRect, antialiasMode);
    }

    pub inline fn PopAxisAlignedClip(self: *Self) void {
        return @ptrCast(*ID2D1RenderTarget, self).PopAxisAlignedClip();
    }

    pub inline fn Clear(self: *Self, clearColor: ?*const D3DCOLORVALUE) void {
        return @ptrCast(*ID2D1RenderTarget, self).Clear(clearColor);
    }

    pub inline fn BeginDraw(self: *Self) void {
        return @ptrCast(*ID2D1RenderTarget, self).BeginDraw();
    }

    pub inline fn EndDraw(self: *Self, tag1: ?*u64, tag2: ?*u64) i32 {
        return @ptrCast(*ID2D1RenderTarget, self).EndDraw(tag1, tag2);
    }

    pub inline fn GetPixelFormat(self: *Self) D2D1_PIXEL_FORMAT {
        return @ptrCast(*ID2D1RenderTarget, self).GetPixelFormat();
    }

    pub inline fn SetDpi(self: *Self, dpiX: f32, dpiY: f32) void {
        return @ptrCast(*ID2D1RenderTarget, self).SetDpi(dpiX, dpiY);
    }

    pub inline fn GetDpi(self: *Self, dpiX: *f32, dpiY: *f32) void {
        return @ptrCast(*ID2D1RenderTarget, self).GetDpi(dpiX, dpiY);
    }

    pub inline fn GetSize(self: *Self) D2D1_SIZE_F {
        return @ptrCast(*ID2D1RenderTarget, self).GetSize();
    }

    pub inline fn GetPixelSize(self: *Self) D2D1_SIZE_U {
        return @ptrCast(*ID2D1RenderTarget, self).GetPixelSize();
    }

    pub inline fn GetMaximumBitmapSize(self: *Self) u32 {
        return @ptrCast(*ID2D1RenderTarget, self).GetMaximumBitmapSize();
    }

    pub inline fn IsSupported(
        self: *Self,
        renderTargetProperties: *const D2D1_RENDER_TARGET_PROPERTIES,
    ) bool {
        return @ptrCast(*ID2D1RenderTarget, self).IsSupported(renderTargetProperties);
    }

    pub inline fn GetDC(self: *Self, mode: D2D1_DC_INITIALIZE_MODE, hdc: *?*c_void) i32 {
        return self.lpVtbl.*.GetDC(self, mode, hdc);
    }

    pub inline fn ReleaseDC(self: *Self, update: ?*const RECT) i32 {
        return self.lpVtbl.*.ReleaseDC(self, update);
    }
};

pub const ID2D1DCRenderTarget = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("1c51bc64-de61-46fd-9899-63a5d8f03950");
    pub const Vtbl = extern struct {
        // ID2D1RenderTarget
        id2d1rendertarget: ID2D1RenderTarget.Vtbl,

        // ID2D1DCRenderTarget
        BindDC: fn (self: *Self, hDC: *const c_void, pSubRect: *const RECT) callconv(.Stdcall) i32,
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

    pub inline fn GetFactory(self: *Self, factory: *?*ID2D1Factory) void {
        return @ptrCast(*ID2D1Resource, self).GetFactory(factory);
    }

    pub inline fn CreateBitmap(
        self: *Self,
        size: D2D1_SIZE_U,
        srcData: ?*const c_void,
        pitch: u32,
        bitmapProperties: *const D2D1_BITMAP_PROPERTIES,
        bitmap: *?*ID2D1Bitmap,
    ) i32 {
        return @ptrCast(*ID2D1RenderTarget, self).CreateBitmap(
            size,
            srcData,
            pitch,
            bitmapProperties,
            bitmap,
        );
    }

    pub inline fn CreateBitmapFromWicBitmap(
        self: *Self,
        wicBitmapSource: *IWICBitmapSource,
        bitmapProperties: ?*const D2D1_BITMAP_PROPERTIES,
        bitmap: *?*ID2D1Bitmap,
    ) i32 {
        return @ptrCast(*ID2D1RenderTarget, self).CreateBitmapFromWicBitmap(
            wicBitmapSource,
            bitmapProperties,
            bitmap,
        );
    }

    pub inline fn CreateSharedBitmap(
        self: *Self,
        riid: *const GUID,
        data: *c_void,
        bitmapProperties: ?*const D2D1_BITMAP_PROPERTIES,
        bitmap: *?*ID2D1Bitmap,
    ) i32 {
        return @ptrCast(*ID2D1RenderTarget, self).CreateSharedBitmap(
            riid,
            data,
            bitmapProperties,
            bitmap,
        );
    }

    pub inline fn CreateBitmapBrush(
        self: *Self,
        bitmap: ?*ID2D1Bitmap,
        bitmapBrushProperties: ?*const D2D1_BITMAP_BRUSH_PROPERTIES,
        brushProperties: ?*const D2D1_BRUSH_PROPERTIES,
        bitmapBrush: *?*ID2D1BitmapBrush,
    ) i32 {
        return @ptrCast(*ID2D1RenderTarget, self).CreateBitmapBrush(
            bitmap,
            bitmapBrushProperties,
            brushProperties,
            bitmapBrush,
        );
    }

    pub inline fn CreateSolidColorBrush(
        self: *Self,
        color: *const D3DCOLORVALUE,
        brushProperties: ?*const D2D1_BRUSH_PROPERTIES,
        solidColorBrush: *?*ID2D1SolidColorBrush,
    ) i32 {
        return @ptrCast(*ID2D1RenderTarget, self).CreateSolidColorBrush(
            color,
            brushProperties,
            solidColorBrush,
        );
    }

    pub inline fn CreateGradientStopCollection(
        self: *Self,
        gradientStops: []const D2D1_GRADIENT_STOP,
        colorInterpolationGamma: D2D1_GAMMA,
        extendMode: D2D1_EXTEND_MODE,
        gradientStopCollection: *?*ID2D1GradientStopCollection,
    ) i32 {
        assert(gradientStops.len > 0);
        return @ptrCast(*ID2D1RenderTarget, self).CreateGradientStopCollection(
            gradientStops,
            colorInterpolationGamma,
            extendMode,
            gradientStopCollection,
        );
    }

    pub inline fn CreateLinearGradientBrush(
        self: *Self,
        linearGradientBrushProperties: *const D2D1_LINEAR_GRADIENT_BRUSH_PROPERTIES,
        brushProperties: ?*const D2D1_BRUSH_PROPERTIES,
        gradientStopCollection: *ID2D1GradientStopCollection,
        linearGradientBrush: *?*ID2D1LinearGradientBrush,
    ) i32 {
        return @ptrCast(*ID2D1RenderTarget, self).CreateLinearGradientBrush(
            linearGradientBrushProperties,
            brushProperties,
            gradientStopCollection,
            linearGradientBrush,
        );
    }

    pub inline fn CreateRadialGradientBrush(
        self: *Self,
        radialGradientBrushProperties: *const D2D1_RADIAL_GRADIENT_BRUSH_PROPERTIES,
        brushProperties: ?*const D2D1_BRUSH_PROPERTIES,
        gradientStopCollection: *ID2D1GradientStopCollection,
        radialGradientBrush: *?*ID2D1RadialGradientBrush,
    ) i32 {
        return @ptrCast(*ID2D1RenderTarget, self).CreateRadialGradientBrush(
            radialGradientBrushProperties,
            brushProperties,
            gradientStopCollection,
            radialGradientBrush,
        );
    }

    pub inline fn CreateCompatibleRenderTarget(
        self: *Self,
        desiredSize: ?*const D2D1_SIZE_F,
        desiredPixelSize: ?*const D2D1_SIZE_U,
        desiredFormat: ?*const D2D1_PIXEL_FORMAT,
        options: D2D1_COMPATIBLE_RENDER_TARGET_OPTIONS,
        bitmapRenderTarget: *?*ID2D1BitmapRenderTarget,
    ) i32 {
        return @ptrCast(*ID2D1RenderTarget, self).CreateCompatibleRenderTarget(
            desiredSize,
            desiredPixelSize,
            desiredFormat,
            options,
            bitmapRenderTarget,
        );
    }

    pub inline fn CreateLayer(self: *Self, size: ?*const D2D1_SIZE_F, layer: *?*ID2D1Layer) i32 {
        return @ptrCast(*ID2D1RenderTarget, self).CreateLayer(size, layer);
    }

    pub inline fn CreateMesh(self: *Self, mesh: *?*ID2D1Mesh) i32 {
        return @ptrCast(*ID2D1RenderTarget, self).CreateMesh(mesh);
    }

    pub inline fn DrawLine(
        self: *Self,
        point0: D2D1_POINT_2F,
        point1: D2D1_POINT_2F,
        brush: *ID2D1Brush,
        strokeWidth: f32,
        strokeStyle: ?*ID2D1StrokeStyle,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).DrawLine(
            point0,
            point1,
            brush,
            strokeWidth,
            strokeStyle,
        );
    }

    pub inline fn DrawRectangle(
        self: *Self,
        rect: *const D2D1_RECT_F,
        brush: *ID2D1Brush,
        strokeWidth: f32,
        strokeStyle: ?*ID2D1StrokeStyle,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).DrawRectangle(
            rect,
            brush,
            strokeWidth,
            strokeStyle,
        );
    }

    pub inline fn FillRectangle(self: *Self, rect: *const D2D1_RECT_F, brush: *ID2D1Brush) void {
        return @ptrCast(*ID2D1RenderTarget, self).FillRectangle(rect, brush);
    }

    pub inline fn DrawRoundedRectangle(
        self: *Self,
        roundedRect: *const D2D1_ROUNDED_RECT,
        brush: *ID2D1Brush,
        strokeWidth: f32,
        strokeStyle: ?*ID2D1StrokeStyle,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).DrawRoundedRectangle(
            roundedRect,
            brush,
            strokeWidth,
            strokeStyle,
        );
    }

    pub inline fn FillRoundedRectangle(
        self: *Self,
        roundedRect: *const D2D1_ROUNDED_RECT,
        brush: *ID2D1Brush,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).FillRoundedRectangle(roundedRect, brush);
    }

    pub inline fn DrawEllipse(
        self: *Self,
        ellipse: *const D2D1_ELLIPSE,
        brush: *ID2D1Brush,
        strokeWidth: f32,
        strokeStyle: ?*ID2D1StrokeStyle,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).DrawEllipse(
            ellipse,
            brush,
            strokeWidth,
            strokeStyle,
        );
    }

    pub inline fn FillEllipse(self: *Self, ellipse: *const D2D1_ELLIPSE, brush: *ID2D1Brush) void {
        return @ptrCast(*ID2D1RenderTarget, self).FillEllipse(ellipse, brush);
    }

    pub inline fn DrawGeometry(
        self: *Self,
        geometry: *ID2D1Geometry,
        brush: *ID2D1Brush,
        strokeWidth: f32,
        strokeStyle: ?*ID2D1StrokeStyle,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).DrawGeometry(
            geometry,
            brush,
            strokeWidth,
            strokeStyle,
        );
    }

    pub inline fn FillGeometry(
        self: *Self,
        geometry: *ID2D1Geometry,
        brush: *ID2D1Brush,
        opacityBrush: ?*ID2D1Brush,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).FillGeometry(
            geometry,
            brush,
            opacityBrush,
        );
    }

    pub inline fn FillMesh(self: *Self, mesh: *ID2D1Mesh, brush: *ID2D1Brush) void {
        return @ptrCast(*ID2D1RenderTarget, self).FillMesh(mesh, brush);
    }

    pub inline fn FillOpacityMask(
        self: *Self,
        opacityMask: *ID2D1Bitmap,
        brush: *ID2D1Brush,
        content: D2D1_OPACITY_MASK_CONTENT,
        destinationRectangle: ?*const D2D1_RECT_F,
        sourceRectangle: ?*const D2D1_RECT_F,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).FillOpacityMask(
            opacityMask,
            brush,
            content,
            destinationRectangle,
            sourceRectangle,
        );
    }

    pub inline fn DrawBitmap(
        self: *Self,
        bitmap: *ID2D1Bitmap,
        destinationRectangle: ?*const D2D1_RECT_F,
        opacity: f32,
        interpolationMode: D2D1_BITMAP_INTERPOLATION_MODE,
        sourceRectangle: ?*const D2D1_RECT_F,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).DrawBitmap(
            bitmap,
            destinationRectangle,
            opacity,
            interpolationMode,
            sourceRectangle,
        );
    }

    pub inline fn DrawText(
        self: *Self,
        string: []const u16,
        textFormat: *IDWriteTextFormat,
        layoutRect: *const D2D1_RECT_F,
        defaultFillBrush: *ID2D1Brush,
        options: D2D1_DRAW_TEXT_OPTIONS,
        measuringMode: DWRITE_MEASURING_MODE,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).DrawText(
            string,
            textFormat,
            layoutRect,
            defaultFillBrush,
            options,
            measuringMode,
        );
    }

    pub inline fn DrawTextLayout(
        self: *Self,
        origin: D2D1_POINT_2F,
        textLayout: *IDWriteTextLayout,
        defaultFillBrush: *ID2D1Brush,
        options: D2D1_DRAW_TEXT_OPTIONS,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).DrawTextLayout(
            origin,
            textLayout,
            defaultFillBrush,
            options,
        );
    }

    pub inline fn DrawGlyphRun(
        self: *Self,
        baselineOrigin: D2D1_POINT_2F,
        glyphRun: *const DWRITE_GLYPH_RUN,
        foregroundBrush: *ID2D1Brush,
        measuringMode: DWRITE_MEASURING_MODE,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).DrawGlyphRun(
            baselineOrigin,
            glyphRun,
            foregroundBrush,
            measuringMode,
        );
    }

    pub inline fn SetTransform(self: *Self, transform: *const D2D1_MATRIX_3X2_F) void {
        return @ptrCast(*ID2D1RenderTarget, self).SetTransform(transform);
    }

    pub inline fn GetTransform(self: *Self, transform: *D2D1_MATRIX_3X2_F) void {
        return @ptrCast(*ID2D1RenderTarget, self).GetTransform(transform);
    }

    pub inline fn SetAntialiasMode(self: *Self, antialiasMode: D2D1_ANTIALIAS_MODE) void {
        return @ptrCast(*ID2D1RenderTarget, self).SetAntialiasMode(antialiasMode);
    }

    pub inline fn GetAntialiasMode(self: *Self) D2D1_ANTIALIAS_MODE {
        return @ptrCast(*ID2D1RenderTarget, self).GetAntialiasMode();
    }

    pub inline fn SetTextAntialiasMode(self: *Self, textAntialiasMode: D2D1_TEXT_ANTIALIAS_MODE) void {
        return @ptrCast(*ID2D1RenderTarget, self).SetTextAntialiasMode(textAntialiasMode);
    }

    pub inline fn GetTextAntialiasMode(self: *Self) D2D1_TEXT_ANTIALIAS_MODE {
        return @ptrCast(*ID2D1RenderTarget, self).GetTextAntialiasMode();
    }

    pub inline fn SetTextRenderingParams(self: *Self, textRenderingParams: ?*IDWriteRenderingParams) void {
        return @ptrCast(*ID2D1RenderTarget, self).SetTextRenderingParams(textRenderingParams);
    }

    pub inline fn GetTextRenderingParams(self: *Self, textRenderingParams: *?*IDWriteRenderingParams) void {
        return @ptrCast(*ID2D1RenderTarget, self).GetTextRenderingParams(textRenderingParams);
    }

    pub inline fn SetTags(self: *Self, tag1: u64, tag2: u64) void {
        return @ptrCast(*ID2D1RenderTarget, self).SetTags(tag1, tag2);
    }

    pub inline fn GetTags(self: *Self, tag1: ?*u64, tag2: ?*u64) void {
        return @ptrCast(*ID2D1RenderTarget, self).GetTags(tag1, tag2);
    }

    pub inline fn PushLayer(
        self: *Self,
        layerParameters: *const D2D1_LAYER_PARAMETERS,
        layer: ?*ID2D1Layer,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).PushLayer(layerParameters, layer);
    }

    pub inline fn PopLayer(self: *Self) void {
        return @ptrCast(*ID2D1RenderTarget, self).PopLayer();
    }

    pub inline fn Flush(
        self: *Self,
        tag1: ?*u64,
        tag2: ?*u64,
    ) i32 {
        return @ptrCast(*ID2D1RenderTarget, self).Flush(tag1, tag2);
    }

    pub inline fn SaveDrawingState(self: *Self, drawingStateBlock: *ID2D1DrawingStateBlock) void {
        return @ptrCast(*ID2D1RenderTarget, self).SaveDrawingState(drawingStateBlock);
    }

    pub inline fn RestoreDrawingState(self: *Self, drawingStateBlock: *ID2D1DrawingStateBlock) void {
        return @ptrCast(*ID2D1RenderTarget, self).RestoreDrawingState(drawingStateBlock);
    }

    pub inline fn PushAxisAlignedClip(
        self: *Self,
        clipRect: *const D2D1_RECT_F,
        antialiasMode: D2D1_ANTIALIAS_MODE,
    ) void {
        return @ptrCast(*ID2D1RenderTarget, self).PushAxisAlignedClip(clipRect, antialiasMode);
    }

    pub inline fn PopAxisAlignedClip(self: *Self) void {
        return @ptrCast(*ID2D1RenderTarget, self).PopAxisAlignedClip();
    }

    pub inline fn Clear(self: *Self, clearColor: ?*const D3DCOLORVALUE) void {
        return @ptrCast(*ID2D1RenderTarget, self).Clear(clearColor);
    }

    pub inline fn BeginDraw(self: *Self) void {
        return @ptrCast(*ID2D1RenderTarget, self).BeginDraw();
    }

    pub inline fn EndDraw(self: *Self, tag1: ?*u64, tag2: ?*u64) i32 {
        return @ptrCast(*ID2D1RenderTarget, self).EndDraw(tag1, tag2);
    }

    pub inline fn GetPixelFormat(self: *Self) D2D1_PIXEL_FORMAT {
        return @ptrCast(*ID2D1RenderTarget, self).GetPixelFormat();
    }

    pub inline fn SetDpi(self: *Self, dpiX: f32, dpiY: f32) void {
        return @ptrCast(*ID2D1RenderTarget, self).SetDpi(dpiX, dpiY);
    }

    pub inline fn GetDpi(self: *Self, dpiX: *f32, dpiY: *f32) void {
        return @ptrCast(*ID2D1RenderTarget, self).GetDpi(dpiX, dpiY);
    }

    pub inline fn GetSize(self: *Self) D2D1_SIZE_F {
        return @ptrCast(*ID2D1RenderTarget, self).GetSize();
    }

    pub inline fn GetPixelSize(self: *Self) D2D1_SIZE_U {
        return @ptrCast(*ID2D1RenderTarget, self).GetPixelSize();
    }

    pub inline fn GetMaximumBitmapSize(self: *Self) u32 {
        return @ptrCast(*ID2D1RenderTarget, self).GetMaximumBitmapSize();
    }

    pub inline fn IsSupported(
        self: *Self,
        renderTargetProperties: *const D2D1_RENDER_TARGET_PROPERTIES,
    ) bool {
        return @ptrCast(*ID2D1RenderTarget, self).IsSupported(renderTargetProperties);
    }

    pub inline fn BindDC(self: *Self, hDC: *const c_void, pSubRect: *const RECT) i32 {
        return self.lpVtbl.*.BindDC(self, hDC, pSubRect);
    }
};

pub const ID2D1Factory = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("06152247-6f50-465a-9245-118bfd3b6007");
    pub const Vtbl = extern struct {
        // IUnknown
        iunknown: IUnknown.Vtbl,

        // ID2D1Factory
        ReloadSystemMetrics: fn (self: *Self) callconv(.Stdcall) i32,
        GetDesktopDpi: fn (self: *Self, dpiX: *f32, dpiY: *f32) callconv(.Stdcall) void,
        CreateRectangleGeometry: fn (self: *Self, rectangle: *const D2D1_RECT_F, rectangleGeometry: *?*ID2D1RectangleGeometry) callconv(.Stdcall) i32,
        CreateRoundedRectangleGeometry: fn (self: *Self, roundedRectangle: *const D2D1_ROUNDED_RECT, roundedRectangleGeometry: *?*ID2D1RoundedRectangleGeometry) callconv(.Stdcall) i32,
        CreateEllipseGeometry: fn (self: *Self, ellipse: *const D2D1_ELLIPSE, ellipseGeometry: *?*ID2D1EllipseGeometry) callconv(.Stdcall) i32,
        CreateGeometryGroup: fn (self: *Self, fillMode: D2D1_FILL_MODE, geometries: [*]*ID2D1Geometry, geometriesCount: u32, geometryGroup: *?*ID2D1GeometryGroup) callconv(.Stdcall) i32,
        CreateTransformedGeometry: fn (self: *Self, sourceGeometry: *ID2D1Geometry, transform: *const D2D1_MATRIX_3X2_F, transformedGeometry: *?*ID2D1TransformedGeometry) callconv(.Stdcall) i32,
        CreatePathGeometry: fn (self: *Self, pathGeometry: *?*ID2D1PathGeometry) callconv(.Stdcall) i32,
        CreateStrokeStyle: fn (self: *Self, strokeStyleProperties: *const D2D1_STROKE_STYLE_PROPERTIES, dashes: [*]const f32, dashesCount: u32, strokeStyle: *?*ID2D1StrokeStyle) callconv(.Stdcall) i32,
        CreateDrawingStateBlock: fn (self: *Self, drawingStateDescription: ?*const D2D1_DRAWING_STATE_DESCRIPTION, textRenderingParams: ?*IDWriteRenderingParams, drawingStateBlock: *?*ID2D1DrawingStateBlock) callconv(.Stdcall) i32,
        CreateWicBitmapRenderTarget: fn (self: *Self, target: *IWICBitmap, renderTargetProperties: *const D2D1_RENDER_TARGET_PROPERTIES, renderTarget: *?*ID2D1RenderTarget) callconv(.Stdcall) i32,
        CreateHwndRenderTarget: fn (self: *Self, renderTargetProperties: *const D2D1_RENDER_TARGET_PROPERTIES, hwndRenderTargetProperties: *const D2D1_HWND_RENDER_TARGET_PROPERTIES, hwndRenderTarget: *?*ID2D1HwndRenderTarget) callconv(.Stdcall) i32,
        CreateDxgiSurfaceRenderTarget: fn (self: *Self, dxgiSurface: *IDXGISurface, renderTargetProperties: *const D2D1_RENDER_TARGET_PROPERTIES, renderTarget: *?*ID2D1RenderTarget) callconv(.Stdcall) i32,
        CreateDCRenderTarget: fn (self: *Self, renderTargetProperties: *const D2D1_RENDER_TARGET_PROPERTIES, dcRenderTarget: *?*ID2D1DCRenderTarget) callconv(.Stdcall) i32,
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

    pub inline fn ReloadSystemMetrics(self: *Self) i32 {
        return self.lpVtbl.*.ReloadSystemMetrics(self);
    }

    pub inline fn GetDesktopDpi(self: *Self, dpiX: *f32, dpiY: *f32) void {
        return self.lpVtbl.*.GetDesktopDpi(self, dpiX, dpiY);
    }

    pub inline fn CreateRectangleGeometry(
        self: *Self,
        rectangle: *const D2D1_RECT_F,
        rectangleGeometry: *?*ID2D1RectangleGeometry,
    ) i32 {
        return self.lpVtbl.*.CreateRectangleGeometry(
            self,
            rectangle,
            rectangleGeometry,
        );
    }

    pub inline fn CreateRoundedRectangleGeometry(
        self: *Self,
        roundedRectangle: *const D2D1_ROUNDED_RECT,
        roundedRectangleGeometry: *?*ID2D1RoundedRectangleGeometry,
    ) i32 {
        return self.lpVtbl.*.CreateRoundedRectangleGeometry(
            self,
            roundedRectangle,
            roundedRectangleGeometry,
        );
    }

    pub inline fn CreateEllipseGeometry(
        self: *Self,
        ellipse: *const D2D1_ELLIPSE,
        ellipseGeometry: *?*ID2D1EllipseGeometry,
    ) i32 {
        return self.lpVtbl.*.CreateEllipseGeometry(
            self,
            ellipse,
            ellipseGeometry,
        );
    }

    pub inline fn CreateGeometryGroup(
        self: *Self,
        fillMode: D2D1_FILL_MODE,
        geometries: []*ID2D1Geometry,
        geometryGroup: *?*ID2D1GeometryGroup,
    ) i32 {
        return self.lpVtbl.*.CreateGeometryGroup(
            self,
            fillMode,
            geometries.ptr,
            @truncate(u32, geometries.len),
            geometryGroup,
        );
    }

    pub inline fn CreateTransformedGeometry(
        self: *Self,
        sourceGeometry: *ID2D1Geometry,
        transform: *const D2D1_MATRIX_3X2_F,
        transformedGeometry: *?*ID2D1TransformedGeometry,
    ) i32 {
        return self.lpVtbl.*.CreateTransformedGeometry(
            self,
            sourceGeometry,
            transform,
            transformedGeometry,
        );
    }

    pub inline fn CreatePathGeometry(self: *Self, pathGeometry: *?*ID2D1PathGeometry) i32 {
        return self.lpVtbl.*.CreatePathGeometry(self, pathGeometry);
    }

    pub inline fn CreateStrokeStyle(
        self: *Self,
        strokeStyleProperties: *const D2D1_STROKE_STYLE_PROPERTIES,
        dashes: []const f32,
        strokeStyle: *?*ID2D1StrokeStyle,
    ) i32 {
        return self.lpVtbl.*.CreateStrokeStyle(
            self,
            strokeStyleProperties,
            dashes.ptr,
            @truncate(u32, dashes.len),
            strokeStyle,
        );
    }

    pub inline fn CreateDrawingStateBlock(
        self: *Self,
        drawingStateDescription: ?*const D2D1_DRAWING_STATE_DESCRIPTION,
        textRenderingParams: ?*IDWriteRenderingParams,
        drawingStateBlock: *?*ID2D1DrawingStateBlock,
    ) i32 {
        return self.lpVtbl.*.CreateDrawingStateBlock(
            self,
            drawingStateDescription,
            textRenderingParams,
            drawingStateBlock,
        );
    }

    pub inline fn CreateWicBitmapRenderTarget(
        self: *Self,
        target: *IWICBitmap,
        renderTargetProperties: *const D2D1_RENDER_TARGET_PROPERTIES,
        renderTarget: *?*ID2D1RenderTarget,
    ) i32 {
        return self.lpVtbl.*.CreateWicBitmapRenderTarget(
            self,
            target,
            renderTargetProperties,
            renderTarget,
        );
    }

    pub inline fn CreateHwndRenderTarget(
        self: *Self,
        renderTargetProperties: *const D2D1_RENDER_TARGET_PROPERTIES,
        hwndRenderTargetProperties: *const D2D1_HWND_RENDER_TARGET_PROPERTIES,
        hwndRenderTarget: *?*ID2D1HwndRenderTarget,
    ) i32 {
        return self.lpVtbl.*.CreateHwndRenderTarget(
            self,
            renderTargetProperties,
            hwndRenderTargetProperties,
            hwndRenderTarget,
        );
    }

    pub inline fn CreateDxgiSurfaceRenderTarget(
        self: *Self,
        dxgiSurface: *IDXGISurface,
        renderTargetProperties: *const D2D1_RENDER_TARGET_PROPERTIES,
        renderTarget: *?*ID2D1RenderTarget,
    ) i32 {
        return self.lpVtbl.*.CreateDxgiSurfaceRenderTarget(
            self,
            dxgiSurface,
            renderTargetProperties,
            renderTarget,
        );
    }

    pub inline fn CreateDCRenderTarget(
        self: *Self,
        renderTargetProperties: *const D2D1_RENDER_TARGET_PROPERTIES,
        dcRenderTarget: *?*ID2D1DCRenderTarget,
    ) i32 {
        return self.lpVtbl.*.CreateDCRenderTarget(
            self,
            renderTargetProperties,
            dcRenderTarget,
        );
    }
};

pub extern "d2d1" fn D2D1CreateFactory(factoryType: D2D1_FACTORY_TYPE, riid: *const GUID, pFactoryOptions: ?*const D2D1_FACTORY_OPTIONS, ppIFactory: *?*c_void) callconv(.Stdcall) i32;
pub extern "d2d1" fn D2D1MakeRotateMatrix(angle: f32, center: D2D1_POINT_2F, matrix: *D2D1_MATRIX_3X2_F) callconv(.Stdcall) void;
pub extern "d2d1" fn D2D1MakeSkewMatrix(angleX: f32, angleY: f32, center: D2D1_POINT_2F, matrix: *D2D1_MATRIX_3X2_F) callconv(.Stdcall) void;
pub extern "d2d1" fn D2D1IsMatrixInvertible(matrix: *const D2D1_MATRIX_3X2_F) callconv(.Stdcall) i32;
pub extern "d2d1" fn D2D1InvertMatrix(matrix: *const D2D1_MATRIX_3X2_F) callconv(.Stdcall) i32;
