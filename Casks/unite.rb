cask "unite" do
  version "4.1.1"
  sha256 "806f892328ccef5127035ca9a561ec18985aa36b3d49c2bbc1429327c6444dd4"

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
