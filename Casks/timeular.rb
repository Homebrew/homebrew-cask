cask "timeular" do
  version "5.7.6"
  sha256 "0fef0a5b3d0c9a540cac0514a3dfaf94515c96fb12a8f1bf110bb77fc41d1894"

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
