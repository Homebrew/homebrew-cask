cask "touchswitcher" do
  version "1.4.1,135"
  sha256 "f7067016df7488b6676d7dff16282796278a0b8e47d5e908b0a65b9609f06e6d"

  url "https://hazeover.com/touchswitcher/TouchSwitcher.zip"
  appcast "https://hazeover.com/touchswitcher/updates.xml"
  name "TouchSwitcher"
  homepage "https://hazeover.com/touchswitcher.html"

  depends_on macos: ">= :mojave"

  app "TouchSwitcher.app"
end
