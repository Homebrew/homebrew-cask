cask "timeular" do
  version "4.12.0"
  sha256 "9c6ae385e621d33b422a05bc9aa1f49701e5a003f4fd7d02b4e9d0e93c042fb5"

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
