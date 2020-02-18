const std = @import("std");

const Allocator = std.mem.Allocator;

pub fn Interface(comptime vtbl: type) type {
    return extern struct {
        lpVtbl: *vtbl,
    };
}

/// String To Wide
pub fn STW(allocator: *Allocator, str: [:0]const u8) [:0]u16 {
    return std.unicode.utf8ToUtf16LeWithNull(allocator, str) catch unreachable;
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
    var slice = try alloc.alloc(T, n + 1);
    slice[n] = sentinel;
    return slice[0..n :sentinel];
}
