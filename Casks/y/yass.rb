cask "yass" do
  arch arm: "-arm64", intel: "-x64"

  version "1.9.3"
  sha256 arm:   "6ce5b7ca7e75cd4d478cf196c5c090b3e9216f402c3fa480be4bf4eb27d44b39",
         intel: "3085d10427db5bf88d6189450d6e9d889bf54ff934c587bffad177ac2b114ef3"

  url "https://github.com/Chilledheart/yass/releases/download/#{version}/yass-macos-release#{arch}-#{version}.dmg"
  name "YASS"
  desc "Yet Another Shadow Socket"
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
