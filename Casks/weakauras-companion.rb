cask "weakauras-companion" do
  version "3.0.6"
  sha256 "02219c21542109135846e2a573c4495eaede52e23e832d6c8ca1a65af9e32111"

  # github.com/WeakAuras/WeakAuras-Companion was verified as official when first introduced to the cask
  url "https://github.com/WeakAuras/WeakAuras-Companion/releases/download/v#{version}/WeakAuras-Companion-#{version}.dmg"
  appcast "https://github.com/WeakAuras/WeakAuras-Companion/releases.atom"
  name "WeakAuras Companion"
  homepage "https://weakauras.wtf/"

  app "WeakAuras Companion.app"
end
