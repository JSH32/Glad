-- Glad generated shit

project "Glad"
	kind "StaticLib"
	language "C"

	targetdir ("bin/" .. output .. "/%{prj.name}")
	objdir ("bin-int/" .. output .. "/%{prj.name}")

	files
	{
		"include/glad/glad.h",
		"include/KHR/khrplatform.h",
		"src/glad.c",
	}

	filter "system:windows"
		systemversion "latest"
		staticruntime "On"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
