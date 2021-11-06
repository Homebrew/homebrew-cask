cask "unity-windows-support-for-editor" do
  version "2021.2.1f1,c20c6d589440"
  sha256 "59afa21ea1b5f0674fe99138cb63c4b9525373cdd53d05c7788be1dcc8f77be2"

  url "https://download.unity3d.com/download_unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Windows-Mono-Support-for-Editor-#{version.before_comma}.pkg",
      verified: "download.unity3d.com/download_unity/"
  name "Unity Windows (Mono) Build Support"
  desc "Windows (Mono) target support for Unity"
  homepage "https://unity.com/products"

  livecheck do
    url "https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json"
    strategy :page_match do |page|
      page.scan(%r{
        /download_unity/(\h+)/MacEditorTargetInstaller
        /UnitySetup-Windows-Mono-Support-for-Editor-(\d+(?:\.\d+)*[a-z]*\d*)\.pkg
      }ix).map do |match|
        "#{match[1]},#{match[0]}"
      end
    end
  end

  depends_on cask: "unity"

  pkg "UnitySetup-Windows-Mono-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: "com.unity3d.WindowsStandaloneSupport"
end
