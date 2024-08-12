cask "vrew" do
  version "2.5.2"
  sha256 "3e75d9b1195737fff4f2c0b086c737ad507e0d6a98f63a2aedc63795161a3b1b"

  url "https://vrew-files.voyagerx.com/Vrew-#{version}.dmg"
  name "Vrew"
  desc "Video editor"
  homepage "https://vrew.voyagerx.com/"

  livecheck do
    url "https://s3-ap-northeast-2.amazonaws.com/vrew-files.voyagerx.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Vrew.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.voyagerx.vrew.sfl*",
    "~/Library/Application Support/vrew",
    "~/Library/Preferences/com.voyagerx.vrew.plist",
    "~/Library/Saved Application State/com.voyagerx.vrew.savedState",
  ]
end
