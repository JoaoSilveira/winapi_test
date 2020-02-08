usingnamespace @import("dcommon.zig");
usingnamespace @import("d3dcommon.zig");
usingnamespace @import("dxgitype.zig");
usingnamespace @import("dxgi.zig");

const dwrite = @import("dwrite.zig");
const structs = @import("structs.zig");
const util = @import("../util.zig");
const unknwn = @import("unknwn.zig");
const functions = @import("functions.zig");
const std = @import("std");
const wincodec = @import("wincodec.zig");

const Interface = util.Interface;
const IUnknown = unknwn.IUnknown;
const GUID_STRING = functions.GUID_STRING;
const max = std.math.max;
const GUID = structs.GUID;
const RECT = structs.RECT;
const IDWriteRenderingParams = dwrite.IDWriteRenderingParams;
const IWICBitmapSource = wincodec.IWICBitmapSource;
const IWICBitmap = wincodec.IWICBitmap;
const IDWriteTextFormat = dwrite.IDWriteTextFormat;
const IDWriteTextLayout = dwrite.IDWriteTextLayout;
const DWRITE_GLYPH_RUN = dwrite.DWRITE_GLYPH_RUN;

pub const D2D1_INVALID_TAG = max(c_ulonglong);
pub const D2D1_DEFAULT_FLATTENING_TOLERANCE = 0.25;

pub const D2D1_INTERPOLATION_MODE = extern enum {
    D2D1_INTERPOLATION_MODE_DEFINITION_NEAREST_NEIGHBOR = 0,
    D2D1_INTERPOLATION_MODE_DEFINITION_LINEAR = 1,
    D2D1_INTERPOLATION_MODE_DEFINITION_CUBIC = 2,
    D2D1_INTERPOLATION_MODE_DEFINITION_MULTI_SAMPLE_LINEAR = 3,
    D2D1_INTERPOLATION_MODE_DEFINITION_ANISOTROPIC = 4,
    D2D1_INTERPOLATION_MODE_DEFINITION_HIGH_QUALITY_CUBIC = 5,
    D2D1_INTERPOLATION_MODE_DEFINITION_FANT = 6,
    D2D1_INTERPOLATION_MODE_DEFINITION_MIPMAP_LINEAR = 7,
};

pub const D2D1_GAMMA = extern enum(c_uint) {
    D2D1_GAMMA_2_2 = 0,
    D2D1_GAMMA_1_0 = 1,
    D2D1_GAMMA_FORCE_DWORD = 0xffffffff,
};

pub const D2D1_OPACITY_MASK_CONTENT = extern enum(c_uint) {
    D2D1_OPACITY_MASK_CONTENT_GRAPHICS = 0,
    D2D1_OPACITY_MASK_CONTENT_TEXT_NATURAL = 1,
    D2D1_OPACITY_MASK_CONTENT_TEXT_GDI_COMPATIBLE = 2,
    D2D1_OPACITY_MASK_CONTENT_FORCE_DWORD = 0xffffffff,
};

pub const D2D1_EXTEND_MODE = extern enum(c_uint) {
    D2D1_EXTEND_MODE_CLAMP = 0,
    D2D1_EXTEND_MODE_WRAP = 1,
    D2D1_EXTEND_MODE_MIRROR = 2,
    D2D1_EXTEND_MODE_FORCE_DWORD = 0xffffffff,
};

pub const D2D1_ANTIALIAS_MODE = extern enum(c_uint) {
    D2D1_ANTIALIAS_MODE_PER_PRIMITIVE = 0,
    D2D1_ANTIALIAS_MODE_ALIASED = 1,
    D2D1_ANTIALIAS_MODE_FORCE_DWORD = 0xffffffff,
};

pub const D2D1_TEXT_ANTIALIAS_MODE = extern enum(c_uint) {
    D2D1_TEXT_ANTIALIAS_MODE_DEFAULT = 0,
    D2D1_TEXT_ANTIALIAS_MODE_CLEARTYPE = 1,
    D2D1_TEXT_ANTIALIAS_MODE_GRAYSCALE = 2,
    D2D1_TEXT_ANTIALIAS_MODE_ALIASED = 3,
    D2D1_TEXT_ANTIALIAS_MODE_FORCE_DWORD = 0xffffffff,
};

pub const D2D1_BITMAP_INTERPOLATION_MODE = extern enum(c_uint) {
    D2D1_BITMAP_INTERPOLATION_MODE_NEAREST_NEIGHBOR = @enumToInt(D2D1_INTERPOLATION_MODE.D2D1_INTERPOLATION_MODE_DEFINITION_NEAREST_NEIGHBOR),
    D2D1_BITMAP_INTERPOLATION_MODE_LINEAR = @enumToInt(D2D1_INTERPOLATION_MODE.D2D1_INTERPOLATION_MODE_DEFINITION_LINEAR),
    D2D1_BITMAP_INTERPOLATION_MODE_FORCE_DWORD = 0xffffffff,
};

pub const D2D1_DRAW_TEXT_OPTIONS = extern enum(c_uint) {
    D2D1_DRAW_TEXT_OPTIONS_NO_SNAP = 0x00000001,
    D2D1_DRAW_TEXT_OPTIONS_CLIP = 0x00000002,
    D2D1_DRAW_TEXT_OPTIONS_ENABLE_COLOR_FONT = 0x00000004,
    D2D1_DRAW_TEXT_OPTIONS_DISABLE_COLOR_BITMAP_SNAPPING = 0x00000008,
    D2D1_DRAW_TEXT_OPTIONS_NONE = 0x00000000,
    D2D1_DRAW_TEXT_OPTIONS_FORCE_DWORD = 0xffffffff,
};

pub const D2D1_TAG = c_ulonglong;

pub const D2D1_BITMAP_PROPERTIES = extern struct {
    pixelFormat: D2D1_PIXEL_FORMAT,
    dpiX: f32,
    dpiY: f32,
};

pub const D2D1_GRADIENT_STOP = extern struct {
    position: f32,
    color: D3DCOLORVALUE,
};

pub const D2D1_BRUSH_PROPERTIES = extern struct {
    opacity: f32,
    transform: D2D1_MATRIX_3X2_F,
};

pub const D2D1_BITMAP_BRUSH_PROPERTIES = extern struct {
    extendModeX: D2D1_EXTEND_MODE,
    extendModeY: D2D1_EXTEND_MODE,
    interpolationMode: D2D1_BITMAP_INTERPOLATION_MODE,
};

pub const D2D1_LINEAR_GRADIENT_BRUSH_PROPERTIES = extern struct {
    startPoint: D2D1_POINT_2F,
    endPoint: D2D1_POINT_2F,
};

pub const D2D1_RADIAL_GRADIENT_BRUSH_PROPERTIES = extern struct {
    center: D2D1_POINT_2F,
    gradientOriginOffset: D2D1_POINT_2F,
    radiusX: f32,
    radiusY: f32,
};

pub const D2D1_ARC_SIZE = extern enum(c_uint) {
    D2D1_ARC_SIZE_SMALL = 0,
    D2D1_ARC_SIZE_LARGE = 1,
    D2D1_ARC_SIZE_FORCE_DWORD = 0xffffffff,
};

pub const D2D1_CAP_STYLE = extern enum(c_uint) {
    D2D1_CAP_STYLE_FLAT = 0,
    D2D1_CAP_STYLE_SQUARE = 1,
    D2D1_CAP_STYLE_ROUND = 2,
    D2D1_CAP_STYLE_TRIANGLE = 3,
    D2D1_CAP_STYLE_FORCE_DWORD = 0xffffffff,
};

