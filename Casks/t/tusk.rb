cask "tusk" do
  version "0.23.0"
  sha256 "859bf10e072e2446adeac86e4699e64b8f869f7b6738d07f5f54a1e112245238"

  url "https://github.com/klaussinani/tusk/releases/download/v#{version}/Tusk-#{version}.dmg"
  name "Tusk"
  desc "Refined Evernote desktop app"
  homepage "https://github.com/klaudiosinani/tusk"

  # https://github.com/klaudiosinani/tusk/issues/381
  disable! date: "2024-09-30", because: :unmaintained

  app "Tusk.app"

  zap trash: [
    "~/.tusk.json",
    "~/Library/Application Support/Tusk",
    "~/Library/Preferences/com.electron.tusk.helper.plist",
    "~/Library/Preferences/com.electron.tusk.plist",
    "~/Library/Saved Application State/com.electron.tusk.savedState",
  ]
end
