cask "uniclipboard" do
  arch arm: "aarch64", intel: "x64"

  version "0.19.4"
  sha256 arm:   "a9e5f2ce44a6ac24cd5ee99a5cd0fe67a5824de989daa76ce7d8790949412cc7",
         intel: "7a7d401ec21244107753bab35f53b9f5146e4db193021a14a8ee092a953e2053"

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
