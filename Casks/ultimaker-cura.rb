cask "ultimaker-cura" do
  version "4.13.0"
  sha256 "32a7dec16f0463811334c829b233fefc32ef41ba0463c42410fed0445f8478aa"

  url "https://github.com/Ultimaker/Cura/releases/download/#{version}/Ultimaker_Cura-#{version}-Darwin.dmg",
      verified: "github.com/Ultimaker/Cura/"
  name "Ultimaker Cura"
  name "Cura"
  desc "3D printer and slicing GUI"
  homepage "https://ultimaker.com/software/ultimaker-cura"

  livecheck do
    url :url
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
