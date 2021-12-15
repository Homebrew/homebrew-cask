cask "unite" do
  version "4.1.2"
  sha256 "61575b5fb8a38df9ef5cfc31fa4141913ac8cecfa84b1f596158b365e2aa7224"

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
