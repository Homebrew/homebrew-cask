cask "ultimaker-cura" do
  version "4.12.1"
  sha256 "61115c550c88afcedfa714da73503941a819c377e121cd91a515d3e182883ecb"

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
