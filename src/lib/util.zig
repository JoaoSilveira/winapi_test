const std = @import("std");

const Allocator = std.mem.Allocator;

pub fn Interface(comptime vtbl: type) type {
    return extern struct {
        lpVtbl: *vtbl,
    };
}

/// String To Wide
pub fn STW(allocator: *Allocator, str: [:0]const u8) [:0]u16 {
    var slice = std.unicode.utf8ToUtf16LeWithNull(allocator, str) catch unreachable;
    return slice[0 .. slice.len - 1 :0];
}

/// Wide to String
pub fn WTS(allocator: *Allocator, str: [:0]const u16) []u8 {
    return std.unicode.utf16leToUtf8Alloc(allocator, str) catch unreachable;
}

pub fn len(wstr: [*:0]const u16) usize {
    return len0(wstr) - 1;
}

pub fn len0(wstr: [*:0]const u16) usize {
    var size: usize = 0;

    while (true) : (size += 1) {
        if (wstr[size] == 0) return size + 1;
    }
}

pub fn allocSen(alloc: *Allocator, comptime T: type, n: usize, comptime sentinel: T) ![:sentinel]T {
    var slice = try alloc.alloc(T, n);
    slice[n - 1] = sentinel;
    return slice[0 .. n - 1 :sentinel];
}
