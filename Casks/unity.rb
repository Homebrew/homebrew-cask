cask "unity" do
  arch = Hardware::CPU.intel? ? "" : "Arm64"

  version "2022.1.7f1,240f4c1f462c"

  if Hardware::CPU.intel?
    sha256 "f4bf836e0689d1544e1d1408c3a360d6beaa310037de615d930408472de70f88"
  else
    sha256 "b595fc23f9b79568930aeb03fbae967617aa1f544833b1ef5d4aeb625ab70860"
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
