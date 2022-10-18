cask "ultimaker-cura" do
  version "5.1.1"
  sha256 "4642777388ab3f45485a7e3a0e302c7741f14c52eecdd954cb44c3523de47e2e"

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

  app "Ultimaker-Cura.app"

  uninstall quit: "nl.ultimaker.cura.dmg"

  zap trash: [
    "~/.cura",
    "~/Library/Application Support/cura",
    "~/Library/Preferences/nl.ultimaker.cura.dmg.plist",
    "~/Library/Saved Application State/nl.ultimaker.cura.dmg.savedState",
  ]
end
