const std = @import("std");

pub const binding = struct {
    pub usingnamespace @import("binding/constants.zig");
    pub usingnamespace @import("binding/functions.zig");
    pub usingnamespace @import("binding/structs.zig");
};

/// String To Wide
pub fn STW(allocator: *std.mem.Allocator, str: [:0]const u8) [:0]u16 {
    return std.unicode.utf8ToUtf16LeWithNull(allocator, str) catch unreachable;
}

/// Wide to String
pub fn WTS(allocator: *std.mem.Allocator, str: [:0]const u16) []u8 {
    return std.unicode.utf16leToUtf8Alloc(allocator, str) catch unreachable;
}
