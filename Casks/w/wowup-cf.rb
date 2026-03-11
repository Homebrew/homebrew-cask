cask "wowup-cf" do
  arch arm: "-arm64"

  version "2.22.0"
  sha256 arm:   "efe7d96b2666be9ad7797794799bc5f28dea321786d0001b870598eb6aac2bb7",
         intel: "6adc00b4247fcc63a7497aaa917c3e7ee656747162b3cd48fd198a0583f04669"

  url "https://github.com/WowUp/WowUp.CF/releases/download/v#{version}/WowUp-CF-#{version}#{arch}.dmg",
      verified: "github.com/WowUp/WowUp.CF/"
  name "WowUp-CF"
  desc "World of Warcraft addon manager"
  homepage "https://wowup.io/"

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "WowUp-CF.app"

  uninstall quit: "io.wowupcf.jliddev"

  zap trash: [
    "~/Library/Application Support/WowUp-CF",
    "~/Library/Logs/WowUp-CF",
    "~/Library/Preferences/io.wowupcf.jliddev.plist",
    "~/Library/Saved Application State/io.wowupcf.jliddev.savedState",
  ]
end
