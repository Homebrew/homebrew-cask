cask "unity" do
  arch = Hardware::CPU.intel? ? "" : "Arm64"

  version "2021.2.13f1,90b6766da538"

  if Hardware::CPU.intel?
    sha256 "1a9f71526f219902eaa1c7eaaa771fdaaf846bf1a3555f706ca7295a495ed019"
  else
    sha256 "29e9aa02ef49d1e0d898e64f142666a3bef65c0629fa749eeabd9c29bf2ff010"
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
