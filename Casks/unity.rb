cask "unity" do
  version "2021.1.3f1,4bef613afd59"
  sha256 "00d4017d2f5fe31911189b0a28b9013466b20de941705e9dbc442dcba4d3e862"

  url "https://download.unity3d.com/download_unity/#{version.after_comma}/MacEditorInstaller/Unity-#{version.before_comma}.pkg",
      verified: "download.unity3d.com/download_unity/"
  name "Unity Editor"
  desc "Platform for 3D content"
  homepage "https://unity.com/products"

  livecheck do
    url "https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json"
    strategy :page_match do |page|
      match = page.match(%r{href=([0-9a-f]+)/MacEditorInstaller/Unity-(\d+(?:.\d+)*)\.pkg}i)
      "#{match[2]},#{match[1]}"
    end
  end

  pkg "Unity-#{version.before_comma}.pkg"

  uninstall quit:    "com.unity3d.UnityEditor5.x",
            pkgutil: "com.unity3d.UnityEditor5.x",
            delete:  "/Applications/Unity"
end
