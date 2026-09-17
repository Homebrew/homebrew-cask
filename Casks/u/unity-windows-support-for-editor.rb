cask "unity-windows-support-for-editor" do
  version "6000.6.1f1,7efac9f6c10e"
  sha256 "075af79274e51a3c348b8d35dc5c8a7787df053060796de4c516dd2c04d29114"

  url "https://download.unity3d.com/download_unity/#{version.csv.second}/MacEditorTargetInstaller/UnitySetup-Windows-Mono-Support-for-Editor-#{version.csv.first}.pkg"
  name "Unity Windows (Mono) Build Support"
  desc "Windows (Mono) target support for Unity"
  homepage "https://unity.com/products"

  livecheck do
    cask "unity"
  end

  depends_on cask: "unity"
  depends_on :macos

  pkg "UnitySetup-Windows-Mono-Support-for-Editor-#{version.csv.first}.pkg"

  uninstall pkgutil: "com.unity3d.WindowsStandaloneSupport-#{version.csv.first}"
end
