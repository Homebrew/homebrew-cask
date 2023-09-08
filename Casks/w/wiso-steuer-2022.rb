cask "wiso-steuer-2022" do
  version "2022"
  sha256 :no_check

  url "https://download.buhl.de/ESD/Steuer/2022/WISOSteuerMac2022.dmg"
  name "wiso-steuer-2022"
  desc "Tax declaration for the fiscal year 2021"
  homepage "https://www.buhl.de/download/wiso-steuer-2022/"

  app "SteuerMac 2022.app"
end
