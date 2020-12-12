cask "tusk" do
  version "0.23.0"
  sha256 "859bf10e072e2446adeac86e4699e64b8f869f7b6738d07f5f54a1e112245238"

  # github.com/klaussinani/tusk/ was verified as official when first introduced to the cask
  url "https://github.com/klaussinani/tusk/releases/download/v#{version}/Tusk-#{version}.dmg"
  appcast "https://github.com/klaussinani/tusk/releases.atom"
  name "Tusk"
  desc "Refined Evernote desktop app"
  homepage "https://klaussinani.github.io/tusk/"

  app "Tusk.app"

  zap trash: [
    "~/.tusk.json",
    "~/Library/Application Support/Tusk",
    "~/Library/Preferences/com.electron.tusk.plist",
    "~/Library/Preferences/com.electron.tusk.helper.plist",
    "~/Library/Saved Application State/com.electron.tusk.savedState",
  ]
end
