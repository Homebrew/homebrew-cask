cask "viber" do
  version "23.3.0,2330"
  sha256 :no_check

  url "https://download.viber.com/desktop/mac/Viber.dmg"
  name "Viber"
  desc "Calling and messaging application focusing on security"
  homepage "https://www.viber.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Viber.app"

  zap trash: [
        "~/Library/Application Scripts/com.viber.osx.macvibershare",
        "~/Library/Application Support/com.viber.osx",
        "~/Library/Application Support/ViberPC",
        "~/Library/Caches/com.viber.osx",
        "~/Library/Caches/Viber Media S.à r.l",
        "~/Library/Containers/com.viber.osx.macvibershare",
        "~/Library/Preferences/com.viber.*.plist",
        "~/Library/Saved Application State/com.viber.osx.savedState",
      ],
      rmdir: "~/Documents/ViberDownloads"

  caveats do
    requires_rosetta
  end
end
