const functions = @import("lib/binding/functions.zig");

const ExitProcess = functions.ExitProcess;
const proc = @import("dw.zig").listSystemFonts;

// leaving WinMain because wWinMain is not recognized as a main function
pub export fn WinMain(hInstance: ?*c_void, hPrevInstance: ?*c_void, szCmdLine: ?[*:0]u8, iCmdShow: c_int) callconv(.Stdcall) noreturn {
    @setAlignStack(16);

    // using ExitProcess because the program wasn't shutting down properly with WinMain only
    ExitProcess(proc(hInstance));
}