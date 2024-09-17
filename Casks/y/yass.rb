cask "yass" do
  arch arm: "-arm64", intel: "-x64"

  version "1.14.0"
  sha256 arm:   "7dc08ad0a6dc0da8ffc91349fd5c647942aa7a308917a675cdc2e2c2487a341b",
         intel: "e0a6d9da63df421bed2315f2cae4ab66d5dadaa4c0776ae2c9a0ee8eeb752684"

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
