cask "unity-webgl-support-for-editor" do
  version "6000.6.6f1,d20c9ac777da"
  sha256 "9c83b57ece201bff3bd58e393cb2313bbc1f990d851ee26155d395c44a4116c6"

  url "https://download.unity3d.com/download_unity/#{version.csv.second}/MacEditorTargetInstaller/UnitySetup-WebGL-Support-for-Editor-#{version.csv.first}.pkg"
  name "Unity WebGL Build Support"
  desc "WebGL target support for Unity"
  homepage "https://unity.com/products"

  livecheck do
    cask "unity"
  end

  depends_on cask: "unity"
  depends_on :macos

  pkg "UnitySetup-WebGL-Support-for-Editor-#{version.csv.first}.pkg"

  uninstall pkgutil: "com.unity3d.WebGLSupport-#{version.csv.first}"
end