pub const D2D1_DASH_STYLE = extern enum(c_uint) {
    D2D1_DASH_STYLE_SOLID = 0,
    D2D1_DASH_STYLE_DASH = 1,
    D2D1_DASH_STYLE_DOT = 2,
    D2D1_DASH_STYLE_DASH_DOT = 3,
    D2D1_DASH_STYLE_DASH_DOT_DOT = 4,
    D2D1_DASH_STYLE_CUSTOM = 5,
    D2D1_DASH_STYLE_FORCE_DWORD = 0xffffffff,
};

pub const D2D1_LINE_JOIN = extern enum(c_uint) {
    D2D1_LINE_JOIN_MITER = 0,
    D2D1_LINE_JOIN_BEVEL = 1,
    D2D1_LINE_JOIN_ROUND = 2,
    D2D1_LINE_JOIN_MITER_OR_BEVEL = 3,
    D2D1_LINE_JOIN_FORCE_DWORD = 0xffffffff,
};

pub const D2D1_COMBINE_MODE = extern enum(c_uint) {
    D2D1_COMBINE_MODE_UNION = 0,
    D2D1_COMBINE_MODE_INTERSECT = 1,
    D2D1_COMBINE_MODE_XOR = 2,
    D2D1_COMBINE_MODE_EXCLUDE = 3,
    D2D1_COMBINE_MODE_FORCE_DWORD = 0xffffffff,
};

pub const D2D1_GEOMETRY_RELATION = extern enum(c_uint) {
    D2D1_GEOMETRY_RELATION_UNKNOWN = 0,
    D2D1_GEOMETRY_RELATION_DISJOINT = 1,
    D2D1_GEOMETRY_RELATION_IS_CONTAINED = 2,
    D2D1_GEOMETRY_RELATION_CONTAINS = 3,
    D2D1_GEOMETRY_RELATION_OVERLAP = 4,
    D2D1_GEOMETRY_RELATION_FORCE_DWORD = 0xffffffff,
};

pub const D2D1_GEOMETRY_SIMPLIFICATION_OPTION = extern enum(c_uint) {
    D2D1_GEOMETRY_SIMPLIFICATION_OPTION_CUBICS_AND_LINES = 0,
    D2D1_GEOMETRY_SIMPLIFICATION_OPTION_LINES = 1,
    D2D1_GEOMETRY_SIMPLIFICATION_OPTION_FORCE_DWORD = 0xffffffff,
};

pub const D2D1_FIGURE_BEGIN = extern enum(c_uint) {
    D2D1_FIGURE_BEGIN_FILLED = 0,
    D2D1_FIGURE_BEGIN_HOLLOW = 1,
    D2D1_FIGURE_BEGIN_FORCE_DWORD = 0xffffffff,
};

pub const D2D1_FIGURE_END = extern enum(c_uint) {
    D2D1_FIGURE_END_OPEN = 0,
    D2D1_FIGURE_END_CLOSED = 1,
    D2D1_FIGURE_END_FORCE_DWORD = 0xffffffff,
};

pub const D2D1_BEZIER_SEGMENT = extern struct {
    point1: D2D1_POINT_2F,
    point2: D2D1_POINT_2F,
    point3: D2D1_POINT_2F,
};

pub const D2D1_TRIANGLE = extern struct {
    point1: D2D1_POINT_2F,
    point2: D2D1_POINT_2F,
    point3: D2D1_POINT_2F,
};

pub const D2D1_PATH_SEGMENT = extern enum(c_uint) {
    D2D1_PATH_SEGMENT_NONE = 0x00000000,
    D2D1_PATH_SEGMENT_FORCE_UNSTROKED = 0x00000001,
    D2D1_PATH_SEGMENT_FORCE_ROUND_LINE_JOIN = 0x00000002,
    D2D1_PATH_SEGMENT_FORCE_DWORD = 0xffffffff,
};

pub const D2D1_SWEEP_DIRECTION = extern enum(c_uint) {
    D2D1_SWEEP_DIRECTION_COUNTER_CLOCKWISE = 0,
    D2D1_SWEEP_DIRECTION_CLOCKWISE = 1,
    D2D1_SWEEP_DIRECTION_FORCE_DWORD = 0xffffffff,
};

pub const D2D1_FILL_MODE = extern enum(c_uint) {
    D2D1_FILL_MODE_ALTERNATE = 0,
    D2D1_FILL_MODE_WINDING = 1,
    D2D1_FILL_MODE_FORCE_DWORD = 0xffffffff,
};

pub const D2D1_ARC_SEGMENT = extern struct {
    point: D2D1_POINT_2F,
    size: D2D1_SIZE_F,
    rotationAngle: f32,
    sweepDirection: D2D1_SWEEP_DIRECTION,
    arcSize: D2D1_ARC_SIZE,
};

pub const D2D1_QUADRATIC_BEZIER_SEGMENT = extern struct {
    point1: D2D1_POINT_2F,
    point2: D2D1_POINT_2F,
};

pub const D2D1_ELLIPSE = extern struct {
    point: D2D1_POINT_2F,
    radiusX: f32,
    radiusY: f32,
};

pub const D2D1_ROUNDED_RECT = extern struct {
    rect: D2D1_RECT_F,
    radiusX: f32,
    radiusY: f32,
};

pub const D2D1_STROKE_STYLE_PROPERTIES = extern struct {
    startCap: D2D1_CAP_STYLE,
    endCap: D2D1_CAP_STYLE,
    dashCap: D2D1_CAP_STYLE,
    lineJoin: D2D1_LINE_JOIN,
    miterLimit: f32,
    dashStyle: D2D1_DASH_STYLE,
    dashOffset: f32,
};

pub const D2D1_LAYER_OPTIONS = extern enum(c_uint) {
    D2D1_LAYER_OPTIONS_NONE = 0x00000000,
    D2D1_LAYER_OPTIONS_INITIALIZE_FOR_CLEARTYPE = 0x00000001,
    D2D1_LAYER_OPTIONS_FORCE_DWORD = 0xffffffff,
};

pub const D2D1_LAYER_PARAMETERS = extern struct {
    contentBounds: D2D1_RECT_F,
    geometricMask: ID2D1Geometry,
    maskAntialiasMode: D2D1_ANTIALIAS_MODE,
    maskTransform: D2D1_MATRIX_3X2_F,
    opacity: f32,
    opacityBrush: ID2D1Brush,
    layerOptions: D2D1_LAYER_OPTIONS,
};

pub const D2D1_WINDOW_STATE = extern enum(c_uint) {
    D2D1_WINDOW_STATE_NONE = 0x0000000,
    D2D1_WINDOW_STATE_OCCLUDED = 0x0000001,
    D2D1_WINDOW_STATE_FORCE_DWORD = 0xffffffff,
};

pub const D2D1_RENDER_TARGET_TYPE = extern enum(c_uint) {
    D2D1_RENDER_TARGET_TYPE_DEFAULT = 0,
    D2D1_RENDER_TARGET_TYPE_SOFTWARE = 1,
    D2D1_RENDER_TARGET_TYPE_HARDWARE = 2,
    D2D1_RENDER_TARGET_TYPE_FORCE_DWORD = 0xffffffff,
};

pub const D2D1_FEATURE_LEVEL = extern enum(c_uint) {
    D2D1_FEATURE_LEVEL_DEFAULT = 0,
    D2D1_FEATURE_LEVEL_9 = @enumToInt(D3D_FEATURE_LEVEL.D3D_FEATURE_LEVEL_9_1),
    D2D1_FEATURE_LEVEL_10 = @enumToInt(D3D_FEATURE_LEVEL.D3D_FEATURE_LEVEL_10_0),
    D2D1_FEATURE_LEVEL_FORCE_DWORD = 0xffffffff,
};

