cask "unnaturalscrollwheels" do
  version "1.4.2"
  sha256 "b75c3e5ebb13f94053e593d33f4e1019327d7cb60342214beae65aab7843eb88"

  url "https://github.com/ther0n/UnnaturalScrollWheels/releases/download/#{version}/UnnaturalScrollWheels-#{version}.dmg"
  name "UnnaturalScrollWheels"
  desc "Tool to invert scroll direction for physical scroll wheels"
  homepage "https://github.com/ther0n/UnnaturalScrollWheels"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "UnnaturalScrollWheels.app"

  uninstall quit: "com.theron.UnnaturalScrollWheels"

  zap trash: [
    "~/Library/Application Scripts/com.theron.UnnaturalScrollWheels",
    "~/Library/Containers/com.theron.UnnaturalScrollWheels",
    "~/Library/Preferences/com.theron.UnnaturalScrollWheels.plist",
  ]
end
