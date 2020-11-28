cask "timeular" do
  version "3.7.0"
  sha256 "581b75b6bcdfdd0a40166eda5c9e497b5464103203c9c766648cd9261392b404"

  # timeular-desktop-packages.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://timeular-desktop-packages.s3.amazonaws.com/mac/production/Timeular-#{version}.dmg"
  appcast "https://timeular-desktop-packages.s3.amazonaws.com/mac/production/latest-mac.yml"
  name "Timeular"
  homepage "https://timeular.com/"

  auto_updates true

  app "Timeular.app"
end
