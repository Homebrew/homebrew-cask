cask "unity" do
  arch = Hardware::CPU.intel? ? "" : "Arm64"

  version "2022.1.5f1,feea5ec8f162"

  if Hardware::CPU.intel?
    sha256 "5093df3663d7356e156ccc116072457625010e57107371c4fce5c0230009018f"
  else
    sha256 "6e75c0fda9d2b61d00458dafc62d887cc1368bbce666e384d1a05819dad4e48d"
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
