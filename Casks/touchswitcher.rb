cask "touchswitcher" do
  version "1.3.3,122"
  sha256 "0145227a9e26d7129d200e0fed2aea3855cd6c36248a300adc14741ff504afa7"

  url "https://hazeover.com/touchswitcher/TouchSwitcher.zip"
  appcast "https://hazeover.com/touchswitcher/updates.xml"
  name "TouchSwitcher"
  homepage "https://hazeover.com/touchswitcher.html"

  depends_on macos: ">= :high_sierra"

  app "TouchSwitcher.app"
end
