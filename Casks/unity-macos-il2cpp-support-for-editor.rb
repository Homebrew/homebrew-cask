cask "unity-macos-il2cpp-support-for-editor" do
  version "2020.1.16f1,f483ad6465d6"
  sha256 "39a355f8931a69392787d664483b10314dc97d39a62116307271ed7994228ae2"

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
