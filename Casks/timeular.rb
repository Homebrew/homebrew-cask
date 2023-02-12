cask "timeular" do
  version "5.7.7"
  sha256 "767b4b6a53c53a7c2e9168699e3bee4f4f59b6000a9105486d7f5c27f16cca1b"

  url "https://timeular-desktop-packages.s3.amazonaws.com/mac/production/Timeular-#{version}.dmg",
      verified: "timeular-desktop-packages.s3.amazonaws.com/"
  name "Timeular"
  desc "Time tracking aided by a physical device"
  homepage "https://timeular.com/"

  livecheck do
    url "https://timeular-desktop-packages.s3.amazonaws.com/mac/production/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Timeular.app"
end
