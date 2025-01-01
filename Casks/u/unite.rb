cask "unite" do
  version "5.3.0.1"
  sha256 "702ebb71368472f05562e738edc8e0192c7847bc17be1327cd44b728c79995fe"

  url "https://bzgdownloads.s3.amazonaws.com/Unite/Unite+#{version}.zip",
      verified: "bzgdownloads.s3.amazonaws.com/Unite/"
  name "Unite"
  desc "Turn websites into apps"
  homepage "https://bzgapps.com/unite"

  livecheck do
    url "https://bzgdownloads.s3.amazonaws.com/Unite/App+Cast/Unite+#{version.major}+appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Unite.app"

  zap trash: [
        "~/Library/Application Scripts/group.BZG.unite.sharedData",
        "~/Library/Application Support/com.BZG.unite.*",
        "~/Library/Application Support/Unite",
        "~/Library/Caches/com.BZG.unite",
        "~/Library/Cookies/com.BZG.unite.3.binarycookies",
        "~/Library/Group Containers/group.BZG.unite.sharedData",
        "~/Library/HTTPStorages/com.BZG.unite*",
        "~/Library/Preferences/com.BZG.unite.*",
        "~/Library/Saved Application State/com.BZG.unite*.savedState",
      ],
      rmdir: "/Users/Shared/Unite"
end
