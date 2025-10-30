cask "vrew" do
  version "3.3.1"
  sha256 "4e52555812de76e82d1d211fce7983de64f2f46c02f22b40b2c3b68a15bfa6c4"

  url "https://vrew-files.voyagerx.com/Vrew-#{version}.dmg"
  name "Vrew"
  desc "Video editor"
  homepage "https://vrew.voyagerx.com/"

  livecheck do
    url "https://s3-ap-northeast-2.amazonaws.com/vrew-files.voyagerx.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Vrew.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.voyagerx.vrew.sfl*",
    "~/Library/Application Support/vrew",
    "~/Library/Preferences/com.voyagerx.vrew.plist",
    "~/Library/Saved Application State/com.voyagerx.vrew.savedState",
  ]
end
