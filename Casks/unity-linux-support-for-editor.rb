cask "unity-linux-support-for-editor" do
  version "2020.1.15f1,97d0ae02d19d"
  sha256 "5b5a067ca0b6c5dc04cd889d67ec29c558651137cd70cafb2e034a74816393da"

  url "https://download.unity3d.com/download_unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Linux-Mono-Support-for-Editor-#{version.before_comma}.pkg"
      verified: "download.unity3d.com/download_unity/"
  appcast "https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json"
  name "Unity Linux (Mono) Build Support"
  desc "Linux (Mono) target support for Unity"
  homepage "https://unity.com/products"

  depends_on cask: "unity"

  pkg "UnitySetup-Linux-Mono-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: "com.unity3d.LinuxStandaloneSupport"
end
