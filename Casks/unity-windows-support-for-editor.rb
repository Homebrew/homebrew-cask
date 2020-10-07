cask "unity-windows-support-for-editor" do
  version "2020.1.8f1,22e8c0b0c3ec"
  sha256 "9947c3d2852ae41719813b00d15d35ab9397d07eab33638497a2d7af19d341cc"

  # download.unity3d.com/download_unity/ was verified as official when first introduced to the cask
  url "https://download.unity3d.com/download_unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Windows-Mono-Support-for-Editor-#{version.before_comma}.pkg"
  appcast "https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json"
  name "Unity Windows (Mono) Build Support"
  desc "Windows (Mono) taget support for Unity"
  homepage "https://unity.com/products"

  depends_on cask: "unity"

  pkg "UnitySetup-Windows-Mono-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: "com.unity3d.WindowsStandaloneSupport"
end
