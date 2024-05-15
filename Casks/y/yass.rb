cask "yass" do
  arch arm: "-arm64", intel: "-x64"

  version "1.10.0"
  sha256 arm:   "1be42d2d316054ef8420f394bc4ad20ca9c75a0c682b908a5ed73239e2a1c56a",
         intel: "46d7c087efe54ab33830a65d2df982f902c70b7c8e566952603e8ffcdc4af0cf"

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