pub const D2D1_RENDER_TARGET_USAGE = extern enum(c_uint) {
    D2D1_RENDER_TARGET_USAGE_NONE = 0x00000000,
    D2D1_RENDER_TARGET_USAGE_FORCE_BITMAP_REMOTING = 0x00000001,
    D2D1_RENDER_TARGET_USAGE_GDI_COMPATIBLE = 0x00000002,
    D2D1_RENDER_TARGET_USAGE_FORCE_DWORD = 0xffffffff,
};

pub const D2D1_PRESENT_OPTIONS = extern enum(c_uint) {
    D2D1_PRESENT_OPTIONS_NONE = 0x00000000,
    D2D1_PRESENT_OPTIONS_RETAIN_CONTENTS = 0x00000001,
    D2D1_PRESENT_OPTIONS_IMMEDIATELY = 0x00000002,
    D2D1_PRESENT_OPTIONS_FORCE_DWORD = 0xffffffff,
};

pub const D2D1_RENDER_TARGET_PROPERTIES = extern struct {
    _type: D2D1_RENDER_TARGET_TYPE,
    pixelFormat: D2D1_PIXEL_FORMAT,
    dpiX: f32,
    dpiY: f32,
    usage: D2D1_RENDER_TARGET_USAGE,
    minLevel: D2D1_FEATURE_LEVEL,
};

pub const D2D1_HWND_RENDER_TARGET_PROPERTIES = extern struct {
    hwnd: *c_void,
    pixelSize: D2D1_SIZE_U,
    presentOptions: D2D1_PRESENT_OPTIONS,
};

pub const D2D1_COMPATIBLE_RENDER_TARGET_OPTIONS = extern enum(c_uint) {
    D2D1_COMPATIBLE_RENDER_TARGET_OPTIONS_NONE = 0x00000000,
    D2D1_COMPATIBLE_RENDER_TARGET_OPTIONS_GDI_COMPATIBLE = 0x00000001,
    D2D1_COMPATIBLE_RENDER_TARGET_OPTIONS_FORCE_DWORD = 0xffffffff,
};

pub const D2D1_DRAWING_STATE_DESCRIPTION = extern struct {
    antialiasMode: D2D1_ANTIALIAS_MODE,
    textAntialiasMode: D2D1_TEXT_ANTIALIAS_MODE,
    tag1: D2D1_TAG,
    tag2: D2D1_TAG,
    transform: D2D1_MATRIX_3X2_F,
};

pub const D2D1_DC_INITIALIZE_MODE = extern enum(c_uint) {
    D2D1_DC_INITIALIZE_MODE_COPY = 0,
    D2D1_DC_INITIALIZE_MODE_CLEAR = 1,
    D2D1_DC_INITIALIZE_MODE_FORCE_DWORD = 0xffffffff,
};

pub const D2D1_DEBUG_LEVEL = extern enum(c_uint) {
    D2D1_DEBUG_LEVEL_NONE = 0,
    D2D1_DEBUG_LEVEL_ERROR = 1,
    D2D1_DEBUG_LEVEL_WARNING = 2,
    D2D1_DEBUG_LEVEL_INFORMATION = 3,
    D2D1_DEBUG_LEVEL_FORCE_DWORD = 0xffffffff,
};

pub const D2D1_FACTORY_TYPE = extern enum(c_uint) {
    D2D1_FACTORY_TYPE_SINGLE_THREADED = 0,
    D2D1_FACTORY_TYPE_MULTI_THREADED = 1,
    D2D1_FACTORY_TYPE_FORCE_DWORD = 0xffffffff,
};

pub const D2D1_FACTORY_OPTIONS = extern struct {
    debugLevel: D2D1_DEBUG_LEVEL,
};

pub const IID_ID2D1Resource = GUID_STRING("2cd90691-12e2-11dc-9fed-001143a055f9");
pub const ID2D1Resource = Interface(ID2D1ResourceVtbl);
pub const ID2D1ResourceVtbl = extern struct {
    const Self = ID2D1Resource;

    // IUnknown
    iunknown: IUnknown.Vtbl,

    // ID2D1Resource
    GetFactory: fn (this: *Self, factory: **ID2D1Factory) callconv(.Stdcall) void,
};

pub const IID_ID2D1Image = GUID_STRING("65019f75-8da2-497c-b32c-dfa34e48ede6");
pub const ID2D1Image = Interface(ID2D1ImageVtbl);
pub const ID2D1ImageVtbl = extern struct {
    const Self = ID2D1Image;

    // ID2D1Resource
    id2d1resource: ID2D1ResourceVtbl,

    // ID2D1Image
};

pub const IID_ID2D1Bitmap = GUID_STRING("a2296057-ea42-4099-983b-539fb6505426");
pub const ID2D1Bitmap = Interface(ID2D1BitmapVtbl);
pub const ID2D1BitmapVtbl = extern struct {
    const Self = ID2D1Bitmap;

    // ID2D1Image
    id2d1image: ID2D1ImageVtbl,

    // ID2D1Bitmap
    GetSize: fn (this: *Self) callconv(.Stdcall) D2D1_SIZE_F,
    GetPixelSize: fn (this: *Self) callconv(.Stdcall) D2D1_SIZE_U,
    GetPixelFormat: fn (this: *Self) callconv(.Stdcall) D2D1_PIXEL_FORMAT,
    GetDpi: fn (this: *Self, dpiX: *f32, dpiY: *f32) callconv(.Stdcall) void,
    CopyFromBitmap: fn (this: *Self, destPoint: ?*const D2D1_POINT_2U, bitmap: *ID2D1Bitmap, srcRect: ?*const D2D1_RECT_U) callconv(.Stdcall) c_long,
    CopyFromRenderTarget: fn (this: *Self, destPoint: ?*const D2D1_POINT_2U, renderTarget: *ID2D1RenderTarget, srcRect: ?*const D2D1_RECT_U) callconv(.Stdcall) c_long,
    CopyFromMemory: fn (this: *Self, destPoint: ?*const D2D1_POINT_2U, srcData: *const c_void, pitch: c_uint) callconv(.Stdcall) c_long,
};

pub const IID_ID2D1GradientStopCollection = GUID_STRING("2cd906a7-12e2-11dc-9fed-001143a055f9");
pub const ID2D1GradientStopCollection = Interface(ID2D1GradientStopCollectionVtbl);
pub const ID2D1GradientStopCollectionVtbl = extern struct {
    const Self = ID2D1GradientStopCollection;

    // ID2D1Resource
    id2d1resource: ID2D1ResourceVtbl,

    // ID2D1GradientStopCollection
    GetGradientStopCount: fn (this: *Self) callconv(.Stdcall) c_uint,
    GetGradientStops: fn (this: *Self, gradientStops: [*]D2D1_GRADIENT_STOP, gradientStopsCount: c_uint) callconv(.Stdcall) void,
    GetColorInterpolationGamma: fn (this: *Self) callconv(.Stdcall) D2D1_GAMMA,
    GetExtendMode: fn (this: *Self) callconv(.Stdcall) D2D1_EXTEND_MODE,
};

pub const IID_ID2D1Brush = GUID_STRING("2cd906a8-12e2-11dc-9fed-001143a055f9");
pub const ID2D1Brush = Interface(ID2D1BrushVtbl);
pub const ID2D1BrushVtbl = extern struct {
    const Self = ID2D1Brush;

    // ID2D1Resource
    id2d1resource: ID2D1ResourceVtbl,

    // ID2D1Brush
    SetOpacity: fn (this: *Self, opacity: f32) callconv(.Stdcall) void,
    SetTransform: fn (this: *Self, transform: *const D2D1_MATRIX_3X2_F) callconv(.Stdcall) void,
    GetOpacity: fn (this: *Self) callconv(.Stdcall) f32,
    GetTransform: fn (this: *Self, transform: *D2D1_MATRIX_3X2_F) callconv(.Stdcall) void,
};

