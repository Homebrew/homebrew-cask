cask "viber" do
  version "16.8.1,1680"
  sha256 :no_check

  url "https://download.viber.com/desktop/mac/Viber.dmg"
  name "Viber"
  desc "Calling and messaging application focusing on security"
  homepage "https://www.viber.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :high_sierra"

  app "Viber.app"

  zap trash: [
    "~/Library/Application Scripts/com.viber.osx.macvibershare",
    "~/Library/Application Support/com.viber.osx",
    "~/Library/Application Support/ViberPC",
    "~/Library/Caches/Viber Media S.à r.l",
    "~/Library/Caches/com.viber.osx",
    "~/Library/Containers/com.viber.osx.macvibershare",
    "~/Library/Preferences/com.viber.*.plist",
    "~/Library/Saved Application State/com.viber.osx.savedState",
  ],
      rmdir: "~/Documents/ViberDownloads"
end
