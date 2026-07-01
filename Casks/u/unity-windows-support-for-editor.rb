cask "unity-windows-support-for-editor" do
  version "6000.5.2f1,eb73d3b415a1"
  sha256 "3c008019c96ec2d9f0d2d1fad2df56586fbb4e6d1de06af15be3e9b3a4f10009"

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
