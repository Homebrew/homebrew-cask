cask "touchswitcher" do
  version "1.4.1,135"
  sha256 :no_check

  url "https://hazeover.com/touchswitcher/TouchSwitcher.zip"
  appcast "https://hazeover.com/touchswitcher/updates.xml"
  name "TouchSwitcher"
  homepage "https://hazeover.com/touchswitcher.html"

  depends_on macos: ">= :mojave"

  app "TouchSwitcher.app"
end
