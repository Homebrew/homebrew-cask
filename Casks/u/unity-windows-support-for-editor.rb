cask "unity-windows-support-for-editor" do
  version "6000.5.5f1,d16e074b49fd"
  sha256 "3267b3aefc19dee22db60aba7e1f33cd8bb9f2833ab97f8f6f586ddb3f7f0b3a"

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
