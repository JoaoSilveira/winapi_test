const functions = @import("functions.zig");
const structs = @import("structs.zig");

const GUID = structs.GUID;
const GUID_STRING = functions.GUID_STRING;

pub const IUnknown = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("00000000-0000-0000-C000-000000000046");
    pub const Vtbl = extern struct {
        QueryInterface: fn (this: *Self, riid: *const GUID, ppvObject: *?*c_void) callconv(.Stdcall) i32,
        AddRef: fn (this: *Self) callconv(.Stdcall) u32,
        Release: fn (this: *Self) callconv(.Stdcall) u32,
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
        iunknown: IUnknownVtbl,

        // AsyncIUnknown
        Begin_QueryInterface: fn (this: *Self, riid: *const GUID) callconv(.Stdcall) i32,
        Finish_QueryInterface: fn (this: *Self, ppvObject: *?*c_void) callconv(.Stdcall) i32,
        Begin_AddRef: fn (this: *Self) callconv(.Stdcall) i32,
        Finish_AddRef: fn (this: *Self) callconv(.Stdcall) u32,
        Begin_Release: fn (this: *Self) callconv(.Stdcall) i32,
        Finish_Release: fn (this: *Self) callconv(.Stdcall) u32,
    };

    lpVtbl: *Vtbl,

    pub inline fn QueryInterface(self: *Self, riid: *const GUID, ppvObject: *?*c_void) i32 {
        return @ptrCast(*IUnknown, self).QueryInterface(self, riid, ppvObject);
    }

    pub inline fn AddRef(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).AddRef(self);
    }

    pub inline fn Release(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).Release(self);
    }

    pub inline fn Begin_QueryInterface(this: *Self, riid: *const GUID) i32 {
        return self.lpVtbl.*.Begin_QueryInterface(self, riid);
    }

    pub inline fn Finish_QueryInterface(this: *Self, ppvObject: *?*c_void) i32 {
        return self.lpVtbl.*.Finish_QueryInterface(self, ppvObject);
    }

    pub inline fn Begin_AddRef(this: *Self) i32 {
        return self.lpVtbl.*.Begin_AddRef(self);
    }

    pub inline fn Finish_AddRef(this: *Self) u32 {
        return self.lpVtbl.*.Finish_AddRef(self);
    }

    pub inline fn Begin_Release(this: *Self) i32 {
        return self.lpVtbl.*.Begin_Release(self);
    }

    pub inline fn Finish_Release(this: *Self) u32 {
        return self.lpVtbl.*.Finish_Release(self);
    }
};

pub const IClassFactory = extern struct {
    const Self = @This();
    pub const IID = GUID_STRING("00000001-0000-0000-C000-000000000046");
    pub const Vtbl = extern struct {
        const Self = IClassFactory;

        // IUnknown
        iunknown: IUnknownVtbl,

        // IClassFactory
        CreateInstance: fn (this: *Self, pUnkOuter: ?*IUnknown, riid: *const GUID, ppvObject: *?*c_void) callconv(.Stdcall) i32,
        LockServer: fn (this: *Self, fLock: c_int) callconv(.Stdcall) i32,
    };

    lpVtbl: *Vtbl,

    pub inline fn QueryInterface(self: *Self, riid: *const GUID, ppvObject: *?*c_void) i32 {
        return @ptrCast(*IUnknown, self).QueryInterface(self, riid, ppvObject);
    }

    pub inline fn AddRef(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).AddRef(self);
    }

    pub inline fn Release(self: *Self) u32 {
        return @ptrCast(*IUnknown, self).Release(self);
    }

    pub inline fn CreateInstance(this: *Self, pUnkOuter: ?*IUnknown, riid: *const GUID, ppvObject: *?*c_void) i32 {
        return self.lpVtbl.*.CreateInstance(self, pUnkOuter, riid, ppvObject);
    }

    pub inline fn LockServer(this: *Self, fLock: bool) i32 {
        return self.lpVtbl.*.LockServer(self, @boolToInt(fLock));
    }
};
