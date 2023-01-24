cask "ultimaker-cura" do
  version "5.2.2"
  sha256 "bff40472d470a40d411ee53c0cc68d353c1b84d37fd8162724e56477dc22822d"

  url "https://github.com/Ultimaker/Cura/releases/download/#{version}/Ultimaker-Cura-#{version}-mac.dmg",
      verified: "github.com/Ultimaker/Cura/"
  name "Ultimaker Cura"
  name "Cura"
  desc "3D printer and slicing GUI"
  homepage "https://ultimaker.com/software/ultimaker-cura"

  livecheck do
    url :url
    strategy :github_latest
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
