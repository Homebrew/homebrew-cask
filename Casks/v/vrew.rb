cask "vrew" do
  version "2.7.3"
  sha256 "01d48efeba798a205adf5766388605205c9e342aee47820e0c81713fd02e36e4"

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
