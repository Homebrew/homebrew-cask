cask "weakauras-companion" do
  version "3.2.2"

  if Hardware::CPU.intel?
    sha256 "c95d8e563f92ba1e2445c17bc1c6e76f7297694851bd656fff80916bdd50be7a"

    url "https://github.com/WeakAuras/WeakAuras-Companion/releases/download/v#{version}/WeakAuras-Companion-#{version}-mac.dmg",
        verified: "github.com/WeakAuras/WeakAuras-Companion/"
  else
    sha256 "6c33a3b9fafee66811310909d86f0972b3c81d2b9a3027c8e95fa0c773846221"

    url "https://github.com/WeakAuras/WeakAuras-Companion/releases/download/v#{version}/WeakAuras-Companion-#{version}-mac-arm64.dmg",
        verified: "github.com/WeakAuras/WeakAuras-Companion/"
  end

  name "WeakAuras Companion"
  desc "Update your auras from Wago.io and creates regular backups of them"
  homepage "https://weakauras.wtf/"

  app "WeakAuras Companion.app"
end
