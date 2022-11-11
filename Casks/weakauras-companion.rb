cask "weakauras-companion" do
  version "4.1.0"
  sha256 "123dd57277e34f80decf7dab95b6df8fb4901b32edbdabd83f05cd3a59da7b2a"

  url "https://github.com/WeakAuras/WeakAuras-Companion/releases/download/v#{version}/WeakAuras-Companion-#{version}-mac-universal.dmg",
      verified: "github.com/WeakAuras/WeakAuras-Companion/"
  name "WeakAuras Companion"
  desc "Update your auras from Wago.io and creates regular backups of them"
  homepage "https://weakauras.wtf/"

  app "WeakAuras Companion.app"
end
