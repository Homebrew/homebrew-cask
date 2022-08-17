cask "unity-ios-support-for-editor" do
  version "2022.1.13f1,22856944e6d2"
  sha256 "6c1af099f562a4fdd40953a63e12a8645e236daebf3409714beddf103034a423"

  url "https://download.unity3d.com/download_unity/#{version.csv.second}/MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-#{version.csv.first}.pkg",
      verified: "download.unity3d.com/download_unity/"
  name "Unity iOS Build Support"
  desc "iOS target support for Unity"
  homepage "https://unity.com/products"

  livecheck do
    url "https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json"
    strategy :page_match do |page|
      page.scan(%r{
        /download_unity/(\h+)/MacEditorTargetInstaller
        /UnitySetup-iOS-Support-for-Editor-(\d+(?:\.\d+)+[a-z]*\d*)\.pkg
      }ix).map do |match|
        "#{match[1]},#{match[0]}"
      end
    end
  end

  depends_on cask: "unity"

  pkg "UnitySetup-iOS-Support-for-Editor-#{version.csv.first}.pkg"

  uninstall pkgutil: "com.unity3d.iOSSupport"
end
