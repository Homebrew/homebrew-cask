cask "uniclipboard" do
  arch arm: "aarch64", intel: "x64"

  version "1.1.0"
  sha256 arm:   "283d8e4ea72389cc4aece54da8fec825dac22a63fb0e122cea5f6be0c23f7092",
         intel: "a2d957428aacde348d759da5800f6a780b5e8c9a3c98dc250af284009b668a1c"

  url "https://github.com/UniClipboard/UniClipboard/releases/download/v#{version}/UniClipboard_#{version}_#{arch}.dmg"
  name "UniClipboard"
  desc "Cross-device clipboard syncing tool"
  homepage "https://www.uniclipboard.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "UniClipboard.app"

  zap trash: [
    "~/Library/Application Support/app.uniclipboard.desktop",
    "~/Library/Caches/app.uniclipboard.desktop",
    "~/Library/Logs/app.uniclipboard.desktop",
    "~/Library/WebKit/app.uniclipboard.desktop",
  ]
end
