cask "the-cheat" do
  version "1.2.5"
  sha256 "24ed774cc21adc2355077123d04c2657295a41183fd5555c41a2342063c3dedc"

  # chazmcgarvey.github.io/thecheat/ was verified as official when first introduced to the cask
  url "https://chazmcgarvey.github.io/thecheat/thecheat-#{version}.dmg"
  appcast "https://github.com/chazmcgarvey/thecheat/releases.atom"
  name "The Cheat"
  desc "Game trainer"
  homepage "https://github.com/chazmcgarvey/thecheat"

  app "The Cheat.app"
end
