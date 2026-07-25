cask "unity-windows-support-for-editor" do
  version "6000.5.3f1,c2eb47b3a2a9"
  sha256 "5ab7bb771de8cccafb0d7aba422ea5b70cc6c1dd166a6031cc6a9572a4b4be5d"

  url "https://download.unity3d.com/download_unity/#{version.csv.second}/MacEditorTargetInstaller/UnitySetup-Windows-Mono-Support-for-Editor-#{version.csv.first}.pkg",
      verified: "download.unity3d.com/download_unity/"
  name "Unity Windows (Mono) Build Support"
  desc "Windows (Mono) target support for Unity"
  homepage "https://unity.com/products"

  livecheck do
    cask "unity"
  end

  depends_on :macos
  depends_on cask: "unity"

  pkg "UnitySetup-Windows-Mono-Support-for-Editor-#{version.csv.first}.pkg"

  uninstall pkgutil: "com.unity3d.WindowsStandaloneSupport-#{version.csv.first}"
end
