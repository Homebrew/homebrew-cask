cask "unite" do
  version "4.2.4.1"
  sha256 "cf21de1eeaaa90f39fb5da99cc8c9eb3ef5a83511904b1d22f50e62cf1f3ad32"

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
