cask 'the-cheat' do
  version '1.2.5'
  sha256 '24ed774cc21adc2355077123d04c2657295a41183fd5555c41a2342063c3dedc'

  url "https://chazmcgarvey.github.com/thecheat/thecheat-#{version}.dmg"
  appcast 'https://github.com/chazmcgarvey/thecheat/releases.atom',
          checkpoint: '8ce8f326788585be0e5ddabb5441f8fb70a58bd0dc1bdea905141c7d3d98e4f9'
  name 'The Cheat'
  homepage 'https://github.com/chazmcgarvey/thecheat'

  app 'The Cheat.app'
end
