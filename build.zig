const Builder = @import("std").build.Builder;
const exe_name = "main";

pub fn build(b: *Builder) void {
    const lib = b.addStaticLibrary("winapi", "src/lib/winapi.zig");
    lib.setOutputDir("bin");

    const exe = b.addExecutable(exe_name, "src/main.zig");
    exe.setBuildMode(b.standardReleaseOptions());
    exe.setOutputDir("bin");
    exe.linkLibrary(lib);

    // could not make it work yet
    // const manifest = b.addWriteFile(exe_name++".exe.manifest", manifest_contents);
    // manifest.output_dir = "bin";
    // manifest.step.dependOn(&exe.step);

    const run = exe.run();
    run.step.dependOn(&exe.step);

    b.default_step = &exe.step;

    const run_step = b.step("run", "Compiles and runs the project");
    const lib_step = b.step("lib", "Compiles the library");

    run_step.dependOn(&run.step);
    lib_step.dependOn(&lib.step);
}

const manifest_contents = 
    \\<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
    \\<assembly xmlns="urn:schemas-microsoft-com:asm.v1" manifestVersion="1.0">
    ++"<assemblyIdentity version=\"1.0.0.0\" processorArchitecture=\"*\" name=" ++ exe_name ++ " type=\"win32\"/>"++
    \\<description>Zig Learning</description>
    \\<dependency>
    \\    <dependentAssembly>
    \\        <assemblyIdentity type="win32" name="Microsoft.Windows.Common-Controls" version="6.0.0.0" processorArchitecture="*" publicKeyToken="6595b64144ccf1df" language="*"/>
    \\    </dependentAssembly>
    \\</dependency>
    \\</assembly>
;