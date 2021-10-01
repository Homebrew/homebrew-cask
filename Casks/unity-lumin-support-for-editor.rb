cask "unity-lumin-support-for-editor" do
  version "2021.1.23f1,b50729e604a9"
  sha256 "0d7e58c5ecafdc4e663192586af810a3e30ac915f49c07a774d220ff4de7505b"

  url "https://download.unity3d.com/download_unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Lumin-Support-for-Editor-#{version.before_comma}.pkg",
      verified: "download.unity3d.com/download_unity/"
  name "Unity Lumin Build Support"
  desc "Lumin target support for Unity"
  homepage "https://unity.com/products"

  livecheck do
    url "https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json"
    strategy :page_match do |page|
      page.scan(%r{
        /download_unity/(\h+)/MacEditorTargetInstaller
        /UnitySetup-Lumin-Support-for-Editor-(\d+(?:\.\d+)*[a-z]*\d*)\.pkg
      }ix).map do |match|
        "#{match[1]},#{match[0]}"
      end
    end
  end

  depends_on cask: "unity"

  pkg "UnitySetup-Lumin-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: "com.unity3d.LuminSupport"
end