pub const IID_ID2D1BitmapBrush = GUID_STRING("2cd906aa-12e2-11dc-9fed-001143a055f9");
pub const ID2D1BitmapBrush = Interface(ID2D1BitmapBrushVtbl);
pub const ID2D1BitmapBrushVtbl = extern struct {
    const Self = ID2D1BitmapBrush;

    // ID2D1Brush
    id2d1brush: ID2D1BrushVtbl,

    // ID2D1BitmapBrush
    SetExtendModeX: fn (this: *Self, extendModeX: D2D1_EXTEND_MODE) callconv(.Stdcall) void,
    SetExtendModeY: fn (this: *Self, extendModeY: D2D1_EXTEND_MODE) callconv(.Stdcall) void,
    SetInterpolationMode: fn (this: *Self, interpolationMode: D2D1_BITMAP_INTERPOLATION_MODE) callconv(.Stdcall) void,
    SetBitmap: fn (this: *Self, bitmap: ?*ID2D1Bitmap) callconv(.Stdcall) void,
    GetExtendModeX: fn (this: *Self) callconv(.Stdcall) D2D1_EXTEND_MODE,
    GetExtendModeY: fn (this: *Self) callconv(.Stdcall) D2D1_EXTEND_MODE,
    GetInterpolationMode: fn (this: *Self) callconv(.Stdcall) D2D1_BITMAP_INTERPOLATION_MODE,
    GetBitmap: fn (this: *Self, bitmap: *?*ID2D1Bitmap) callconv(.Stdcall) void,
};

pub const IID_ID2D1SolidColorBrush = GUID_STRING("2cd906a9-12e2-11dc-9fed-001143a055f9");
pub const ID2D1SolidColorBrush = Interface(ID2D1SolidColorBrushVtbl);
pub const ID2D1SolidColorBrushVtbl = extern struct {
    const Self = ID2D1SolidColorBrush;

    // ID2D1Brush
    id2d1brush: ID2D1BrushVtbl,

    // ID2D1SolidColorBrush
    SetColor: fn (this: *Self, color: *const D3DCOLORVALUE) callconv(.Stdcall) void,
    GetColor: fn (this: *Self) callconv(.Stdcall) D3DCOLORVALUE,
};

pub const IID_ID2D1LinearGradientBrush = GUID_STRING("2cd906ab-12e2-11dc-9fed-001143a055f9");
pub const ID2D1LinearGradientBrush = Interface(ID2D1LinearGradientBrushVtbl);
pub const ID2D1LinearGradientBrushVtbl = extern struct {
    const Self = ID2D1LinearGradientBrush;

    // ID2D1Brush
    id2d1brush: ID2D1BrushVtbl,

    // ID2D1LinearGradientBrush
    SetStartPoint: fn (this: *Self, startPoint: D2D1_POINT_2F) callconv(.Stdcall) void,
    SetEndPoint: fn (this: *Self, endPoint: D2D1_POINT_2F) callconv(.Stdcall) void,
    GetStartPoint: fn (this: *Self) callconv(.Stdcall) D2D1_POINT_2F,
    GetEndPoint: fn (this: *Self) callconv(.Stdcall) D2D1_POINT_2F,
    GetGradientStopCollection: fn (this: *Self, gradientStopCollection: **ID2D1GradientStopCollection) callconv(.Stdcall) void,
};

pub const IID_ID2D1RadialGradientBrush = GUID_STRING("2cd906ac-12e2-11dc-9fed-001143a055f9");
pub const ID2D1RadialGradientBrush = Interface(ID2D1RadialGradientBrushVtbl);
pub const ID2D1RadialGradientBrushVtbl = extern struct {
    const Self = ID2D1RadialGradientBrush;

    // ID2D1Brush
    id2d1brush: ID2D1BrushVtbl,

    // ID2D1RadialGradientBrush
    SetCenter: fn (this: *Self, center: D2D1_POINT_2F) callconv(.Stdcall) void,
    SetGradientOriginOffset: fn (this: *Self, gradientOriginOffset: D2D1_POINT_2F) callconv(.Stdcall) void,
    SetRadiusX: fn (this: *Self, radiusX: f32) callconv(.Stdcall) void,
    SetRadiusY: fn (this: *Self, radiusY: f32) callconv(.Stdcall) void,
    GetCenter: fn (this: *Self) callconv(.Stdcall) D2D1_POINT_2F,
    GetGradientOriginOffset: fn (this: *Self) callconv(.Stdcall) D2D1_POINT_2F,
    GetRadiusX: fn (this: *Self) callconv(.Stdcall) f32,
    GetRadiusY: fn (this: *Self) callconv(.Stdcall) f32,
    GetGradientStopCollection: fn (this: *Self, gradientStopCollection: **ID2D1GradientStopCollection) callconv(.Stdcall) void,
};

pub const IID_ID2D1StrokeStyle = GUID_STRING("2cd9069d-12e2-11dc-9fed-001143a055f9");
pub const ID2D1StrokeStyle = Interface(ID2D1StrokeStyleVtbl);
pub const ID2D1StrokeStyleVtbl = extern struct {
    const Self = ID2D1StrokeStyle;

    // ID2D1Resource
    id2d1resource: ID2D1ResourceVtbl,

    // ID2D1StrokeStyle
    GetStartCap: fn (this: *Self) callconv(.Stdcall) D2D1_CAP_STYLE,
    GetEndCap: fn (this: *Self) callconv(.Stdcall) D2D1_CAP_STYLE,
    GetDashCap: fn (this: *Self) callconv(.Stdcall) D2D1_CAP_STYLE,
    GetMiterLimit: fn (this: *Self) callconv(.Stdcall) f32,
    GetLineJoin: fn (this: *Self) callconv(.Stdcall) D2D1_LINE_JOIN,
    GetDashOffset: fn (this: *Self) callconv(.Stdcall) f32,
    GetDashStyle: fn (this: *Self) callconv(.Stdcall) D2D1_DASH_STYLE,
    GetDashesCount: fn (this: *Self) callconv(.Stdcall) c_uint,
    GetDashes: fn (this: *Self, dashes: [*]f32, dashesCount: c_uint) callconv(.Stdcall) void,
};

