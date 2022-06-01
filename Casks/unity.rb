cask "unity" do
  arch = Hardware::CPU.intel? ? "" : "Arm64"

  version "2022.1.2f1,9427c1534183"

  if Hardware::CPU.intel?
    sha256 "8945c7ce7e034a9699a4b9da1ef7849c8ea54cbcf7ec5e4fcfe8ec384820faba"
  else
    sha256 "48c5083e8568b845690fb84425f95f283cef43fe5c42bea3b97bb6b6be994ac4"
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
