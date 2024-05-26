cask "yass" do
  arch arm: "-arm64", intel: "-x64"

  version "1.10.3"
  sha256 arm:   "2adfdb4823784fab845d9e12cea9ec981ab94e61b3f583cc727c698e1517b1bd",
         intel: "726aa8b964ef9d9254b0a8f8fed3f1fd8782757cdd7941f0345930ecf7d9a205"

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
