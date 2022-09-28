cask "unite" do
  version "4.2.1"
  sha256 "14ce8be9abc606419406129a135c7881d1df5e77684d933350ace51e02407992"

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
