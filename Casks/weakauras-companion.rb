cask "weakauras-companion" do
  version "4.0.9"
  sha256 "e241e3ab8bbd645ec9a69734a3ef64f4ac484d066c8e3be263b4ec9a8cde2739"

  url "https://github.com/WeakAuras/WeakAuras-Companion/releases/download/v#{version}/WeakAuras-Companion-#{version}-mac-universal.dmg",
      verified: "github.com/WeakAuras/WeakAuras-Companion/"
  name "WeakAuras Companion"
  desc "Update your auras from Wago.io and creates regular backups of them"
  homepage "https://weakauras.wtf/"

  app "WeakAuras Companion.app"
end
