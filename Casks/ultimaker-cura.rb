cask "ultimaker-cura" do
  version "4.9.0"
  sha256 "437d22769f5e47095c3048ff378f4f56bd5bafb701c2bcc192a05e412d4c609e"

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
