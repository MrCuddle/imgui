
project "imgui"
kind "StaticLib"
language "C++"
staticruntime "on"

targetdir "build/bin/imgui"
objdir "build/obj/imgui"

files
{
  "./*.h",
  "./*.cpp"
}

includedirs {"include"}

filter "system:windows"
  systemversion "latest"

filter "configurations:Debug"
  runtime "Debug"
  symbols "on"

filter "configurations:Release"
  runtime "Release"
  optimize "on"
