cask "ultimaker-cura" do
  arch arm: "ARM64", intel: "X64"

  on_arm do
    version "5.7.2,5.7.2-RC2"
    sha256 "eb4950b2c4f0928a727fd77c71d6b196fcb1d3fca3bc71df1c54752b8d7d0826"
  end
  on_intel do
    version "5.7.2,5.7.2-RC2"
    sha256 "1cb00b09c13d118547fe782c3a91b9489897e245ebb60949b7c331535cda0ce5"
  end

  url "https://github.com/Ultimaker/Cura/releases/download/#{version.csv.second}/UltiMaker-Cura-#{version.csv.first}-macos-#{arch}.dmg",
      verified: "github.com/Ultimaker/Cura/"
  name "UltiMaker Cura"
  name "Cura"
  desc "3D printer and slicing GUI"
  homepage "https://ultimaker.com/software/ultimaker-cura"

  livecheck do
    url :url
    regex(/^(\d+(?:\.\d+)+)/i)
    strategy :github_latest do |item, regex|
      version = item["tag_name"][regex, 1]
      next if version.blank?

      "#{version},#{item["tag_name"]}"
    end
  end

  app "UltiMaker Cura.app"

  uninstall quit: "nl.ultimaker.cura.dmg"

  zap trash: [
    "~/.cura",
    "~/Library/Application Support/cura",
    "~/Library/Caches/Ultimaker B.V./Ultimaker-Cura",
    "~/Library/Logs/cura",
    "~/Library/Preferences/nl.ultimaker.cura.dmg.plist",
    "~/Library/Preferences/nl.ultimaker.cura.plist",
    "~/Library/Saved Application State/nl.ultimaker.cura.dmg.savedState",
  ]
end
