usingnamespace @import("dcommon.zig");

const dwrite = @import("dwrite.zig");
const structs = @import("structs.zig");

const Interface = structs.Interface;
const IUnknownVtbl = dwrite.IUnknownVtbl;
const GUID = structs.GUID;
const GUID_STRING = dwrite.GUID_STRING;

pub const IID_ID2D1SimplifiedGeometrySink = GUID_STRING("2cd9069e-12e2-11dc-9fed-001143a055f9");
pub const ID2D1SimplifiedGeometrySink = Interface(ID2D1SimplifiedGeometrySinkVtbl);
pub const ID2D1SimplifiedGeometrySinkVtbl = extern struct {
    const Self = ID2D1SimplifiedGeometrySink;

    // IUnknown
    iunknown: IUnknownVtbl,

    // ID2D1SimplifiedGeometrySink
    SetFillMode: fn (this: *Self, fillMode: D2D1_FILL_MODE) callconv(.Stdcall) void,
    SetSegmentFlags: fn (this: *Self, vertexFlags: D2D1_PATH_SEGMENT) callconv(.Stdcall) void,
    BeginFigure: fn (this: *Self, startPoint: D2D1_POINT_2F, figureBegin: D2D1_FIGURE_BEGIN) callconv(.Stdcall) void,
    AddLines: fn (this: *Self, points: [*]const D2D1_POINT_2F, pointsCount: c_uint) callconv(.Stdcall) void,
    AddBeziers: fn (this: *Self, beziers: [*]const D2D1_BEZIER_SEGMENT, beziersCount: c_uint) callconv(.Stdcall) void,
    EndFigure: fn (this: *Self, figureEnd: D2D1_FIGURE_END) callconv(.Stdcall) void,
};

pub const D2D1_FILL_MODE = extern enum(c_uint) {
    D2D1_FILL_MODE_ALTERNATE = 0,
    D2D1_FILL_MODE_WINDING = 1,
    D2D1_FILL_MODE_FORCE_DWORD = 0xffffffff,
};

pub const D2D1_PATH_SEGMENT = extern enum(c_uint) {
    D2D1_PATH_SEGMENT_NONE = 0x00000000,
    D2D1_PATH_SEGMENT_FORCE_UNSTROKED = 0x00000001,
    D2D1_PATH_SEGMENT_FORCE_ROUND_LINE_JOIN = 0x00000002,
    D2D1_PATH_SEGMENT_FORCE_DWORD = 0xffffffff,
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
