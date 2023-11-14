cask "zettlr" do
  arch arm: "arm64", intel: "x64"

  version "3.0.2"
  sha256 arm:   "2c47c3f584ee1adef24342ab124d670ed8a170007c3af7ddc0b931e6af718d35",
         intel: "5872eb85bc02efe2104a660dd801f747a794b2664b44c0eaeffb3822fa61dec3"

  url "https://github.com/Zettlr/Zettlr/releases/download/v#{version}/Zettlr-#{version}-#{arch}.dmg"
  name "Zettlr"
  desc "Open-source markdown editor"
  homepage "https://github.com/Zettlr/Zettlr/"

  depends_on macos: ">= :high_sierra"

  app "Zettlr.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.zettlr.app.sfl*",
    "~/Library/Application Support/zettlr",
    "~/Library/Logs/Zettlr",
    "~/Library/Preferences/com.zettlr.app.plist",
    "~/Library/Saved Application State/com.zettlr.app.savedState",
  ]
end
