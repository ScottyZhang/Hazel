-- premake5.lua
workspace "Hazel"
   architecture "x64"
   configurations { "Debug", "Release", "Dist" }
   startproject "Sandbox"

   -- Workspace-wide build options for MSVC
   filter "system:windows"
      buildoptions { "/EHsc", "/Zc:preprocessor", "/Zc:__cplusplus" }

OutputDir = "%{cfg.system}-%{cfg.architecture}/%{cfg.buildcfg}"

IncludeDir = {}
IncludeDir["GLFW"] = "Core/vendor/GLFW/include"

include "Core/vendor/GLFW"

group "Core"
	include "Core/Build-Core.lua"
group ""

include "App/Build-App.lua"