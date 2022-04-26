cask "unity" do
  arch = Hardware::CPU.intel? ? "" : "Arm64"

  version "2021.3.1f1,3b70a0754835"

  if Hardware::CPU.intel?
    sha256 "9ced483d8c948b57cf4b14a8b83569c464629762b4af21595cd515e77f1033f1"
  else
    sha256 "bd6554c6e0fe6358f373ae13ef0e15c5e6c1d9c5210be73d36b77c2903e961d1"
  end

  url "https://download.unity3d.com/download_unity/#{version.csv.second}/MacEditorInstaller#{arch}/Unity-#{version.csv.first}.pkg",
      verified: "download.unity3d.com/download_unity/"
  name "Unity Editor"
  desc "Platform for 3D content"
  homepage "https://unity.com/products"

  livecheck do
    url "https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json"
    strategy :page_match do |page|
      page.scan(%r{/download_unity/(\h+)/MacEditorInstaller/Unity-(\d+(?:\.\d+)+[a-z]*\d*)\.pkg}i).map do |match|
        "#{match[1]},#{match[0]}"
      end
    end
  end

  pkg "Unity-#{version.csv.first}.pkg"

  uninstall quit:    "com.unity3d.UnityEditor5.x",
            pkgutil: "com.unity3d.UnityEditor5.x",
            delete:  "/Applications/Unity"
end
