cask "unity-linux-il2cpp-support-for-editor" do
  version "2020.1.15f1,97d0ae02d19d"
  sha256 "11658cdc4bbd1098302fec6ceb0a4e0507ed3bc7dedc91df14f1db96e6cd8366"

  url "https://download.unity3d.com/download_unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-#{version.before_comma}.pkg"
      verified: "download.unity3d.com/download_unity/"
  appcast "https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json"
  name "Unity Linux (IL2CPP) Build Support"
  desc "Linux (IL2CPP) target support for Unity"
  homepage "https://unity.com/products"

  depends_on cask: "unity"

  pkg "UnitySetup-Linux-IL2CPP-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: "com.unity3d.LinuxStandaloneSupportIL2CPP"
end
