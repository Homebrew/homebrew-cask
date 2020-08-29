cask "ultimaker-cura" do
  version "4.7.0"
  sha256 "d4831e33d2c6a7cf51e12177a1111778441d12e20bac261d3e62fca9ffd10be1"

  url "https://download.ultimaker.com/cura/Ultimaker_Cura-#{version}-Darwin.dmg"
  appcast "https://github.com/Ultimaker/Cura/releases.atom"
  name "Ultimaker Cura"
  name "Cura"
  homepage "https://ultimaker.com/en/products/cura-software"

  app "Ultimaker Cura.app"

  uninstall quit: "nl.ultimaker.cura"

  zap trash: [
    "~/.cura",
    "~/Library/Application Support/cura",
    "~/Library/Preferences/nl.ultimaker.cura.Ultimaker Cura.plist",
    "~/Library/Saved Application State/nl.ultimaker.cura.savedState",
  ]
end
