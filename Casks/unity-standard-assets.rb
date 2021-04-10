cask "unity-standard-assets" do
  version "2018.1.9f2,a6cc294b73ee"
  sha256 "39a4af2c1933597c3599f7f90563749bdb1286b8a149355618fe56a606aa0b1c"

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacStandardAssetsInstaller/StandardAssets-#{version.before_comma}.pkg"
  name "Unity Standard Assets"
  homepage "https://unity3d.com/unity"

  livecheck do
    url "https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json"
    strategy :page_match
    regex(%r{href=.*?/StandardAssets-(\d+(?:\.\d+)*)\.pkg}i)
  end

  pkg "StandardAssets-#{version.before_comma}.pkg"

  uninstall quit:    "com.unity3d.UnityEditor5.x",
            pkgutil: "com.unity3d.StandardAssets"
end
