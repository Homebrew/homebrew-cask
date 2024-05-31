cask "yass" do
  arch arm: "-arm64", intel: "-x64"

  version "1.10.4"
  sha256 arm:   "7325ffa41dba2c987e1974cb0d42c9f3d2d8be699c6b2afb0e3d6ca6711d7fa5",
         intel: "c3fdbbe59961bf9e371a04736b6536be93d9218c928c43748699960631c4c900"

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
