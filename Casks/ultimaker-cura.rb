cask "ultimaker-cura" do
  version "5.3.1"
  sha256 "034f500c53ecb798866614012d1d156b126c73bef9c49c7873b131bd9ab50666"

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
