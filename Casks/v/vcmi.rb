cask "vcmi" do
  arch arm: "arm", intel: "intel"

  version "1.7.5"
  sha256 arm:   "b56b55d0671ae604effb12d0394b74a552f203426cafa165f82488505fb465e3",
         intel: "613f7e9c2d515e10ff1eae77bab236308cf5bd08b68ff3d1b65cb7a16cde0ef6"

  url "https://github.com/vcmi/vcmi/releases/download/#{version}/VCMI-macOS-#{arch}.dmg",
      verified: "github.com/vcmi/vcmi/"
  name "VCMI"
  desc "Open-source engine for Heroes of Might & Magic III"
  homepage "https://vcmi.eu/"

  depends_on :macos

  app "VCMI.app"

  zap trash: [
    "~/Library/Application Support/vcmi",
    "~/Library/Logs/vcmi",
    "~/Library/Preferences/eu.vcmi.vcmi.plist",
    "~/Library/Saved Application State/eu.vcmi.vcmi.savedState",
  ]
end
