cask "timeular" do
  version "5.8.4"
  sha256 "d97d7c0e8223f3f3e34bf979dc7fb7003e6674ff40134def1df9d64d321642dd"

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

  zap trash: [
    "~/Library/Application Support/Timeular",
    "~/Library/Logs/Timeular",
    "~/Library/Preferences/com.timeular.zei.plist",
  ]
end
