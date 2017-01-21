cask 'the-cheat' do
  version '1.2.5'
  sha256 '24ed774cc21adc2355077123d04c2657295a41183fd5555c41a2342063c3dedc'

  url "https://chazmcgarvey.github.com/thecheat/thecheat-#{version}.dmg"
  appcast 'https://github.com/chazmcgarvey/thecheat/releases.atom',
          checkpoint: 'e38cb81d6d520a74e3b1e4271faa1d469020dbf76928937adb831cf6aae71796'
  name 'The Cheat'
  homepage 'https://github.com/chazmcgarvey/thecheat'

  app 'The Cheat.app'
end
