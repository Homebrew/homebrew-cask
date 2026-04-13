cask "ultimaker-cura" do
  arch arm: "ARM64", intel: "X64"

  version "5.12.1"
  sha256 arm:   "cea25e09c4210a1cedaedd7f9a109c3dc807e6c26fb0a79c29e921bb71df4116",
         intel: "63ed270b6493d9d3cd07aa993086140b8d11b06360093d85c1b953a139481087"

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

  depends_on macos: ">= :big_sur"

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
