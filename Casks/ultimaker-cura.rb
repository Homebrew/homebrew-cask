cask "ultimaker-cura" do
  version "4.10.0"
  sha256 "820eb00d9f74de4f0f47555223ff08bb09ee6b6fe21d146112e7facbf32601c7"

  url "https://github.com/Ultimaker/Cura/releases/download/#{version}/Ultimaker_Cura-#{version}-Darwin.dmg",
      verified: "https://github.com/Ultimaker/Cura"
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
