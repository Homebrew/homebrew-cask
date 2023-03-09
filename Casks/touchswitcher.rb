cask "touchswitcher" do
  version "1.4.5"
  sha256 :no_check

  url "https://hazeover.com/touchswitcher/TouchSwitcher.zip"
  name "TouchSwitcher"
  desc "Use the Touch Bar to switch apps"
  homepage "https://hazeover.com/touchswitcher.html"

  livecheck do
    url "https://hazeover.com/touchswitcher/updates.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :mojave"

  app "TouchSwitcher.app"

  zap trash: "~/Library/Preferences/com.pointum.TouchSwitcher.plist"
end
