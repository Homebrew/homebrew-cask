cask "unity-lumin-support-for-editor" do
  version "2020.1.8f1,22e8c0b0c3ec"
  sha256 "f7317d85dda5a0da1b02b5c5cd80690ac6947fffd40b110fc4842d6d940b1f8e"

  # download.unity3d.com/download_unity/ was verified as official when first introduced to the cask
  url "https://download.unity3d.com/download_unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Lumin-Support-for-Editor-#{version.before_comma}.pkg"
  appcast "https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json"
  name "Unity Lumin Build Support"
  desc "Lumin taget support for Unity"
  homepage "https://unity.com/products"

  depends_on cask: "unity"

  pkg "UnitySetup-Lumin-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: "com.unity3d.LuminSupport"
end
