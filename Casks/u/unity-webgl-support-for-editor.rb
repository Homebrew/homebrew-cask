cask "unity-webgl-support-for-editor" do
  version "6000.5.10f1,3bd4f66ad299"
  sha256 "a5c9ded3e1ed82a3d34a62543035b3fb0b7ee17b40a38cbece03a115daf317f3"

  url "https://download.unity3d.com/download_unity/#{version.csv.second}/MacEditorTargetInstaller/UnitySetup-WebGL-Support-for-Editor-#{version.csv.first}.pkg",
      verified: "download.unity3d.com/download_unity/"
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
