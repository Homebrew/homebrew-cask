cask "uniclipboard" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.1"
  sha256 arm:   "9c8341421f619c563916e984e4163bf230e989b2cbe89a1a61f05fcdaaa36d5b",
         intel: "b6a85617abb57dd44b073d3dcaf31a7981f4f1ea9653fac3e502300516a21647"

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
