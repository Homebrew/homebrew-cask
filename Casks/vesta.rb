cask "vesta" do
  version "3.5.6"
  sha256 "dc3920140c9860137b4094b3cb638a5553fcc23db99bb07d73e8da9806339949"

  url "https://jp-minerals.org/vesta/archives/#{version}/VESTA.dmg"
  appcast "https://jp-minerals.org/vesta/en/changes.html"
  name "VESTA"
  desc "Visualization for electronic and structural analysis"
  homepage "https://jp-minerals.org/vesta/en/"

  app "VESTA/VESTA.app"

  zap trash: [
    "~/Library/Application Support/VESTA",
    "~/LibraryPreferences/VESTA.plist",
  ]
end
