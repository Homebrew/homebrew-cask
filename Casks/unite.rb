cask "unite" do
  version "4.4.0.1"
  sha256 "e6fcedd814e01515d7fe18e4b93ee7dc9f57d1e869c7d7a4edc341d8eabe92a8"

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
