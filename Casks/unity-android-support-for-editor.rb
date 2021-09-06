cask "unity-android-support-for-editor" do
  version "2021.1.19f1,5f5eb8bbdc25"
  sha256 "2af82e155fbf5e131712be8e05971d2f92c00a4d7a99d1bcb183d857d96e30a4"

  url "https://download.unity3d.com/download_unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg",
      verified: "download.unity3d.com/download_unity/"
  name "Unity Android Build Support"
  desc "Android target support for Unity"
  homepage "https://unity.com/products"

  livecheck do
    url "https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json"
    strategy :page_match do |page|
      page.scan(%r{
        /download_unity/(\h+)/MacEditorTargetInstaller
        /UnitySetup-Android-Support-for-Editor-(\d+(?:\.\d+)*[a-z]*\d*)\.pkg
      }ix).map do |match|
        "#{match[1]},#{match[0]}"
      end
    end
  end

  depends_on cask: "unity"

  pkg "UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: "com.unity3d.AndroidPlayer"
end
