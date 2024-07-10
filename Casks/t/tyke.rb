cask "tyke" do
  version "1.0"
  sha256 :no_check

  url "https://tyke.app/tyke.dmg"
  name "Tyke"
  desc "Scratch paper that lives on your menu bar"
  homepage "https://tyke.app/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "tyke.app"

  uninstall quit: "org.torrez.tyke"

  zap trash: "~/Library/Preferences/org.torrez.tyke.plist"

  caveats do
    requires_rosetta
  end
end
