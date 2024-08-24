cask "unite" do
  version "5.2.1"
  sha256 "817be1209d467c36ea2d3c6e4c3d9dffbe798d3fde021e3ac529175cbdf4f2a2"

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
