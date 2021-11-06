cask "unity" do
  version "2021.2.1f1,c20c6d589440"
  sha256 "575eeeb96c3cdde22acb045e1c5a93d428d19249f60493367b4519cd9622e429"

  url "https://download.unity3d.com/download_unity/#{version.after_comma}/MacEditorInstaller/Unity-#{version.before_comma}.pkg",
      verified: "download.unity3d.com/download_unity/"
  name "Unity Editor"
  desc "Platform for 3D content"
  homepage "https://unity.com/products"

  livecheck do
    url "https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json"
    strategy :page_match do |page|
      page.scan(%r{/download_unity/(\h+)/MacEditorInstaller/Unity-(\d+(?:\.\d+)*[a-z]*\d*)\.pkg}i).map do |match|
        "#{match[1]},#{match[0]}"
      end
    end
  end

  pkg "Unity-#{version.before_comma}.pkg"

  uninstall quit:    "com.unity3d.UnityEditor5.x",
            pkgutil: "com.unity3d.UnityEditor5.x",
            delete:  "/Applications/Unity"
end
