const functions = @import("lib/binding/functions.zig");

const ExitProcess = functions.ExitProcess;
const proc = @import("dw.zig").listSystemFonts;

// leaving WinMain because wWinMain is not recognized as a main function
// pub export fn WinMain(hInstance: ?*c_void, hPrevInstance: ?*c_void, szCmdLine: ?[*:0]u8, iCmdShow: c_int) callconv(.Stdcall) noreturn {
//     @setAlignStack(16);

//     // using ExitProcess because the program wasn't shutting down properly with WinMain only
//     ExitProcess(proc(hInstance));
// }

const std = @import("std");
const dwrite = @import("lib/binding/dwrite.zig");
const winerror = @import("lib/binding/winerror.zig");

const a2 = 234;

pub inline fn MAKE_DWRITE_HR(severity: u2, code: u16) i32 {
    return winerror.MAKE_HRESULT(severity, dwrite.FACILITY_DWRITE, dwrite.DWRITE_ERR_BASE + code);
}
