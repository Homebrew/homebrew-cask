cask "unity-webgl-support-for-editor" do
  version "2023.1.9f1,f3f94c8cdc49"
  sha256 "a8ffe68e328e3b8ac71998f008f0a6bd7bbe4dc1e39546d9eb7014faf31d9fd3"

  url "https://download.unity3d.com/download_unity/#{version.csv.second}/MacEditorTargetInstaller/UnitySetup-WebGL-Support-for-Editor-#{version.csv.first}.pkg",
      verified: "download.unity3d.com/download_unity/"
  name "Unity WebGL Build Support"
  desc "WebGL target support for Unity"
  homepage "https://unity.com/products"

  livecheck do
    url "https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json"
    regex(%r{
        /download_unity/(\h+)/MacEditorTargetInstaller
        /UnitySetup-WebGL-Support-for-Editor-(\d+(?:\.\d+)+[a-z]*\d*)\.pkg
      }ix)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  depends_on cask: "unity"

  pkg "UnitySetup-WebGL-Support-for-Editor-#{version.csv.first}.pkg"

  uninstall pkgutil: "com.unity3d.WebGLSupport"
end
