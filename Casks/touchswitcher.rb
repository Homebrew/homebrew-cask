cask "touchswitcher" do
  version "1.4.4,152"
  sha256 :no_check

  url "https://hazeover.com/touchswitcher/TouchSwitcher.zip"
  name "TouchSwitcher"
  desc "Use Touch Bar to switch apps"
  homepage "https://hazeover.com/touchswitcher.html"

  livecheck do
    url "https://hazeover.com/touchswitcher/updates.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :mojave"

  app "TouchSwitcher.app"

  zap trash: "~/Library/Preferences/com.pointum.TouchSwitcher.plist"
end
