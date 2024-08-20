cask "yass" do
  arch arm: "-arm64", intel: "-x64"

  version "1.13.0"
  sha256 arm:   "eed7e9bc318f264b9645c219fcdfdd4eacef539b684758b3cfb138f5c8fc9230",
         intel: "0e74491045c13eaf31da94cda299d5d1c2fb557454842685caf9412bd9cc00c4"

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
