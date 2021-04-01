cask "unite" do
  version "4.1.0.1"
  sha256 "554b2353dd28db494739a4c1dade75da1733f5329f68ef377bb3a42169219c13"

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