pub const IID_ID2D1Geometry = GUID_STRING("2cd906a1-12e2-11dc-9fed-001143a055f9");
pub const ID2D1Geometry = Interface(ID2D1GeometryVtbl);
pub const ID2D1GeometryVtbl = extern struct {
    const Self = ID2D1Geometry;

    // ID2D1Resource
    id2d1resource: ID2D1ResourceVtbl,

    // ID2D1Geometry
    GetBounds: fn (this: *Self, worldTransform: ?*const D2D1_MATRIX_3X2_F, bounds: *D2D1_RECT_F) callconv(.Stdcall) c_long,
    GetWidenedBounds: fn (this: *Self, strokeWidth: f32, strokeStyle: ?*ID2D1StrokeStyle, worldTransform: ?*const D2D1_MATRIX_3X2_F, flatteningTolerance: f32, bounds: *D2D1_RECT_F) callconv(.Stdcall) c_long,
    StrokeContainsPoint: fn (this: *Self, point: D2D1_POINT_2F, strokeWidth: f32, strokeStyle: ?*ID2D1StrokeStyle, worldTransform: ?*const D2D1_MATRIX_3X2_F, flatteningTolerance: f32, contains: *c_int) callconv(.Stdcall) c_long,
    FillContainsPoint: fn (this: *Self, point: D2D1_POINT_2F, worldTransform: ?*const D2D1_MATRIX_3X2_F, flatteningTolerance: f32, contains: *c_int) callconv(.Stdcall) c_long,
    CompareWithGeometry: fn (this: *Self, inputGeometry: *ID2D1Geometry, inputGeometryTransform: ?*const D2D1_MATRIX_3X2_F, flatteningTolerance: f32, relation: *D2D1_GEOMETRY_RELATION) callconv(.Stdcall) c_long,
    Simplify: fn (this: *Self, simplificationOption: D2D1_GEOMETRY_SIMPLIFICATION_OPTION, worldTransform: ?*const D2D1_MATRIX_3X2_F, flatteningTolerance: f32, geometrySink: *ID2D1SimplifiedGeometrySink) callconv(.Stdcall) c_long,
    Tessellate: fn (this: *Self, worldTransform: ?*const D2D1_MATRIX_3X2_F, flatteningTolerance: f32, tessellationSink: *ID2D1TessellationSink) callconv(.Stdcall) c_long,
    CombineWithGeometry: fn (this: *Self, inputGeometry: *ID2D1Geometry, combineMode: D2D1_COMBINE_MODE, inputGeometryTransform: ?*const D2D1_MATRIX_3X2_F, flatteningTolerance: f32, geometrySink: *ID2D1SimplifiedGeometrySink) callconv(.Stdcall) c_long,
    Outline: fn (this: *Self, worldTransform: ?*const D2D1_MATRIX_3X2_F, flatteningTolerance: f32, geometrySink: *ID2D1SimplifiedGeometrySink) callconv(.Stdcall) c_long,
    ComputeArea: fn (this: *Self, worldTransform: ?*const D2D1_MATRIX_3X2_F, flatteningTolerance: f32, area: *f32) callconv(.Stdcall) c_long,
    ComputeLength: fn (this: *Self, worldTransform: ?*const D2D1_MATRIX_3X2_F, flatteningTolerance: f32, length: *f32) callconv(.Stdcall) c_long,
    ComputePointAtLength: fn (this: *Self, length: f32, worldTransform: ?*const D2D1_MATRIX_3X2_F, flatteningTolerance: f32, point: ?*D2D1_POINT_2F, unitTangentVector: ?*D2D1_POINT_2F) callconv(.Stdcall) c_long,
    Widen: fn (this: *Self, strokeWidth: f32, strokeStyle: ?*ID2D1StrokeStyle, worldTransform: ?*const D2D1_MATRIX_3X2_F, flatteningTolerance: f32, geometrySink: *ID2D1SimplifiedGeometrySink) callconv(.Stdcall) c_long,
};

pub const IID_ID2D1RectangleGeometry = GUID_STRING("2cd906a2-12e2-11dc-9fed-001143a055f9");
pub const ID2D1RectangleGeometry = Interface(ID2D1RectangleGeometryVtbl);
pub const ID2D1RectangleGeometryVtbl = extern struct {
    const Self = ID2D1RectangleGeometry;

    // ID2D1Geometry
    id2d1geometry: ID2D1GeometryVtbl,

    // ID2D1RectangleGeometry
    GetRect: fn (this: *Self, rect: *D2D1_RECT_F) callconv(.Stdcall) void,
};

pub const IID_ID2D1RoundedRectangleGeometry = GUID_STRING("2cd906a3-12e2-11dc-9fed-001143a055f9");
pub const ID2D1RoundedRectangleGeometry = Interface(ID2D1RoundedRectangleGeometryVtbl);
pub const ID2D1RoundedRectangleGeometryVtbl = extern struct {
    const Self = ID2D1RoundedRectangleGeometry;

    // ID2D1Geometry
    id2d1geometry: ID2D1GeometryVtbl,

    // ID2D1RoundedRectangleGeometry
    GetRoundedRect: fn (this: *Self, roundedRect: *D2D1_ROUNDED_RECT) callconv(.Stdcall) void,
};

pub const IID_ID2D1EllipseGeometry = GUID_STRING("2cd906a4-12e2-11dc-9fed-001143a055f9");
pub const ID2D1EllipseGeometry = Interface(ID2D1EllipseGeometryVtbl);
pub const ID2D1EllipseGeometryVtbl = extern struct {
    const Self = ID2D1EllipseGeometry;

    // ID2D1Geometry
    ID2D1Geometry: ID2D1GeometryVtbl,

    // ID2D1EllipseGeometry
    GetEllipse: fn (this: *Self, ellipse: *D2D1_ELLIPSE) callconv(.Stdcall) void,
};

pub const IID_ID2D1GeometryGroup = GUID_STRING("2cd906a6-12e2-11dc-9fed-001143a055f9");
pub const ID2D1GeometryGroup = Interface(ID2D1GeometryGroupVtbl);
pub const ID2D1GeometryGroupVtbl = extern struct {
    const Self = ID2D1GeometryGroup;

    // ID2D1Geometry
    id2d1geometry: ID2D1GeometryVtbl,

    // ID2D1GeometryGroup
    GetFillMode: fn (this: *Self) callconv(.Stdcall) D2D1_FILL_MODE,
    GetSourceGeometryCount: fn (this: *Self) callconv(.Stdcall) c_uint,
    GetSourceGeometries: fn (this: *Self, geometries: [*]*ID2D1Geometry, geometriesCount: c_uint) callconv(.Stdcall) void,
};

pub const IID_ID2D1TransformedGeometry = GUID_STRING("2cd906bb-12e2-11dc-9fed-001143a055f9");
pub const ID2D1TransformedGeometry = Interface(ID2D1TransformedGeometryVtbl);
pub const ID2D1TransformedGeometryVtbl = extern struct {
    const Self = ID2D1TransformedGeometry;

    // ID2D1Geometry
    id2d1geometry: ID2D1GeometryVtbl,

    // ID2D1TransformedGeometry
    GetSourceGeometry: fn (this: *Self, sourceGeometry: **ID2D1Geometry) callconv(.Stdcall) void,
    GetTransform: fn (this: *Self, transform: *D2D1_MATRIX_3X2_F) callconv(.Stdcall) void,
};

pub const IID_ID2D1SimplifiedGeometrySink = GUID_STRING("2cd9069e-12e2-11dc-9fed-001143a055f9");
pub const ID2D1SimplifiedGeometrySink = Interface(ID2D1SimplifiedGeometrySinkVtbl);
pub const ID2D1SimplifiedGeometrySinkVtbl = extern struct {
    const Self = ID2D1SimplifiedGeometrySink;

    // IUnknown
    iunknown: IUnknown.Vtbl,

    // ID2D1SimplifiedGeometrySink
    SetFillMode: fn (this: *Self, fillMode: D2D1_FILL_MODE) callconv(.Stdcall) void,
    SetSegmentFlags: fn (this: *Self, vertexFlags: D2D1_PATH_SEGMENT) callconv(.Stdcall) void,
    BeginFigure: fn (this: *Self, startPoint: D2D1_POINT_2F, figureBegin: D2D1_FIGURE_BEGIN) callconv(.Stdcall) void,
    AddLines: fn (this: *Self, points: [*]const D2D1_POINT_2F, pointsCount: c_uint) callconv(.Stdcall) void,
    AddBeziers: fn (this: *Self, beziers: [*]const D2D1_BEZIER_SEGMENT, beziersCount: c_uint) callconv(.Stdcall) void,
    EndFigure: fn (this: *Self, figureEnd: D2D1_FIGURE_END) callconv(.Stdcall) void,
    Close: fn (this: *Self) callconv(.Stdcall) c_long,
};

