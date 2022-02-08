cask "unity" do
  arch = Hardware::CPU.intel? ? "" : "Arm64"

  version "2021.2.10f1,ee872746220e"

  if Hardware::CPU.intel?
    sha256 "79012f77a11e442ddc5c19e4ab4a9906f6840f77b5c065f36459819656eb6fef"
  else
    sha256 "36a840329d7531226131f7fdb43d883dead3f86463411a6e25ef9a7d2bfd206d"
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
