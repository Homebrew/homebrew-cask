cask "unity-android-support-for-editor" do
  version "2022.1.1f1,53d13f540f71"
  sha256 "7fbe03c87b31d488100a846c31231d4b1a11a5627e286fe9b621cac512bf90ca"

  url "https://download.unity3d.com/download_unity/#{version.csv.second}/MacEditorTargetInstaller/UnitySetup-Android-Support-for-Editor-#{version.csv.first}.pkg",
      verified: "download.unity3d.com/download_unity/"
  name "Unity Android Build Support"
  desc "Android target support for Unity"
  homepage "https://unity.com/products"

  livecheck do
    url "https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json"
    strategy :page_match do |page|
      page.scan(%r{
        /download_unity/(\h+)/MacEditorTargetInstaller
        /UnitySetup-Android-Support-for-Editor-(\d+(?:\.\d+)+[a-z]*\d*)\.pkg
      }ix).map do |match|
        "#{match[1]},#{match[0]}"
      end
    end
  end

  depends_on cask: "unity"

  pkg "UnitySetup-Android-Support-for-Editor-#{version.csv.first}.pkg"

  uninstall pkgutil: "com.unity3d.AndroidPlayer"
end
