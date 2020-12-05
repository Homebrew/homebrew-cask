cask "unity-macos-il2cpp-support-for-editor" do
  version "2020.1.15f1,97d0ae02d19d"
  sha256 "4a7fa757fd508a488fb4940b819fd2523091612fad17604c1fd9c7eb654b49de"

  url "https://download.unity3d.com/download_unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Mac-IL2CPP-Support-for-Editor-#{version.before_comma}.pkg",
      verified: "download.unity3d.com/download_unity/"
  appcast "https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json"
  name "Unity macOS (IL2CPP) Build Support"
  desc "macOS (IL2CPP) target support for Unity"
  homepage "https://unity.com/products"

  depends_on cask: "unity"

  pkg "UnitySetup-Mac-IL2CPP-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: "com.unity3d.MacStandaloneSupportIL2CPP"
end
