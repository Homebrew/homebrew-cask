cask "vesta" do
  version "3.5.7"
  sha256 "5e7110f4c09a426fd6abc0db2b6ef1fc8288e8d4ffa393a22338d93c10d792ef"

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
