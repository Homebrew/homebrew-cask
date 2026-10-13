cask "wowup-cf" do
  arch arm: "-arm64"

  version "2.24.0"
  sha256 arm:   "a0b155d74c3bd05de72e21271c37635921a2fb8f1470f24dd12bab55d460fe5a",
         intel: "baf8b7e867e560116b8e66831ec41c7a39555261071c01648cb8cb8f8a15aee9"

  url "https://github.com/WowUp/WowUp.CF/releases/download/v#{version}/WowUp-CF-#{version}#{arch}.dmg"
  name "WowUp-CF"
  desc "World of Warcraft addon manager"
  homepage "https://wowup.io/"

  auto_updates true
  depends_on macos: :monterey

  app "WowUp-CF.app"

  uninstall quit: "io.wowupcf.jliddev"

  zap trash: [
    "~/Library/Application Support/WowUp-CF",
    "~/Library/Logs/WowUp-CF",
    "~/Library/Preferences/io.wowupcf.jliddev.plist",
    "~/Library/Saved Application State/io.wowupcf.jliddev.savedState",
  ]
end
