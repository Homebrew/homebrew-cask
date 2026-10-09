cask "uniclipboard" do
  arch arm: "aarch64", intel: "x64"

  version "1.1.2"
  sha256 arm:   "d05f3a4010a2c438d01978282eb9fb8e6b0cbe32e0d2f22d6dacd3885f136c89",
         intel: "e849628da5e77c85914c6d0bd836ee0b70cfea2293e9bf5a50fdf1d0fea7e953"

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
