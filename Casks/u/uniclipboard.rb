cask "uniclipboard" do
  arch arm: "aarch64", intel: "x64"

  version "0.19.2"
  sha256 arm:   "0341c02549f35216a4db53f4dd1587dc524b490c1140fb476409798994ae4951",
         intel: "4acb639cef4076a0b2c9fde2ef561ef3349347aa0396c2bf285d299455342aea"

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