pub const IID_ID2D1GeometrySink = GUID_STRING("2cd9069f-12e2-11dc-9fed-001143a055f9");
pub const ID2D1GeometrySink = Interface(ID2D1GeometrySinkVtbl);
pub const ID2D1GeometrySinkVtbl = extern struct {
    const Self = ID2D1GeometrySink;

    // ID2D1SimplifiedGeometrySink
    id2d1simplifiedgeometrysink: ID2D1SimplifiedGeometrySinkVtbl,

    // ID2D1GeometrySink
    AddLine: fn (this: *Self, point: D2D1_POINT_2F) callconv(.Stdcall) void,
    AddBezier: fn (this: *Self, bezier: *const D2D1_BEZIER_SEGMENT) callconv(.Stdcall) void,
    AddQuadraticBezier: fn (this: *Self, bezier: *const D2D1_QUADRATIC_BEZIER_SEGMENT) callconv(.Stdcall) void,
    AddQuadraticBeziers: fn (this: *Self, beziers: [*]const D2D1_QUADRATIC_BEZIER_SEGMENT, beziersCount: c_uint) callconv(.Stdcall) void,
    AddArc: fn (this: *Self, arc: *const D2D1_ARC_SEGMENT) callconv(.Stdcall) void,
};

pub const IID_ID2D1TessellationSink = GUID_STRING("2cd906c1-12e2-11dc-9fed-001143a055f9");
pub const ID2D1TessellationSink = Interface(ID2D1TessellationSinkVtbl);
pub const ID2D1TessellationSinkVtbl = extern struct {
    const Self = ID2D1TessellationSink;

    // IUnknown
    iunknown: IUnknown.Vtbl,

    // ID2D1TessellationSink
    AddTriangles: fn (this: *Self, triangles: [*]const D2D1_TRIANGLE, trianglesCount: c_uint) callconv(.Stdcall) void,
    Close: fn (this: *Self) callconv(.Stdcall) c_long,
};

pub const IID_ID2D1PathGeometry = GUID_STRING("2cd906a5-12e2-11dc-9fed-001143a055f9");
pub const ID2D1PathGeometry = Interface(ID2D1PathGeometryVtbl);
pub const ID2D1PathGeometryVtbl = extern struct {
    const Self = ID2D1PathGeometry;

    // ID2D1Geometry
    id2d1geometry: ID2D1GeometryVtbl,

    // ID2D1PathGeometry
    Open: fn (this: *Self, geometrySink: **ID2D1GeometrySink) callconv(.Stdcall) c_long,
    Stream: fn (this: *Self, geometrySink: *ID2D1GeometrySink) callconv(.Stdcall) c_long,
    GetSegmentCount: fn (this: *Self, count: *c_uint) callconv(.Stdcall) c_long,
    GetFigureCount: fn (this: *Self, count: *c_uint) callconv(.Stdcall) c_long,
};

pub const IID_ID2D1Mesh = GUID_STRING("2cd906c2-12e2-11dc-9fed-001143a055f9");
pub const ID2D1Mesh = Interface(ID2D1MeshVtbl);
pub const ID2D1MeshVtbl = extern struct {
    const Self = ID2D1Mesh;

    // ID2D1Resource
    id2d1resource: ID2D1ResourceVtbl,

    // ID2D1Mesh
    Open: fn (this: *Self, tessellationSink: **ID2D1TessellationSink) callconv(.Stdcall) c_long,
};

pub const IID_ID2D1Layer = GUID_STRING("2cd9069b-12e2-11dc-9fed-001143a055f9");
pub const ID2D1Layer = Interface(ID2D1LayerVtbl);
pub const ID2D1LayerVtbl = extern struct {
    const Self = ID2D1Layer;

    // ID2D1Resource
    id2d1resource: ID2D1ResourceVtbl,

    // ID2D1Layer
    GetSize: fn (this: *Self) callconv(.Stdcall) D2D1_SIZE_F,
};

pub const IID_ID2D1DrawingStateBlock = GUID_STRING("28506e39-ebf6-46a1-bb47-fd85565ab957");
pub const ID2D1DrawingStateBlock = Interface(ID2D1DrawingStateBlockVtbl);
pub const ID2D1DrawingStateBlockVtbl = extern struct {
    const Self = ID2D1DrawingStateBlock;

    // ID2D1Resource
    id2d1resource: ID2D1ResourceVtbl,

    // ID2D1DrawingStateBlock
    GetDescription: fn (this: *Self, stateDescription: *D2D1_DRAWING_STATE_DESCRIPTION) callconv(.Stdcall) void,
    SetDescription: fn (this: *Self, stateDescription: *const D2D1_DRAWING_STATE_DESCRIPTION) callconv(.Stdcall) void,
    SetTextRenderingParams: fn (this: *Self, textRenderingParams: ?*IDWriteRenderingParams) callconv(.Stdcall) void,
    GetTextRenderingParams: fn (this: *Self, textRenderingParams: *?*IDWriteRenderingParams) callconv(.Stdcall) void,
};

