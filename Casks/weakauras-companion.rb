cask "weakauras-companion" do
  version "4.0.8"
  sha256 "4bb38eab314902c879223f58f679ff40a631ea0d8aa04f0a48bfc1037b2d7279"

  url "https://github.com/WeakAuras/WeakAuras-Companion/releases/download/v#{version}/WeakAuras-Companion-#{version}-mac-universal.dmg",
      verified: "github.com/WeakAuras/WeakAuras-Companion/"
  name "WeakAuras Companion"
  desc "Update your auras from Wago.io and creates regular backups of them"
  homepage "https://weakauras.wtf/"

  app "WeakAuras Companion.app"
end
