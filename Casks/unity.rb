cask "unity" do
  arch = Hardware::CPU.intel? ? "" : "Arm64"

  version "2021.2.16f1,559fc0ec6670"

  if Hardware::CPU.intel?
    sha256 "33618330ef35fa17a3b8c5d5f7b477c3ef08c2a76f4523aa8b09106304c4bc4c"
  else
    sha256 "199e8ae59e687c2d680dac84172c72322b4a1a4d8b6d459e4570dd51ffbd03f7"
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
