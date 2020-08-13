cask "winzip" do
  version "7.0.4565"
  sha256 "e65aab9f4619a190da6fc29a01864049cf409e5ae6c962d840d96bbd25d98899"

  url "https://download.winzip.com/winzipmacedition#{version.major}.dmg"
  name "WinZip"
  homepage "https://www.winzip.com/mac/en/winzip.html"

  app "WinZip.app"
end
