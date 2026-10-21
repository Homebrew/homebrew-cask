cask "wowup-cf" do
  arch arm: "-arm64"

  version "2.24.1"
  sha256 arm:   "c085b67648d0100acb61d16df4c1828aaee7fc9f001dde3fcb01f8c2f953ba12",
         intel: "cc12cb27727d4e459bae0080af8358e3992d70bd493e3ad0c5e55297019744aa"

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
