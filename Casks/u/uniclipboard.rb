cask "uniclipboard" do
  arch arm: "aarch64", intel: "x64"

  version "0.19.3"
  sha256 arm:   "f633f6b9a999babb8ef76e9ea453b2556568a7e1eb26db630f479bb1e3a85152",
         intel: "aee45d012d0d890b4af55f3236639448bbb3ac09d44722cc1d381c24461163b8"

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
