cask "weakauras-companion" do
  version "5.2.3"
  sha256 "b9e020bef941a1e714cd13702a28970fb1cb0a0bba18d0680e29b3316d1e442d"

  url "https://github.com/WeakAuras/WeakAuras-Companion/releases/download/v#{version}/WeakAuras-Companion-#{version}-mac-universal.dmg",
      verified: "github.com/WeakAuras/WeakAuras-Companion/"
  name "WeakAuras Companion"
  desc "Update your auras from Wago.io and creates regular backups of them"
  homepage "https://weakauras.wtf/"

  app "WeakAuras Companion.app"

  zap trash: [
    "~/Library/Application Support/weakauras-companion",
    "~/Library/Logs/weakauras-companion",
    "~/Library/Preferences/wtf.weakauras.companion.plist",
  ]
end
