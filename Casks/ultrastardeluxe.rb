cask "ultrastardeluxe" do
  version "1.1"
  sha256 "18e36476ec6994b1dd54e6272c08ceb86b10abf4984a18d834003e696153ca9b"

  # downloads.sourceforge.net/ultrastardx/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/ultrastardx/UltraStarDeluxe-#{version}.dmg"
  appcast "https://sourceforge.net/projects/ultrastardx/rss"
  name "UltraStar Deluxe"
  homepage "https://ultrastardx.sourceforge.io/"

  app "UltraStarDeluxe.app"
end
