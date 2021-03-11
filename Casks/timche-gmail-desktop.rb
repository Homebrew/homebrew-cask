cask "timche-gmail-desktop" do
  version "2.22.0"
  sha256 "78ba61d2aaa9a42082d6a76181850543abd8c42ad80d22e0ab2f1cb0cc6b6c21"

  url "https://github.com/timche/gmail-desktop/releases/download/#{version}/gmail-desktop-#{version}-mac.dmg"
  appcast "https://github.com/timche/gmail-desktop/releases.atom"
  name "Gmail Desktop"
  desc "Gmail client"
  homepage "https://github.com/timche/gmail-desktop"

  app "Gmail Desktop.app"

  zap trash: [
    "~/Library/Logs/Gmail Desktop",
    "~/Library/Preferences/io.cheung.gmail-desktop.plist",
    "~/Library/Application Support/Gmail Desktop",
    "~/Library/Saved Application State/io.cheung.gmail-desktop.savedState",
  ]
end