pub const IID_ID2D1RenderTarget = GUID_STRING("2cd90694-12e2-11dc-9fed-001143a055f9");
pub const ID2D1RenderTarget = Interface(ID2D1RenderTargetVtbl);
pub const ID2D1RenderTargetVtbl = extern struct {
    const Self = ID2D1RenderTarget;

    // ID2D1Resource
    id2d1resource: ID2D1ResourceVtbl,

    // ID2D1RenderTarget
    CreateBitmap: fn (this: *Self, size: D2D1_SIZE_U, srcData: ?*const c_void, pitch: c_uint, bitmapProperties: *const D2D1_BITMAP_PROPERTIES, bitmap: *ID2D1Bitmap) callconv(.Stdcall) c_long,
    CreateBitmapFromWicBitmap: fn (this: *Self, wicBitmapSource: *IWICBitmapSource, bitmapProperties: ?*const D2D1_BITMAP_PROPERTIES, bitmap: **ID2D1Bitmap) callconv(.Stdcall) c_long,
    CreateSharedBitmap: fn (this: *Self, riid: *const GUID, data: *c_void, bitmapProperties: ?*const D2D1_BITMAP_PROPERTIES, bitmap: **ID2D1Bitmap) callconv(.Stdcall) c_long,
    CreateBitmapBrush: fn (this: *Self, bitmap: ?*ID2D1Bitmap, bitmapBrushProperties: ?*const D2D1_BITMAP_BRUSH_PROPERTIES, brushProperties: ?*const D2D1_BRUSH_PROPERTIES, bitmapBrush: **ID2D1BitmapBrush) callconv(.Stdcall) c_long,
    CreateSolidColorBrush: fn (this: *Self, color: *const D3DCOLORVALUE, brushProperties: ?*const D2D1_BRUSH_PROPERTIES, solidColorBrush: **ID2D1SolidColorBrush) callconv(.Stdcall) c_long,
    CreateGradientStopCollection: fn (this: *Self, gradientStops: [*]const D2D1_GRADIENT_STOP, gradientStopsCount: c_uint, colorInterpolationGamma: D2D1_GAMMA, extendMode: D2D1_EXTEND_MODE, gradientStopCollection: **ID2D1GradientStopCollection) callconv(.Stdcall) c_long,
    CreateLinearGradientBrush: fn (this: *Self, linearGradientBrushProperties: *const D2D1_LINEAR_GRADIENT_BRUSH_PROPERTIES, brushProperties: ?*const D2D1_BRUSH_PROPERTIES, gradientStopCollection: *ID2D1GradientStopCollection, linearGradientBrush: **ID2D1LinearGradientBrush) callconv(.Stdcall) c_long,
    CreateRadialGradientBrush: fn (this: *Self, radialGradientBrushProperties: *const D2D1_RADIAL_GRADIENT_BRUSH_PROPERTIES, brushProperties: ?*const D2D1_BRUSH_PROPERTIES, gradientStopCollection: *ID2D1GradientStopCollection, radialGradientBrush: **ID2D1RadialGradientBrush) callconv(.Stdcall) c_long,
    CreateCompatibleRenderTarget: fn (this: *Self, desiredSize: ?*const D2D1_SIZE_F, desiredPixelSize: ?*const D2D1_SIZE_U, desiredFormat: ?*const D2D1_PIXEL_FORMAT, options: D2D1_COMPATIBLE_RENDER_TARGET_OPTIONS, bitmapRenderTarget: **ID2D1BitmapRenderTarget) callconv(.Stdcall) c_long,
    CreateLayer: fn (this: *Self, size: ?*const D2D1_SIZE_F, layer: **ID2D1Layer) callconv(.Stdcall) c_long,
    CreateMesh: fn (this: *Self, mesh: **ID2D1Mesh) callconv(.Stdcall) c_long,
    DrawLine: fn (this: *Self, point0: D2D1_POINT_2F, point1: D2D1_POINT_2F, brush: *ID2D1Brush, strokeWidth: f32, strokeStyle: ?*ID2D1StrokeStyle) callconv(.Stdcall) void,
    DrawRectangle: fn (this: *Self, rect: *const D2D1_RECT_F, brush: *ID2D1Brush, strokeWidth: f32, strokeStyle: ?*ID2D1StrokeStyle) callconv(.Stdcall) void,
    FillRectangle: fn (this: *Self, rect: *const D2D1_RECT_F, brush: *ID2D1Brush) callconv(.Stdcall) void,
    DrawRoundedRectangle: fn (this: *Self, roundedRect: *const D2D1_ROUNDED_RECT, brush: *ID2D1Brush, strokeWidth: f32, strokeStyle: ?*ID2D1StrokeStyle) callconv(.Stdcall) void,
    FillRoundedRectangle: fn (this: *Self, roundedRect: *const D2D1_ROUNDED_RECT, brush: *ID2D1Brush) callconv(.Stdcall) void,
    DrawEllipse: fn (this: *Self, ellipse: *const D2D1_ELLIPSE, brush: *ID2D1Brush, strokeWidth: f32, strokeStyle: ?*ID2D1StrokeStyle) callconv(.Stdcall) void,
    FillEllipse: fn (this: *Self, ellipse: *const D2D1_ELLIPSE, brush: *ID2D1Brush) callconv(.Stdcall) void,
    DrawGeometry: fn (this: *Self, geometry: *ID2D1Geometry, brush: *ID2D1Brush, strokeWidth: f32, strokeStyle: ?*ID2D1StrokeStyle) callconv(.Stdcall) void,
    FillGeometry: fn (this: *Self, geometry: *ID2D1Geometry, brush: *ID2D1Brush, opacityBrush: ?*ID2D1Brush) callconv(.Stdcall) void,
    FillMesh: fn (this: *Self, mesh: *ID2D1Mesh, brush: *ID2D1Brush) callconv(.Stdcall) void,
    FillOpacityMask: fn (this: *Self, opacityMask: *ID2D1Bitmap, brush: *ID2D1Brush, content: D2D1_OPACITY_MASK_CONTENT, destinationRectangle: ?*const D2D1_RECT_F, sourceRectangle: ?*const D2D1_RECT_F) callconv(.Stdcall) void,
    DrawBitmap: fn (this: *Self, bitmap: *ID2D1Bitmap, destinationRectangle: ?*const D2D1_RECT_F, opacity: f32, interpolationMode: D2D1_BITMAP_INTERPOLATION_MODE, sourceRectangle: ?*const D2D1_RECT_F) callconv(.Stdcall) void,
    DrawText: fn (this: *Self, string: [*]const u16, stringLength: c_uint, textFormat: *IDWriteTextFormat, layoutRect: *const D2D1_RECT_F, defaultFillBrush: *ID2D1Brush, options: D2D1_DRAW_TEXT_OPTIONS, measuringMode: DWRITE_MEASURING_MODE) callconv(.Stdcall) void,
    DrawTextLayout: fn (this: *Self, origin: D2D1_POINT_2F, textLayout: *IDWriteTextLayout, defaultFillBrush: *ID2D1Brush, options: D2D1_DRAW_TEXT_OPTIONS) callconv(.Stdcall) void,
    DrawGlyphRun: fn (this: *Self, baselineOrigin: D2D1_POINT_2F, glyphRun: *const DWRITE_GLYPH_RUN, foregroundBrush: *ID2D1Brush, measuringMode: DWRITE_MEASURING_MODE) callconv(.Stdcall) void,
    SetTransform: fn (this: *Self, transform: *const D2D1_MATRIX_3X2_F) callconv(.Stdcall) void,
    GetTransform: fn (this: *Self, transform: *D2D1_MATRIX_3X2_F) callconv(.Stdcall) void,
    SetAntialiasMode: fn (this: *Self, antialiasMode: D2D1_ANTIALIAS_MODE) callconv(.Stdcall) void,
    GetAntialiasMode: fn (this: *Self) callconv(.Stdcall) D2D1_ANTIALIAS_MODE,
    SetTextAntialiasMode: fn (this: *Self, textAntialiasMode: D2D1_TEXT_ANTIALIAS_MODE) callconv(.Stdcall) void,
    GetTextAntialiasMode: fn (this: *Self) callconv(.Stdcall) D2D1_TEXT_ANTIALIAS_MODE,
    SetTextRenderingParams: fn (this: *Self, textRenderingParams: ?*IDWriteRenderingParams) callconv(.Stdcall) void,
    GetTextRenderingParams: fn (this: *Self, textRenderingParams: *?*IDWriteRenderingParams) callconv(.Stdcall) void,
    SetTags: fn (this: *Self, tag1: D2D1_TAG, tag2: D2D1_TAG) callconv(.Stdcall) void,
    GetTags: fn (this: *Self, tag1: ?*D2D1_TAG, tag2: ?*D2D1_TAG) callconv(.Stdcall) void,
    PushLayer: fn (this: *Self, layerParameters: *const D2D1_LAYER_PARAMETERS, layer: ?*ID2D1Layer) callconv(.Stdcall) void,
    PopLayer: fn (this: *Self) callconv(.Stdcall) void,
    Flush: fn (this: *Self, tag1: ?*D2D1_TAG, tag2: ?*D2D1_TAG) callconv(.Stdcall) c_long,
    SaveDrawingState: fn (this: *Self, drawingStateBlock: *ID2D1DrawingStateBlock) callconv(.Stdcall) void,
    RestoreDrawingState: fn (this: *Self, drawingStateBlock: *ID2D1DrawingStateBlock) callconv(.Stdcall) void,
    PushAxisAlignedClip: fn (this: *Self, clipRect: *const D2D1_RECT_F, antialiasMode: D2D1_ANTIALIAS_MODE) callconv(.Stdcall) void,
    PopAxisAlignedClip: fn (this: *Self) callconv(.Stdcall) void,
    Clear: fn (this: *Self, clearColor: ?*const D3DCOLORVALUE) callconv(.Stdcall) void,
    BeginDraw: fn (this: *Self) callconv(.Stdcall) void,
    EndDraw: fn (this: *Self, tag1: ?*D2D1_TAG, tag2: ?*D2D1_TAG) callconv(.Stdcall) c_long,
    GetPixelFormat: fn (this: *Self) callconv(.Stdcall) D2D1_PIXEL_FORMAT,
    SetDpi: fn (this: *Self, dpiX: f32, dpiY: f32) callconv(.Stdcall) void,
    GetDpi: fn (this: *Self, dpiX: *f32, dpiY: *f32) callconv(.Stdcall) void,
    GetSize: fn (this: *Self) callconv(.Stdcall) D2D1_SIZE_F,
    GetPixelSize: fn (this: *Self) callconv(.Stdcall) D2D1_SIZE_U,
    GetMaximumBitmapSize: fn (this: *Self) callconv(.Stdcall) c_uint,
    IsSupported: fn (this: *Self, renderTargetProperties: *const D2D1_RENDER_TARGET_PROPERTIES) callconv(.Stdcall) c_int,
};

