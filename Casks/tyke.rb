cask "tyke" do
  version "1.0"
  sha256 :no_check

  url "https://tyke.app/tyke.dmg"
  name "Tyke"
  homepage "https://tyke.app/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "tyke.app"

  uninstall quit: "org.torrez.tyke"

  zap trash: "~/Library/Preferences/org.torrez.tyke.plist"
end
