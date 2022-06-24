cask "weakauras-companion" do
  version "4.0.3"
  sha256 "7f8f1c8cdaf309acd762cf49c38578bd18efecd965043f8af9e64cfde3acf84d"

  url "https://github.com/WeakAuras/WeakAuras-Companion/releases/download/v#{version}/WeakAuras-Companion-#{version}-mac-universal.dmg",
      verified: "github.com/WeakAuras/WeakAuras-Companion/"
  name "WeakAuras Companion"
  desc "Update your auras from Wago.io and creates regular backups of them"
  homepage "https://weakauras.wtf/"

  app "WeakAuras Companion.app"
end
