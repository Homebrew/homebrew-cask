cask "vcmi" do
  arch arm: "arm", intel: "intel"

  version "1.7.3"
  sha256 arm:   "0f74dbd3719734f356118f1803159159edf46dc2ecedfbf42bdc18599ff5b5d7",
         intel: "e6a7c6ef8c94617b39e492c5dbb84335553c031918b3f093f2e2c631d8f06a02"

  on_arm do
    depends_on macos: ">= :big_sur"
  end
  on_intel do
    depends_on macos: ">= :catalina"
  end

  url "https://github.com/vcmi/vcmi/releases/download/#{version}/VCMI-macOS-#{arch}.dmg",
      verified: "github.com/vcmi/vcmi/"
  name "VCMI"
  desc "Open-source engine for Heroes of Might & Magic III"
  homepage "https://vcmi.eu/"

  app "VCMI.app"

  zap trash: [
    "~/Library/Application Support/vcmi",
    "~/Library/Logs/vcmi",
    "~/Library/Preferences/eu.vcmi.vcmi.plist",
    "~/Library/Saved Application State/eu.vcmi.vcmi.savedState",
  ]
end
