cask "tropy" do
  version "1.8.0"
  sha256 "300efb2421d8595afc1e85bd74d370866e68affdf02f498b2b5ad8611fc93e16"

  # github.com/tropy/tropy/ was verified as official when first introduced to the cask
  url "https://github.com/tropy/tropy/releases/download/#{version}/tropy-#{version}.dmg"
  appcast "https://github.com/tropy/tropy/releases.atom"
  name "Tropy"
  desc "Research photo management"
  homepage "https://tropy.org/"

  app "Tropy.app"
end
