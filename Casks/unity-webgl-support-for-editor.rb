cask "unity-webgl-support-for-editor" do
  version "2022.1.2f1,9427c1534183"
  sha256 "3ccbd7c120b04e049877fd7562fb6a0cb0a188362fa0028d862d6c5288766d2b"

  url "https://download.unity3d.com/download_unity/#{version.csv.second}/MacEditorTargetInstaller/UnitySetup-WebGL-Support-for-Editor-#{version.csv.first}.pkg",
      verified: "download.unity3d.com/download_unity/"
  name "Unity WebGL Build Support"
  desc "WebGL target support for Unity"
  homepage "https://unity.com/products"

  livecheck do
    url "https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json"
    strategy :page_match do |page|
      page.scan(%r{
        /download_unity/(\h+)/MacEditorTargetInstaller
        /UnitySetup-WebGL-Support-for-Editor-(\d+(?:\.\d+)+[a-z]*\d*)\.pkg
      }ix).map do |match|
        "#{match[1]},#{match[0]}"
      end
    end
  end

  depends_on cask: "unity"

  pkg "UnitySetup-WebGL-Support-for-Editor-#{version.csv.first}.pkg"

  uninstall pkgutil: "com.unity3d.WebGLSupport"
end
