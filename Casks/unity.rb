cask "unity" do
  arch = Hardware::CPU.intel? ? "" : "Arm64"

  version "2022.1.8f1,2961e8c2b463"

  if Hardware::CPU.intel?
    sha256 "5c20f9c2b39bbfd45bed62fd1163172c8bbd45b3877ab28601b8d1e169467e48"
  else
    sha256 "39cba3ea22199d27fac7c7d091441142f7bd901ecdc2f13b16203e15be3fb565"
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
