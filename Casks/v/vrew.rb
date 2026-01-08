cask "vrew" do
  version "3.5.3"
  sha256 "fbae0fa357bc26be28b38c37c2b8f6ea062fa8739b7a194653578306c900c900"

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
