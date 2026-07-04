cask "uniclipboard" do
  arch arm: "aarch64", intel: "x64"

  version "0.18.0"
  sha256 arm:   "9be2b9157f11419954cc0f72cef1dc65cb04538f777120864b3871313ab1e27c",
         intel: "f1974fc4c7b2b8401e8924f5fb077a0635427d6b7e3530d09c8234848c4fbc55"

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
