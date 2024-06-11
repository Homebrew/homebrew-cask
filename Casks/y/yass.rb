cask "yass" do
  arch arm: "-arm64", intel: "-x64"

  version "1.11.0"
  sha256 arm:   "d51faf52fc58a945a7036d663f2d261c6196fb65bda324c9e893704f57911e76",
         intel: "3c083d829ebf2331d1f63962d386e9d5d5de993d441e8e7fedeb0a1c02ce6fd3"

  url "https://github.com/Chilledheart/yass/releases/download/#{version}/yass-macos-release#{arch}-#{version}.dmg"
  name "Yet Another Shadow Socket"
  desc "Lightweight and efficient, socks/http forward proxy"
  homepage "https://github.com/Chilledheart/yass"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "yass.app"
  binary "#{appdir}/yass.app/Contents/MacOS/yass"

  zap trash: [
    "~/Library/Preferences/it.gui.yass.plist",
    "~/Library/Preferences/it.gui.yass.suite.plist",
  ]
end
