cask "timeular" do
  version "3.9.7"
  sha256 "a8fc8c62e129b9d0f29b5c9795b0fd20f072c6b14a0223239c3794bcba96a0ea"

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
