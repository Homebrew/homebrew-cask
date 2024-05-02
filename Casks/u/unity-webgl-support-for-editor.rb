cask "unity-webgl-support-for-editor" do
  version "2023.2.20f1,0e25a174756c"
  sha256 "be1add358e0d500456314c7dcc863d757132a5fcfc9a878d7abe8b8c0f1125d4"

  url "https://download.unity3d.com/download_unity/#{version.csv.second}/MacEditorTargetInstaller/UnitySetup-WebGL-Support-for-Editor-#{version.csv.first}.pkg",
      verified: "download.unity3d.com/download_unity/"
  name "Unity WebGL Build Support"
  desc "WebGL target support for Unity"
  homepage "https://unity.com/products"

  livecheck do
    cask "unity"
  end

  depends_on cask: "unity"

  pkg "UnitySetup-WebGL-Support-for-Editor-#{version.csv.first}.pkg"

  uninstall pkgutil: "com.unity3d.WebGLSupport"
end
