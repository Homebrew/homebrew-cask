cask "touchswitcher" do
  version "1.4.5"
  sha256 "d873af5d57379f0d58b79de13679a8aac01c64423cc90319486b350fa411c931"

  url "https://hazeover.com/touchswitcher/TouchSwitcher-#{version}.txz"
  name "TouchSwitcher"
  desc "Use the Touch Bar to switch apps"
  homepage "https://hazeover.com/touchswitcher.html"

  livecheck do
    url "https://hazeover.com/touchswitcher/updates.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :sierra"

  app "TouchSwitcher.app"

  zap trash: "~/Library/Preferences/com.pointum.TouchSwitcher.plist"
end
