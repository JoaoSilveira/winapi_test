usingnamespace @import("dxgiformat.zig");
usingnamespace @import("dxgicommon.zig");

const functions = @import("functions.zig");
const util = @import("../util.zig");
const structs = @import("structs.zig");
const unknwn = @import("unknwn.zig");

const Interface = util.Interface;
const IUnknownVtbl = unknwn.IUnknownVtbl;
const IUnknown = unknwn.IUnknown;
const GUID_STRING = functions.GUID_STRING;
const GUID = structs.GUID;

pub const IID_IDXGISurface = GUID_STRING("cafcb56c-6ac3-4889-bf47-9e23bbd260ec");
pub const IDXGISurface = Interface(IDXGISurfaceVtbl);
pub const IDXGISurfaceVtbl = extern struct {
    const Self = IDXGISurface;

    // IDXGIDeviceSubObject
    idxgidevicesubobject: IDXGIDeviceSubObjectVtbl,

    // IDXGISurface
    GetDesc: fn (this: *Self, pDesc: *DXGI_SURFACE_DESC) callconv(.Stdcall) c_long,
    Map: fn (this: *Self, pLockedRect: *DXGI_MAPPED_RECT, MapFlags: c_uint) callconv(.Stdcall) c_long,
    Unmap: fn (this: *Self) callconv(.Stdcall) c_long,
};

pub const IID_IDXGIDeviceSubObject = GUID_STRING("3d3e0379-f9de-4d58-bb6c-18d62992f1a6");
pub const IDXGIDeviceSubObject = Interface(IDXGIDeviceSubObjectVtbl);
pub const IDXGIDeviceSubObjectVtbl = extern struct {
    const Self = IDXGIDeviceSubObject;

    // IDXGIObject
    idxgiobject: IDXGIObjectVtbl,

    // IDXGIDeviceSubObject
    GetDevice: fn (this: *Self, riid: *const GUID, ppDevice: **c_void) callconv(.Stdcall) c_long,
};

pub const IID_IDXGIObject = GUID_STRING("aec22fb8-76f3-4639-9be0-28eb43a67a2e");
pub const IDXGIObject = Interface(IDXGIObjectVtbl);
pub const IDXGIObjectVtbl = extern struct {
    const Self = IDXGIObject;

    // IUnknown
    iunknown: IUnknownVtbl,

    // IDXGIObject
    SetPrivateData: fn (this: *Self, Name: *const GUID, DataSize: c_uint, pData: *const c_void) callconv(.Stdcall) c_long,
    SetPrivateDataInterface: fn (this: *Self, Name: *const GUID, pUnknown: ?*const IUnknown) callconv(.Stdcall) c_long,
    GetPrivateData: fn (this: *Self, Name: *const GUID, DataSize: c_uint, pData: *c_void) callconv(.Stdcall) c_long,
    GetParent: fn (this: *Self, riid: *const GUID, ppParent: **c_void) callconv(.Stdcall) c_long,
};

pub const DXGI_SURFACE_DESC = extern struct {
    Width: c_uint,
    Height: c_uint,
    Format: DXGI_FORMAT,
    SampleDesc: DXGI_SAMPLE_DESC,
};

pub const DXGI_MAPPED_RECT = extern struct {
    Pitch: c_int,
    pBits: [*]u8,
};
