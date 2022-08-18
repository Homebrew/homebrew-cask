cask "whalebird" do
  version "4.6.3"
  sha256 "0f3b6f570ec80df2ca708655e33f4d6dc431f5ecd3d197baef66bd3500dfb494"

  url "https://github.com/h3poteto/whalebird-desktop/releases/download/#{version}/Whalebird-#{version}-darwin-universal.dmg",
      verified: "github.com/h3poteto/whalebird-desktop/"
  name "Whalebird"
  desc "Mastodon, Pleroma and Misskey client"
  homepage "https://whalebird.social/"

  app "Whalebird.app"

  zap trash: [
    "~/Library/Application Support/Whalebird",
    "~/Library/Logs/Whalebird",
    "~/Library/Preferences/org.whalebird.desktop.plist",
    "~/Library/Saved Application State/org.whalebird.desktop.savedState",
  ]
end
