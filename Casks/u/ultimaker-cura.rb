cask "ultimaker-cura" do
  arch arm: "ARM64", intel: "X64"

  on_arm do
    version "5.8.0,5.8.0"
    sha256 "c56d23dc6f218057d0bf41e333c549bf3069bce40eb22d0d3d4d987d7e33334c"
  end
  on_intel do
    version "5.8.0,5.8.0"
    sha256 "547c99b042565be1149044520de17fd68f29984e5254776ab7cbd89abb156995"
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
