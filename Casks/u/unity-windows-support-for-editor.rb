cask "unity-windows-support-for-editor" do
  version "6000.6.8f1,237b6593792b"
  sha256 "a8d992312419b93c455d780d75a84df8b28298e158a6a26288df5118ca82d55e"

  url "https://download.unity3d.com/download_unity/#{version.csv.second}/MacEditorTargetInstaller/UnitySetup-Windows-Mono-Support-for-Editor-#{version.csv.first}.pkg"
  name "Unity Windows (Mono) Build Support"
  desc "Windows (Mono) target support for Unity"
  homepage "https://unity.com/products"

  livecheck do
    cask "unity"
  end

  depends_on cask: "unity"
  depends_on :macos

  pkg "UnitySetup-Windows-Mono-Support-for-Editor-#{version.csv.first}.pkg"

  uninstall pkgutil: "com.unity3d.WindowsStandaloneSupport-#{version.csv.first}"

  zap :not_required
end
