cask "unity-android-support-for-editor" do
  version "2020.1.13f1,5e24f28bfbc0"
  sha256 "d17c5b14f08a05fd4468820678cbd5a1296400470713c26e3be8669075976005"

  # download.unity3d.com/download_unity/ was verified as official when first introduced to the cask
  url "https://download.unity3d.com/download_unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"
  appcast "https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json"
  name "Unity Android Build Support"
  desc "Android taget support for Unity"
  homepage "https://unity.com/products"

  depends_on cask: "unity"

  pkg "UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: "com.unity3d.AndroidPlayer"
end
