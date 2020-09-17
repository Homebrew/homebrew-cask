cask "weakauras-companion" do
  version "3.0.4"
  sha256 "6df3e7c98ad86c80fdd1b6638e87e5df28edcc8078d4aa41f0411129d77e18bb"

  # github.com/WeakAuras/WeakAuras-Companion was verified as official when first introduced to the cask
  url "https://github.com/WeakAuras/WeakAuras-Companion/releases/download/v#{version}/WeakAuras-Companion-#{version}.dmg"
  appcast "https://github.com/WeakAuras/WeakAuras-Companion/releases.atom"
  name "WeakAuras Companion"
  homepage "https://weakauras.wtf/"

  app "WeakAuras Companion.app"
end
