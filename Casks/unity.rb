cask "unity" do
  arch = Hardware::CPU.intel? ? "" : "Arm64"

  version "2022.1.1f1,53d13f540f71"

  if Hardware::CPU.intel?
    sha256 "02377e74be5bbab7efa69d1ee2bf52db74887bfd809820db0095127e1dac1889"
  else
    sha256 "4227f2921ab4c96bb9bea8164d9391e2e5e8ae9b2b9a80c967a6b9e42c9a8435"
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
