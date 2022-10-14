cask "unite" do
  version "4.2.2"
  sha256 "a885f64231c4cb8ce300bfc8a32a0e8bdfbc30f6446f135652edb1a82fb2f76c"

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
