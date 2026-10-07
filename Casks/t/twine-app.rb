cask "twine-app" do
  version "2.12.1"
  sha256 "33de0146b3ac39db8746ed3bd670ff57ae47c75518d151f4276c08370a1edaab"

  url "https://github.com/klembot/twinejs/releases/download/#{version}/Twine-#{version}-macOS.dmg"
  name "Twine"
  desc "Tool for telling interactive, nonlinear stories"
  homepage "https://twinery.org/"

  depends_on macos: :monterey

  app "Twine.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.twinery.twine.sfl*",
    "~/Library/Application Support/Twine",
    "~/Library/Logs/Twine",
    "~/Library/Preferences/org.twinery.twine.plist",
    "~/Library/Saved Application State/org.twinery.twine.savedState",
  ]
end
