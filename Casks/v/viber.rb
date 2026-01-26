cask "viber" do
  version "1.0.0.90,2154"
  sha256 :no_check

  url "https://download.viber.com/desktop/mac/online/Viber.dmg"
  name "Viber"
  desc "Calling and messaging application focusing on security"
  homepage "https://www.viber.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Viber.app"

  zap trash: [
        "~/Library/Application Scripts/com.viber.osx.macvibershare",
        "~/Library/Application Support/com.viber.osx",
        "~/Library/Application Support/ViberPC",
        "~/Library/Caches/com.viber.osx",
        "~/Library/Caches/SentryCrash/Viber",
        "~/Library/Caches/Viber Media S.à r.l",
        "~/Library/Containers/com.viber.osx.macvibershare",
        "~/Library/HTTPStorages/com.viber.osx",
        "~/Library/Preferences/com.viber.*.plist",
        "~/Library/Saved Application State/com.viber.osx.savedState",
      ],
      rmdir: "~/Documents/ViberDownloads"
end
