cask "wowup-cf" do
  arch arm: "-arm64"

  version "2.25.5"
  sha256 arm:   "b0a0a809c0e90440c87cbb45edc54d3ff5068d11ebae83dcccc849cc1aea3b30",
         intel: "a67ec4d53499e1a276d5f041a863ab73bb2883a8ce2b1550a8f671602ba5b1f9"

  url "https://github.com/WowUp/WowUp.CF/releases/download/v#{version}/WowUp-CF-#{version}#{arch}.dmg"
  name "WowUp-CF"
  desc "World of Warcraft addon manager"
  homepage "https://wowup.io/"

  auto_updates true
  depends_on macos: :monterey

  app "WowUp-CF.app"

  uninstall quit: "io.wowupcf.jliddev"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.wowupcf.jliddev.sfl*",
    "~/Library/Application Support/WowUp-CF",
    "~/Library/Logs/WowUp-CF",
    "~/Library/Preferences/io.wowupcf.jliddev.plist",
    "~/Library/Saved Application State/io.wowupcf.jliddev.savedState",
  ]
end
