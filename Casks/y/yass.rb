cask "yass" do
  arch arm: "-arm64", intel: "-x64"

  version "1.12.1"
  sha256 arm:   "3895252d62540ffb5e62228120829267ddd7f6e6c42f6f153c7d22effa7801fe",
         intel: "c1c592132bab5a004ccebc439b974926d66069dc40647d19dbd3541d33ee5468"

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
