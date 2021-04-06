cask "ultimaker-cura" do
  version "4.8.0"
  sha256 "b065b11bf6c9cc98e179de71120de6ed9f12e1c831f4a38e7ca333bffc203041"

  url "https://download.ultimaker.com/cura/Ultimaker_Cura-#{version}-Darwin.dmg"
  name "Ultimaker Cura"
  name "Cura"
  desc "3D printer and slicing GUI"
  homepage "https://ultimaker.com/en/products/cura-software"

  livecheck do
    url "https://github.com/Ultimaker/Cura"
    strategy :github_latest
  end

  app "Ultimaker Cura.app"

  uninstall quit: "nl.ultimaker.cura"

  zap trash: [
    "~/.cura",
    "~/Library/Application Support/cura",
    "~/Library/Preferences/nl.ultimaker.cura.Ultimaker Cura.plist",
    "~/Library/Saved Application State/nl.ultimaker.cura.savedState",
  ]
end
