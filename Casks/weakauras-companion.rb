cask "weakauras-companion" do
  version "3.1.1"
  sha256 "200e82ee46305625b7ce904be8536f5f74755a838f695ed5fef0f06cfe6d2c12"

  # github.com/WeakAuras/WeakAuras-Companion was verified as official when first introduced to the cask
  url "https://github.com/WeakAuras/WeakAuras-Companion/releases/download/v#{version}/WeakAuras-Companion-#{version}.dmg"
  appcast "https://github.com/WeakAuras/WeakAuras-Companion/releases.atom"
  name "WeakAuras Companion"
  homepage "https://weakauras.wtf/"

  app "WeakAuras Companion.app"
end
