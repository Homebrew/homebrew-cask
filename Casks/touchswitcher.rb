cask "touchswitcher" do
  version "1.4,133"
  sha256 "fea7c903fc7b3fcad405b9464f27e334c496771adc6975f8ab8d5d44481405a4"

  url "https://hazeover.com/touchswitcher/TouchSwitcher.zip"
  appcast "https://hazeover.com/touchswitcher/updates.xml"
  name "TouchSwitcher"
  homepage "https://hazeover.com/touchswitcher.html"

  depends_on macos: ">= :high_sierra"

  app "TouchSwitcher.app"
end
