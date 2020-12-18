cask "vesta" do
  version "3.5.5"
  sha256 "f99c73dfaab535a2ec6bc4b72a908afe9ce727686622f7bb1b37f66b7e9e0d66"

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
