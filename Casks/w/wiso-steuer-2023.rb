cask "wiso-steuer-2023" do
  version "2023"
  sha256 :no_check

  url "https://download.buhl.de/ESD/Steuer/2023/WISOSteuer2023.dmg"
  name "wiso-steuer-2023"
  desc "Tax declaration for the fiscal year 2022"
  homepage "https://www.buhl.de/download/wiso-steuer-2023/"

  app "SteuerMac 2023.app"
end
