cask "unite" do
  version "4.4"
  sha256 "b9a9b90675198ceb9d07d4a82e4c7859a36a1e4eb91118cdcbb1fb569e58f41f"

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
  depends_on macos: ">= :high_sierra"

  app "Unite.app"

  zap trash: [
        "~/Library/Application Support/Unite",
        "~/Library/Application Support/com.BZG.unite.*",
        "~/Library/Preferences/com.BZG.unite.*",
      ],
      rmdir: "/Users/Shared/Unite"
end
