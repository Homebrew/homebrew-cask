cask "unity-windows-support-for-editor" do
  version "2021.2.0f1,4bf1ec4b23c9"
  sha256 "c910076eb89454b78b42ca43e904e63aa48f92c95f6b079bbe5ec3d19d696612"

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
