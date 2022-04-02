cask "unity" do
  arch = Hardware::CPU.intel? ? "" : "Arm64"

  version "2021.2.18f1,0c6e675195cf"

  if Hardware::CPU.intel?
    sha256 "20b3b12ed7e6bc81d5c41d87db351a54a41f24aecf4eb0c9487604c97bba2e6a"
  else
    sha256 "6d8f3c6795cfce257ee7f16bcaf54b9bd892d5255418d0bd3710aeeed8f1db79"
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
