cask "ultimaker-cura" do
  arch arm: "ARM64", intel: "X64"

  version "5.13.0"
  sha256 arm:   "1483806486a19728bc0f363f847d75be3f179ea43c7f074bfc327f5b5c6e05ad",
         intel: "341ea41e0bc7a75361823cf9720c1d1ded9a8b2f3c4d791de2266f8d647f5d85"

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

  depends_on macos: :big_sur

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
