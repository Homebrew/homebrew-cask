cask :v1 => 'the-cheat' do
  version '1.2.5'
  sha256 '24ed774cc21adc2355077123d04c2657295a41183fd5555c41a2342063c3dedc'

  url "ftp://ftp.dogcows.com/pub/mac/thecheat/thecheat-#{version}.dmg"
  homepage 'http://the-cheat.en.softonic.com/mac'
  license :gratis

  app 'The Cheat.app'
end
