cask "wiso-steuer-2022" do
  version "29.14.4030"
  sha256 :no_check

  url "https://download.buhl.de/ESD/Steuer/2022/WISOSteuerMac2022.dmg"
  name "WISO Steuer 2022"
  desc "Tax declaration for the fiscal year 2021"
  homepage "https://www.buhl.de/download/wiso-steuer-2022/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "SteuerMac 2022.app"
end
