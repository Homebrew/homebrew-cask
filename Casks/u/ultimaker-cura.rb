cask "ultimaker-cura" do
  arch arm: "ARM64", intel: "X64"

  on_arm do
    version "5.9.0"
    sha256 "55ba3809a33f8e882f7a2fe608994190bcfbec6d10e53345ee2f2fabd02d80eb"
  end
  on_intel do
    version "5.9.0"
    sha256 "beeb3a32381d48fea8d5c27b737acf008b44363b7c75e16b9bed98379dc9de84"
  end

  url "https://github.com/Ultimaker/Cura/releases/download/#{version.csv.second || version.csv.first}/UltiMaker-Cura-#{version.csv.first}-macos-#{arch}.dmg",
      verified: "github.com/Ultimaker/Cura/"
  name "UltiMaker Cura"
  name "Cura"
  desc "3D printer and slicing GUI"
  homepage "https://ultimaker.com/software/ultimaker-cura"

  livecheck do
    url :url
    regex(/^(\d+(?:\.\d+)+)/i)
    strategy :github_latest do |json, regex|
      tag = json["tag_name"]&.sub(/^\D+/, "")
      match = tag&.match(regex)
      next if match.blank?

      (match[1] == tag) ? match[1] : "#{match[1]},#{tag}"
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
