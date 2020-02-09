const functions = @import("functions.zig");
const structs = @import("structs.zig");

const GUID = structs.GUID;
const GUID_STRING = functions.GUID_STRING;

pub const IUnknown = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("00000000-0000-0000-C000-000000000046");
    pub const Vtbl = extern struct {
        QueryInterface: fn (self: *Self, riid: *const GUID, ppvObject: *?*c_void) callconv(.Stdcall) i32,
        AddRef: fn (self: *Self) callconv(.Stdcall) u32,
        Release: fn (self: *Self) callconv(.Stdcall) u32,
    };

    lpVtbl: *Vtbl,

    pub inline fn QueryInterface(self: *Self, riid: *const GUID, ppvObject: *?*c_void) i32 {
        return self.lpVtbl.*.QueryInterface(self, riid, ppvObject);
    }

    pub inline fn AddRef(self: *Self) u32 {
        return self.lpVtbl.*.AddRef(self);
    }

    pub inline fn Release(self: *Self) u32 {
        return self.lpVtbl.*.Release(self);
    }
};

pub const AsyncIUnknown = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("000e0000-0000-0000-C000-000000000046");
    pub const Vtbl = extern struct {
        // IUnknown
        iunknown: IUnknown.Vtbl,

        // AsyncIUnknown
        Begin_QueryInterface: fn (self: *Self, riid: *const GUID) callconv(.Stdcall) i32,
        Finish_QueryInterface: fn (self: *Self, ppvObject: *?*c_void) callconv(.Stdcall) i32,
        Begin_AddRef: fn (self: *Self) callconv(.Stdcall) i32,
        Finish_AddRef: fn (self: *Self) callconv(.Stdcall) u32,
        Begin_Release: fn (self: *Self) callconv(.Stdcall) i32,
        Finish_Release: fn (self: *Self) callconv(.Stdcall) u32,
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

    pub inline fn Begin_QueryInterface(self: *Self, riid: *const GUID) i32 {
        return self.lpVtbl.*.Begin_QueryInterface(self, riid);
    }

    pub inline fn Finish_QueryInterface(self: *Self, ppvObject: *?*c_void) i32 {
        return self.lpVtbl.*.Finish_QueryInterface(self, ppvObject);
    }

    pub inline fn Begin_AddRef(self: *Self) i32 {
        return self.lpVtbl.*.Begin_AddRef(self);
    }

    pub inline fn Finish_AddRef(self: *Self) u32 {
        return self.lpVtbl.*.Finish_AddRef(self);
    }

    pub inline fn Begin_Release(self: *Self) i32 {
        return self.lpVtbl.*.Begin_Release(self);
    }

    pub inline fn Finish_Release(self: *Self) u32 {
        return self.lpVtbl.*.Finish_Release(self);
    }
};

pub const IClassFactory = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("00000001-0000-0000-C000-000000000046");
    pub const Vtbl = extern struct {
        // IUnknown
        iunknown: IUnknown.Vtbl,

        // IClassFactory
        CreateInstance: fn (self: *Self, pUnkOuter: ?*IUnknown, riid: *const GUID, ppvObject: *?*c_void) callconv(.Stdcall) i32,
        LockServer: fn (self: *Self, fLock: c_int) callconv(.Stdcall) i32,
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

    pub inline fn CreateInstance(self: *Self, pUnkOuter: ?*IUnknown, riid: *const GUID, ppvObject: *?*c_void) i32 {
        return self.lpVtbl.*.CreateInstance(self, pUnkOuter, riid, ppvObject);
    }

    pub inline fn LockServer(self: *Self, fLock: bool) i32 {
        return self.lpVtbl.*.LockServer(self, @boolToInt(fLock));
    }
};
