cask "uniclipboard" do
  arch arm: "aarch64", intel: "x64"

  version "0.17.0"
  sha256 arm:   "749b484ca891078d85f7424e12b4186c29668b4b7376f733f230781594ed5e69",
         intel: "2949a3d4326bf88d916dc48302688b9c36c393da96da32d779b053472fc099c5"

  url "https://github.com/UniClipboard/UniClipboard/releases/download/v#{version}/UniClipboard_#{version}_#{arch}.dmg",
      verified: "github.com/UniClipboard/UniClipboard/"
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
  ]
end
