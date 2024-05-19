cask "yass" do
  arch arm: "-arm64", intel: "-x64"

  version "1.10.1"
  sha256 arm:   "2bc0f91363282e009277cc1bde1e5631f885059945c28fc4ccc0fe90eeef070d",
         intel: "3883f39a53f6f2ac0492270f45de05526d209d6a24094394f86b11ee20e335b0"

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
