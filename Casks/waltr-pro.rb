cask "waltr-pro" do
  version "1.0.89"
  sha256 "d6b8d87156af2e96f0f0a18acf7547350111b389a40b54118c6e4eaf0c788674"

  url "https://shining.softorino.com/shine_uploads/waltrpromac_#{version}.dmg"
  appcast "https://api.softorino.com/v1/app-manager/waltrpro/mac/updates"
  name "WALTR PRO"
  homepage "https://softorino.com/waltr/"

  app "Waltr #{version.major}.app"
end
