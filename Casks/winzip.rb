cask "winzip" do
  version "9.0.5520"
  sha256 "2b7f2b5322ffe709151b9790aaba6231ce54e423ceca5ea9433977e3079da528"

  url "https://download.winzip.com/winzipmacedition#{version.major}.dmg"
  name "WinZip"
  desc "File archiving tool"
  homepage "https://www.winzip.com/mac/en/winzip.html"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "WinZip.app"
end
