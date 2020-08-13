cask "timeular" do
  version "3.4.0"
  sha256 "e2f036a10adaf6bd75faa82d230666a7332aab4a48be97452ccadf76b6b9c301"

  # timeular-desktop-packages.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://timeular-desktop-packages.s3.amazonaws.com/mac/production/Timeular-#{version}.dmg"
  appcast "https://timeular-desktop-packages.s3.amazonaws.com/mac/production/latest-mac.yml"
  name "Timeular"
  homepage "https://timeular.com/"

  auto_updates true

  app "Timeular.app"
end
