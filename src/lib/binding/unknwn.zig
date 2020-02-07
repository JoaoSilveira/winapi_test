const functions = @import("functions.zig");
const structs = @import("structs.zig");
const util = @import("../util.zig");

const GUID = structs.GUID;
const Interface = util.Interface;
const DEFINE_GUID = functions.DEFINE_GUID;
const GUID_STRING = functions.GUID_STRING;

pub const IID_IUnknown = DEFINE_GUID(0x00000000, 0x0000, 0x0000, 0x00, 0x00, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x46);
pub const IUnknown = Interface(IUnknownVtbl);
pub const IUnknownVtbl = extern struct {
    const Self = IUnknown;

    QueryInterface: fn (this: *Self, riid: *const GUID, ppvObject: **c_void) callconv(.Stdcall) c_long,
    AddRef: fn (this: *Self) callconv(.Stdcall) c_ulong,
    Release: fn (this: *Self) callconv(.Stdcall) c_ulong,
};

pub const IID_AsyncIUnknown = GUID_STRING("000e0000-0000-0000-C000-000000000046");
pub const AsyncIUnknown = Interface(AsyncIUnknownVtbl);
pub const AsyncIUnknownVtbl = extern struct {
    const Self = AsyncIUnknown;

    // IUnknown
    iunknown: IUnknownVtbl,

    // AsyncIUnknown
    Begin_QueryInterface: fn (this: *Self, riid: *const GUID) callconv(.Stdcall) c_long,
    Finish_QueryInterface: fn (this: *Self, ppvObject: **c_void) callconv(.Stdcall) c_long,
    Begin_AddRef: fn (this: *Self) callconv(.Stdcall) c_long,
    Finish_AddRef: fn (this: *Self) callconv(.Stdcall) c_ulong,
    Begin_Release: fn (this: *Self) callconv(.Stdcall) c_long,
    Finish_Release: fn (this: *Self) callconv(.Stdcall) c_ulong,
};

pub const IID_IClassFactory = GUID_STRING("00000001-0000-0000-C000-000000000046");
pub const IClassFactory = Interface(IClassFactoryVtbl);
pub const IClassFactoryVtbl = extern struct {
    const Self = IClassFactory;

    // IUnknown
    iunknown: IUnknownVtbl,

    // IClassFactory
    CreateInstance: fn (this: *Self, pUnkOuter: *IUnknown, riid: *const GUID, ppvObject: **c_void) callconv(.Stdcall) c_long,
    LockServer: fn (this: *Self, fLock: c_int) callconv(.Stdcall) c_long,
};