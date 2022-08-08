cask "winebottler" do
  version "1.8.6"
  sha256 :no_check

  url "https://winebottler.kronenberg.org/combo/builds/WineBottlerCombo_1.8.6.dmg"
  name "WineBottler"
  desc "Run Windows-based Programs"
  homepage "https://winebottler.kronenberg.org/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Wine.app"
  app "WineBottler.app"
end
