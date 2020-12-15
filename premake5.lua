project "GLFW"
	kind "StaticLib"
	language "C"
	
	targetdir("bin/" .. outputdir .. "/%{prj.name}")
	objdir("bin-int/" .. outputdir .. "/%{prj.name}")

	filter "system:windows"
		systemversion "latest"
        staticruntime "On"

        files
	{
		"win32_platform.h",
        "win32_joystick.h",
        "wgl_context.h",
        "egl_context.h",
        "osmesa_context.h",
        "win32_init.c",
        "win32_joystick.c", 
        "win32_monitor.c",
        "win32_time.c",
        "win32_thread.c", 
        "win32_window.c",
        "wgl_context.c",
        "egl_context.c",
        "osmesa_context.c"
	}

    filter { "system:windows", "configurations:Release"}
        buildoptions "/MI"
