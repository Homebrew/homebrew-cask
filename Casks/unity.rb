cask "unity" do
  arch = Hardware::CPU.intel? ? "" : "Arm64"

  version "2021.3.0f1,6eacc8284459"

  if Hardware::CPU.intel?
    sha256 "0d626fbdf452a6e4a73a336cc6f0e36729e7d8d7e648eefe32ba0828a8527983"
  else
    sha256 "24e686d2e3e5210a919f5b933308ac71e709d45430acf4c288ad5bf2b77d962e"
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
