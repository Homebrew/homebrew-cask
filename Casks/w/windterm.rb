cask "windterm" do
  version "2.6.1,2.6.0"
  sha256 "c1a1ff2263b3ded7816c8d2e7309e77f3d0901d488c8559281cfd4d2bb7b891b"

  url "https://github.com/kingToolbox/WindTerm/releases/download/#{version.csv.second}/WindTerm_#{version.csv.first}_Mac_Portable_x86_64.dmg"
  name "WindTerm"
  desc "SSH/SFTP/Shell/Telnet/Serial terminal"
  homepage "https://github.com/kingToolbox/WindTerm"

  livecheck do
    url :url
    regex(/WindTerm\sv?(\d+(?:\.\d+)+)/i)
    strategy :github_latest do |item|
      version = item["name"][regex, 1]
      next if version.blank?

      "#{version},#{item["tag_name"]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "WindTerm.app"

  zap trash: [
    "~/Library/Preferences/KingToolbox.WindTerm.plist",
    "~/Library/Saved Application State/KingToolbox.WindTerm.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
