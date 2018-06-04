cask 'vnote' do
  version '1.17'
  sha256 '74fe2a0515e29c8c96979bcfa36664e84d48c8900be726680dc9e0dd1a7dc888'

  # github.com/tamlok/vnote was verified as official when first introduced to the cask
  url "https://github.com/tamlok/vnote/releases/download/v#{version}/VNote-#{version}-x64.dmg"
  appcast 'https://github.com/tamlok/vnote/releases.atom',
          checkpoint: '72c578ac4156edc9ebdd18abe939a9b7372f04c9641bf9785bdd3a11841fd4a4'
  name 'VNote'
  homepage 'https://tamlok.github.io/vnote/'

  app 'VNote.app'
end
