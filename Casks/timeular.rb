cask "timeular" do
  version "3.9.3"
  sha256 "f4dd8333fe1fb466e7ba5bbd4c28e3eb6cf86f501411966eab79fc93adab3ba0"

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
