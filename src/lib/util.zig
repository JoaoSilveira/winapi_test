const std = @import("std");

const Allocator = std.mem.Allocator;

pub fn Interface(comptime vtbl: type) type {
    return extern struct {
        lpVtbl: *vtbl,
    };
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

pub fn free(alloc: *Allocator, wstr: [*:0]const u16) void {
    alloc.free(wstr[0..len0(wstr)]);
}
