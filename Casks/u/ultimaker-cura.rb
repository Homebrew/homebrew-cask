cask "ultimaker-cura" do
  arch arm: "ARM64", intel: "X64"

  on_arm do
    version "5.8.1,5.8.1"
    sha256 "208c84df8a7d2f0e8ae5caba482b94f753f20a08fe48a0bdcb182bf612042cf1"
  end
  on_intel do
    version "5.8.1,5.8.1"
    sha256 "cd01ea4fedddba374f8b11d8247f4a362b4a3e20143241cec18fce3139276f4a"
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
