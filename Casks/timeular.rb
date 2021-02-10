cask "timeular" do
  version "3.8.0"
  sha256 "3c0dbdb97f9cf37882558c39fb3679191a54de80336271f9eefc4160e6412f6a"

  url "https://timeular-desktop-packages.s3.amazonaws.com/mac/production/Timeular-#{version}.dmg",
      verified: "timeular-desktop-packages.s3.amazonaws.com/"
  appcast "https://timeular-desktop-packages.s3.amazonaws.com/mac/production/latest-mac.yml"
  name "Timeular"
  desc "Time tracking aided by a physical device"
  homepage "https://timeular.com/"

  auto_updates true

  app "Timeular.app"
end
