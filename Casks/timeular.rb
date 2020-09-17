cask "timeular" do
  version "3.4.2"
  sha256 "cb638867c91ff3ca22644683a0a59d8dc6a7f08bf6b9af9c0b94d512da0096a1"

  # timeular-desktop-packages.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://timeular-desktop-packages.s3.amazonaws.com/mac/production/Timeular-#{version}.dmg"
  appcast "https://timeular-desktop-packages.s3.amazonaws.com/mac/production/latest-mac.yml"
  name "Timeular"
  homepage "https://timeular.com/"

  auto_updates true

  app "Timeular.app"
end
