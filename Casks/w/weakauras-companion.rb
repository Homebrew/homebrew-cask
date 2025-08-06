cask "weakauras-companion" do
  version "5.2.10"
  sha256 "acd79515c9a9c66489a17025e79961532b601f6721d5593ea176ac9e2416c913"

  url "https://github.com/WeakAuras/WeakAuras-Companion/releases/download/v#{version}/WeakAuras-Companion-#{version}-mac-universal.dmg"
  name "WeakAuras Companion"
  desc "Update your auras from Wago.io and creates regular backups of them"
  homepage "https://github.com/WeakAuras/WeakAuras-Companion/"

  depends_on macos: ">= :big_sur"

  app "WeakAuras Companion.app"

  zap trash: [
    "~/Library/Application Support/weakauras-companion",
    "~/Library/Logs/weakauras-companion",
    "~/Library/Preferences/wtf.weakauras.companion.plist",
  ]
end
