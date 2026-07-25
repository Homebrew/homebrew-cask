cask "vcmi" do
  arch arm: "arm", intel: "intel"

  version "1.7.4"
  sha256 arm:   "cf6a142313265b4078e053d3c7c250d6136d46741f6dc51c3cbe0faff7f6ea03",
         intel: "d2e427df80ea10fa1e118125a93554fbae7302aec04e5e70a28d89e0cb13c480"

  on_arm do
    depends_on macos: :big_sur
  end
  on_intel do
    depends_on macos: :catalina
  end

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
