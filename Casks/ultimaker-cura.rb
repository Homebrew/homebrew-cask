cask "ultimaker-cura" do
  version "4.12.0"
  sha256 "b2e14e6c7068a3c149fb45f8d35d1cc20f6f6597246d3700f18d0cf6a0df7322"

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
