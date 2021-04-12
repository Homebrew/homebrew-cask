cask "totalfinder" do
  version "1.13.10"
  sha256 :no_check

  url "https://downloads.binaryage.com/TotalFinder-#{version}.dmg"
  name "TotalFinder"
  desc "Improve your Finder with tabs, dual panel, colored labels and other features"
  homepage "https://totalfinder.binaryage.com/"

  app "TotalFinder.app"
  pkg "TotalFinder.pkg"
end