pub const IID_ID2D1BitmapRenderTarget = GUID_STRING("2cd90695-12e2-11dc-9fed-001143a055f9");
pub const ID2D1BitmapRenderTarget = Interface(ID2D1BitmapRenderTargetVtbl);
pub const ID2D1BitmapRenderTargetVtbl = extern struct {
    const Self = ID2D1BitmapRenderTarget;

    // ID2D1RenderTarget
    id2d1rendertarget: ID2D1RenderTargetVtbl,

    // ID2D1BitmapRenderTarget
    GetBitmap: fn (this: *Self, bitmap: **ID2D1Bitmap) callconv(.Stdcall) c_long,
};

pub const IID_ID2D1HwndRenderTarget = GUID_STRING("2cd90698-12e2-11dc-9fed-001143a055f9");
pub const ID2D1HwndRenderTarget = Interface(ID2D1HwndRenderTargetVtbl);
pub const ID2D1HwndRenderTargetVtbl = extern struct {
    const Self = ID2D1HwndRenderTarget;

    // ID2D1RenderTarget
    id2d1rendertarget: ID2D1RenderTargetVtbl,

    // ID2D1HwndRenderTarget
    CheckWindowState: fn (this: *Self) callconv(.Stdcall) D2D1_WINDOW_STATE,
    Resize: fn (this: *Self, pixelSize: *const D2D1_SIZE_U) callconv(.Stdcall) c_long,
    GetHwnd: fn (this: *Self) callconv(.Stdcall) *c_void,
};

pub const IID_ID2D1GdiInteropRenderTarget = GUID_STRING("e0db51c3-6f77-4bae-b3d5-e47509b35838");
pub const ID2D1GdiInteropRenderTarget = Interface(ID2D1GdiInteropRenderTargetVtbl);
pub const ID2D1GdiInteropRenderTargetVtbl = extern struct {
    const Self = ID2D1GdiInteropRenderTarget;

    // IUnknown
    iunknown: IUnknown.Vtbl,

    // ID2D1GdiInteropRenderTarget
    GetDC: fn (this: *Self, mode: D2D1_DC_INITIALIZE_MODE, hdc: **c_void) callconv(.Stdcall) c_long,
    ReleaseDC: fn (this: *Self, update: ?*const RECT) callconv(.Stdcall) c_long,
};

pub const IID_ID2D1DCRenderTarget = GUID_STRING("1c51bc64-de61-46fd-9899-63a5d8f03950");
pub const ID2D1DCRenderTarget = Interface(ID2D1DCRenderTargetVtbl);
pub const ID2D1DCRenderTargetVtbl = extern struct {
    const Self = ID2D1DCRenderTarget;

    // ID2D1RenderTarget
    id2d1rendertarget: ID2D1RenderTargetVtbl,

    // ID2D1DCRenderTarget
    BindDC: fn (this: *Self, hDC: *const c_void, pSubRect: *const RECT) callconv(.Stdcall) c_long,
};

pub const IID_ID2D1Factory = GUID_STRING("06152247-6f50-465a-9245-118bfd3b6007");
pub const ID2D1Factory = Interface(ID2D1FactoryVtbl);
pub const ID2D1FactoryVtbl = extern struct {
    const Self = ID2D1Factory;

    // IUnknown
    iunknown: IUnknown.Vtbl,

    // ID2D1Factory
    ReloadSystemMetrics: fn (this: *Self) callconv(.Stdcall) c_long,
    GetDesktopDpi: fn (this: *Self, dpiX: *f32, dpiY: *f32) callconv(.Stdcall) void,
    CreateRectangleGeometry: fn (this: *Self, rectangle: *const D2D1_RECT_F, rectangleGeometry: **ID2D1RectangleGeometry) callconv(.Stdcall) c_long,
    CreateRoundedRectangleGeometry: fn (this: *Self, roundedRectangle: *const D2D1_ROUNDED_RECT, roundedRectangleGeometry: **ID2D1RoundedRectangleGeometry) callconv(.Stdcall) c_long,
    CreateEllipseGeometry: fn (this: *Self, ellipse: *const D2D1_ELLIPSE, ellipseGeometry: **ID2D1EllipseGeometry) callconv(.Stdcall) c_long,
    CreateGeometryGroup: fn (this: *Self, fillMode: D2D1_FILL_MODE, geometries: [*]*ID2D1Geometry, geometriesCount: c_uint, geometryGroup: **ID2D1GeometryGroup) callconv(.Stdcall) c_long,
    CreateTransformedGeometry: fn (this: *Self, sourceGeometry: *ID2D1Geometry, transform: *const D2D1_MATRIX_3X2_F, transformedGeometry: **ID2D1TransformedGeometry) callconv(.Stdcall) c_long,
    CreatePathGeometry: fn (this: *Self, pathGeometry: **ID2D1PathGeometry) callconv(.Stdcall) c_long,
    CreateStrokeStyle: fn (this: *Self, strokeStyleProperties: *const D2D1_STROKE_STYLE_PROPERTIES, dashes: [*]const f32, dashesCount: c_uint, strokeStyle: **ID2D1StrokeStyle) callconv(.Stdcall) c_long,
    CreateDrawingStateBlock: fn (this: *Self, drawingStateDescription: ?*const D2D1_DRAWING_STATE_DESCRIPTION, textRenderingParams: ?*IDWriteRenderingParams, drawingStateBlock: **ID2D1DrawingStateBlock) callconv(.Stdcall) c_long,
    CreateWicBitmapRenderTarget: fn (this: *Self, target: *IWICBitmap, renderTargetProperties: *const D2D1_RENDER_TARGET_PROPERTIES, renderTarget: **ID2D1RenderTarget) callconv(.Stdcall) c_long,
    CreateHwndRenderTarget: fn (this: *Self, renderTargetProperties: *const D2D1_RENDER_TARGET_PROPERTIES, hwndRenderTargetProperties: *const D2D1_HWND_RENDER_TARGET_PROPERTIES, hwndRenderTarget: **ID2D1HwndRenderTarget) callconv(.Stdcall) c_long,
    CreateDxgiSurfaceRenderTarget: fn (this: *Self, dxgiSurface: *IDXGISurface, renderTargetProperties: *const D2D1_RENDER_TARGET_PROPERTIES, renderTarget: **ID2D1RenderTarget) callconv(.Stdcall) c_long,
    CreateDCRenderTarget: fn (this: *Self, renderTargetProperties: *const D2D1_RENDER_TARGET_PROPERTIES, dcRenderTarget: **ID2D1DCRenderTarget) callconv(.Stdcall) c_long,
};

pub extern "d2d1" fn D2D1CreateFactory(factoryType: D2D1_FACTORY_TYPE, riid: *const GUID, pFactoryOptions: ?*const D2D1_FACTORY_OPTIONS, ppIFactory: **c_void) callconv(.Stdcall) c_long;
pub extern "d2d1" fn D2D1MakeRotateMatrix(angle: f32, center: D2D1_POINT_2F, matrix: *D2D1_MATRIX_3X2_F) callconv(.Stdcall) void;
pub extern "d2d1" fn D2D1MakeSkewMatrix(angleX: f32, angleY: f32, center: D2D1_POINT_2F, matrix: *D2D1_MATRIX_3X2_F) callconv(.Stdcall) void;
pub extern "d2d1" fn D2D1IsMatrixInvertible(matrix: *const D2D1_MATRIX_3X2_F) callconv(.Stdcall) c_int;
pub extern "d2d1" fn D2D1InvertMatrix(matrix: *const D2D1_MATRIX_3X2_F) callconv(.Stdcall) c_int;
