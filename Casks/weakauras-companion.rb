cask "weakauras-companion" do
  version "4.0.4"
  sha256 "a9d573d6732f5140b562f927c8eafe2bd71e5051aeb1dc29dfc8b2b5b3cf072b"

  url "https://github.com/WeakAuras/WeakAuras-Companion/releases/download/v#{version}/WeakAuras-Companion-#{version}-mac-universal.dmg",
      verified: "github.com/WeakAuras/WeakAuras-Companion/"
  name "WeakAuras Companion"
  desc "Update your auras from Wago.io and creates regular backups of them"
  homepage "https://weakauras.wtf/"

  app "WeakAuras Companion.app"
end
