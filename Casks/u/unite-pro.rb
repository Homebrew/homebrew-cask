cask "unite-pro" do
  version "1.1"
  sha256 "4692602555423ea49fc5dc6aab8885b5d6dd49ae4562d955bc7652afd03d4cf9"

  url "https://bzgdownloads.s3.amazonaws.com/Unite/Unite+Pro+#{version}.zip",
      verified: "bzgdownloads.s3.amazonaws.com/Unite/"
  name "Unite Pro"
  desc "Turn websites into native, customizable Mac apps"
  homepage "https://www.bzgapps.com/unite"

  livecheck do
    url "https://bzgdownloads.s3.amazonaws.com/Unite/App+Cast/Unite+Pro+appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sequoia"
  conflicts_with cask: "unite"

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
