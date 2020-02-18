const functions = @import("lib/binding/functions.zig");

const ExitProcess = functions.ExitProcess;
const proc = @import("win32.zig").usingWindows;

// leaving WinMain because wWinMain is not recognized as a main function
pub export fn wWinMain(hInstance: ?*c_void, hPrevInstance: ?*c_void, szCmdLine: ?[*:0]u16, iCmdShow: c_int) callconv(.Stdcall) noreturn {
    @setAlignStack(16);

    // using ExitProcess because the program wasn't shutting down properly with WinMain only
    ExitProcess(proc(hInstance));
}