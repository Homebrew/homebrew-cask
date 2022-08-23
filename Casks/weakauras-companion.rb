cask "weakauras-companion" do
  version "4.0.5"
  sha256 "d3f867e6e5b21df71c10fe08d23de695e8bc507c63cda84e8d9c72d1852345b1"

  url "https://github.com/WeakAuras/WeakAuras-Companion/releases/download/v#{version}/WeakAuras-Companion-#{version}-mac-universal.dmg",
      verified: "github.com/WeakAuras/WeakAuras-Companion/"
  name "WeakAuras Companion"
  desc "Update your auras from Wago.io and creates regular backups of them"
  homepage "https://weakauras.wtf/"

  app "WeakAuras Companion.app"
end
