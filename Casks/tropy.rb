cask "tropy" do
  version "1.8.1"
  sha256 "95ce861ab468f490cb9ca70810551847ef22d737563f48225b5c2cce5f06860c"

  # github.com/tropy/tropy/ was verified as official when first introduced to the cask
  url "https://github.com/tropy/tropy/releases/download/#{version}/tropy-#{version}.dmg"
  appcast "https://github.com/tropy/tropy/releases.atom"
  name "Tropy"
  desc "Research photo management"
  homepage "https://tropy.org/"

  app "Tropy.app"
end
