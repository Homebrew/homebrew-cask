cask "ultimaker-cura" do
  version "4.9.1"
  sha256 "c454c808ecd85f082e6e28d15e787b0f0550a70bbe4634c5274c1c156d766fbb"

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
