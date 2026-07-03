cask "uniclipboard" do
  arch arm: "aarch64", intel: "x64"

  version "0.17.1"
  sha256 arm:   "dc4c086ad8263ceb76b18af9b180258c5b282e4d3800356c3bb68b57d80cf072",
         intel: "e1536528888d7de5eb7a0998ab9fa2d43cfc6d4348164dc6b99ae8853d3bbc2d"

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
