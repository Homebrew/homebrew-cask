cask "weakauras-companion" do
  version "3.0.5"
  sha256 "27ef175820e2b90d30a07444a69d65cd068b99a0f2a84fbefb27bbdfe8f637a9"

  # github.com/WeakAuras/WeakAuras-Companion was verified as official when first introduced to the cask
  url "https://github.com/WeakAuras/WeakAuras-Companion/releases/download/v#{version}/WeakAuras-Companion-#{version}.dmg"
  appcast "https://github.com/WeakAuras/WeakAuras-Companion/releases.atom"
  name "WeakAuras Companion"
  homepage "https://weakauras.wtf/"

  app "WeakAuras Companion.app"
end
