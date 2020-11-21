cask "weakauras-companion" do
  version "3.1.0"
  sha256 "69b1e5ce1716dfaee05a8f9c0fbc1521ab6aa42bab7db412bd46cf8af1d8a32b"

  # github.com/WeakAuras/WeakAuras-Companion was verified as official when first introduced to the cask
  url "https://github.com/WeakAuras/WeakAuras-Companion/releases/download/v#{version}/WeakAuras-Companion-#{version}.dmg"
  appcast "https://github.com/WeakAuras/WeakAuras-Companion/releases.atom"
  name "WeakAuras Companion"
  homepage "https://weakauras.wtf/"

  app "WeakAuras Companion.app"
end
