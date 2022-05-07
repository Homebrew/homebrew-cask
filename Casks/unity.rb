cask "unity" do
  arch = Hardware::CPU.intel? ? "" : "Arm64"

  version "2021.3.2f1,d6360bedb9a0"

  if Hardware::CPU.intel?
    sha256 "d9db27d98ee29d07668b6d62b74583222d26d999ce66abc17b9afb5cd4827e5a"
  else
    sha256 "c58afe01f435624442482ffabcbec5fe68466cb358a5281da19548f890583d91"
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
