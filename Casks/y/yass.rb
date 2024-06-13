cask "yass" do
  arch arm: "-arm64", intel: "-x64"

  version "1.11.1"
  sha256 arm:   "e6067281fd68b885891b96ea991b393dd64d6c2817d0d79581500df779bf1d1c",
         intel: "5a47d45c092125ef01248748221488b619717f2baa68f50c83871da1072d78ca"

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
