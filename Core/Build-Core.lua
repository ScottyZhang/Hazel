project "Hazel"
   kind "SharedLib"
   language "C++"
   cppdialect "C++20"
   targetdir "Binaries/%{cfg.buildcfg}"
   staticruntime "off"

   pchheader "hzpch.h"
   pchsource "Source/hzpch.cpp"

   files { "Source/**.h", "Source/**.cpp","../Events/**.cpp","../Events/**.h" }

   includedirs
   {
      "Source",
      "../%{prj.name}",
      "../Vendor/spdlog/include/"
   }

   targetdir ("../Binaries/" .. OutputDir .. "/%{prj.name}")
   objdir ("../Binaries/Intermediates/" .. OutputDir .. "/%{prj.name}")

   filter "system:windows"
       systemversion "latest"
       defines{
        "HZ_PLATFORM_WINDOWS",
        "HZ_DLL_BUILD",
        "_DEBUG",
        "_CONSOLE",
        "_WINDLL"
    }

   filter "configurations:Debug"
       defines { "DEBUG" }
       runtime "Debug"
       symbols "On"

   filter "configurations:Release"
       defines { "RELEASE" }
       runtime "Release"
       optimize "On"
       symbols "On"

   filter "configurations:Dist"
       defines { "DIST" }
       runtime "Release"
       optimize "On"
       symbols "Off"