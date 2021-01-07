cask "touchswitcher" do
  version "1.4.1,135"
  sha256 :no_check

  url "https://hazeover.com/touchswitcher/TouchSwitcher.zip"
  name "TouchSwitcher"
  homepage "https://hazeover.com/touchswitcher.html"

  livecheck do
    url "https://hazeover.com/touchswitcher/updates.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :mojave"

  app "TouchSwitcher.app"
end
