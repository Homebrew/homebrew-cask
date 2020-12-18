cask "unity-linux-il2cpp-support-for-editor" do
  version "2020.1.16f1,f483ad6465d6"
  sha256 "883c3a77a534f15ccdad1cd3d7857717a446e241fc328768aeb9f84d411583f4"

  url "https://download.unity3d.com/download_unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-#{version.before_comma}.pkg",
      verified: "download.unity3d.com/download_unity/"
  appcast "https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json"
  name "Unity Linux (IL2CPP) Build Support"
  desc "Linux (IL2CPP) target support for Unity"
  homepage "https://unity.com/products"

  depends_on cask: "unity"

  pkg "UnitySetup-Linux-IL2CPP-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: "com.unity3d.LinuxStandaloneSupportIL2CPP"
end
