cask "vesta" do
  version "3.5.3"
  sha256 "a3b3fa081a7bfa752da5b82841e81d12363d06840dc805e1fdeb4c55aa21c584"

  url "https://jp-minerals.org/vesta/archives/#{version}/VESTA.dmg"
  name "VESTA"
  homepage "https://jp-minerals.org/vesta/en/"

  app "VESTA/VESTA.app"

  zap trash: [
    "~/Library/Application Support/VESTA",
    "~/LibraryPreferences/VESTA.plist",
  ]
end
