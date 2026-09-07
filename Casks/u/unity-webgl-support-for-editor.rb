cask "unity-webgl-support-for-editor" do
  version "6000.5.11f1,5c3a1087d8e4"
  sha256 "76c7d4b2732f94a85288f04a31230e9114a55d5c03fd75c0975df939f5329ad1"

  url "https://download.unity3d.com/download_unity/#{version.csv.second}/MacEditorTargetInstaller/UnitySetup-WebGL-Support-for-Editor-#{version.csv.first}.pkg"
  name "Unity WebGL Build Support"
  desc "WebGL target support for Unity"
  homepage "https://unity.com/products"

  livecheck do
    cask "unity"
  end

  depends_on :macos
  depends_on cask: "unity"

  pkg "UnitySetup-WebGL-Support-for-Editor-#{version.csv.first}.pkg"

  uninstall pkgutil: "com.unity3d.WebGLSupport-#{version.csv.first}"
end
