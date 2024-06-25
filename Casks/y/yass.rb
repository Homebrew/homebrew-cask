cask "yass" do
  arch arm: "-arm64", intel: "-x64"

  version "1.11.3"
  sha256 arm:   "6dec9a348f7daaefd49e404cf0b4a69bbe17c8aa59dccb67668dc19a4eda8be5",
         intel: "1ee71f80af397ec627ac48df6e2a591ebc726ca94b514fadbb3e10e5019a0d29"

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
