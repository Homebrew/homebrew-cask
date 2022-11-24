cask "weakauras-companion" do
  version "4.1.3"
  sha256 "fa7ed775727e4f2dfe41f50a0c7df6920a12360a6d72ba247e0e1bb9a9752371"

  url "https://github.com/WeakAuras/WeakAuras-Companion/releases/download/v#{version}/WeakAuras-Companion-#{version}-mac-universal.dmg",
      verified: "github.com/WeakAuras/WeakAuras-Companion/"
  name "WeakAuras Companion"
  desc "Update your auras from Wago.io and creates regular backups of them"
  homepage "https://weakauras.wtf/"

  app "WeakAuras Companion.app"
end
