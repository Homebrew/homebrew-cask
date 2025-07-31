cask "ultimaker-cura" do
  arch arm: "ARM64", intel: "X64"

  version "5.10.2"
  sha256 arm:   "276ab80e9301b12638da04771d08dde5a5dfefff950524171274cb2223a984c1",
         intel: "adee116986bc44f81f822dec7bc13de901c187a47af1ae8c72f5bbfb4a27cb93"

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

  depends_on macos: ">= :high_sierra"

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
