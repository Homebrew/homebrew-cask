cask "wootility" do
  arch arm: "-arm64"

  version "5.4.3"
  sha256 arm:   "e331f157c047deca1453f776615ebd64ed62f0208778d40f16216aac48b92a2f",
         intel: "cbf2df4386c92b583737e998e660c989ebd20fa064deff5de7a942030cbfd3d8"

  url "https://wootility-updates.ams3.cdn.digitaloceanspaces.com/wootility-mac/Wootility-#{version}#{arch}.dmg"
  name "Wootility"
  desc "Configuration software for Wooting keyboards"
  homepage "https://wooting.io/wootility"

  livecheck do
    url "https://wootility-updates.ams3.digitaloceanspaces.com/wootility-mac/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: :ventura

  app "Wootility.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.wooting.wootility.sfl*",
    "~/Library/Application Support/wootility",
    "~/Library/Logs/wootility",
    "~/Library/Preferences/com.wooting.wootility.plist",
    "~/Library/Saved Application State/com.wooting.wootility.savedState",
  ]
end
