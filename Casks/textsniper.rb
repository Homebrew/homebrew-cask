cask "textsniper" do
  version "1.7.0"
  sha256 "311323aa7606600f5c45446f5c832e81fac072d11241342288ff2eceeb190887"

  url "https://s3.amazonaws.com/textsniper.app/TextSniper#{version}.dmg",
      verified: "s3.amazonaws.com/textsniper.app/"
  name "textsniper"
  desc "Extract text from images and other digital documents in seconds"
  homepage "https://textsniper.app/"

  livecheck do
    url "https://textsniper.app/api/downloads/mac-latest"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "TextSniper.app"

  uninstall  quit:      "com.valerijs.boguckis.TextSniper",
             launchctl: "com.valerijs.boguckis.TextSniper-LaunchAtLoginHelper",
             delete:    "/Applications/TextSniper.app"

  zap trash: [
    "~/Library/Application Scripts/com.valerijs.boguckis.TextSniper-LaunchAtLoginHelper",
    "~/Library/Application Support/com.valerijs.boguckis.TextSniper",
    "~/Library/Caches/com.valerijs.boguckis.TextSniper",
    "~/Library/Containers/com.valerijs.boguckis.TextSniper-LaunchAtLoginHelper",
    "~/Library/Preferences/com.valerijs.boguckis.TextSniper.plist",
  ]
end
