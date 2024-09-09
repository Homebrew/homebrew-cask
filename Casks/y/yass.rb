cask "yass" do
  arch arm: "-arm64", intel: "-x64"

  version "1.13.2"
  sha256 arm:   "3bc3b9600069dd059df7bc376c8adf008da6a881a09863b49f5b2492930ce599",
         intel: "f4b3750713032e2ea2d3d55c1f3e5c81342608834493d32e0a626e39be9caf15"

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
