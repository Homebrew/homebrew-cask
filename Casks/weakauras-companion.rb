cask "weakauras-companion" do
  version "3.3.3"

  if Hardware::CPU.intel?
    sha256 "0a69f799436bedd5055a60cb454a6dd1a87567bd304ad6fa5550e50d3321368b"

    url "https://github.com/WeakAuras/WeakAuras-Companion/releases/download/v#{version}/WeakAuras-Companion-#{version}-mac-x64.dmg",
        verified: "github.com/WeakAuras/WeakAuras-Companion/"
  else
    sha256 "33235d48202c14aacd39dbad6ad2e71dc479bd1d2b666805d30a5a2cde1a5f58"

    url "https://github.com/WeakAuras/WeakAuras-Companion/releases/download/v#{version}/WeakAuras-Companion-#{version}-mac-arm64.dmg",
        verified: "github.com/WeakAuras/WeakAuras-Companion/"
  end

  name "WeakAuras Companion"
  desc "Update your auras from Wago.io and creates regular backups of them"
  homepage "https://weakauras.wtf/"

  app "WeakAuras Companion.app"
end
