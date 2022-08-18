cask "unity" do
  arch arm: "Arm64"

  version "2022.1.13f1,22856944e6d2"

  on_intel do
    sha256 "cf7d4c0f38a2a582d3a2cff618b7bf924fc3a0d5d717a05476cfe455203de05c"
  end
  on_arm do
    sha256 "6916ebb696a27b124dd02a8ec38d934048aa08075731dfa1ebdabbf7f467d946"
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
