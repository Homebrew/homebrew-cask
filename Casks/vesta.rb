cask "vesta" do
  version "3.5.4"
  sha256 "bfdcbd95f9377ddc75944a03f0301846ade6a06d85ce9731ed5608092b6e99c7"

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
