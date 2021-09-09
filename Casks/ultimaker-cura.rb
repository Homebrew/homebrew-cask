cask "ultimaker-cura" do
  version "4.11.0"
  sha256 "301b709643e3816c71445af1263855ba8fa45d4c583cebcf039be2f9150c7c89"

  url "https://github.com/Ultimaker/Cura/releases/download/#{version}/Ultimaker_Cura-#{version}.dmg",
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
