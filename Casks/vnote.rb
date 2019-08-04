cask 'vnote' do
  version '2.7.2'
  sha256 '08f9794591b30e61a1a55569ce324306d10cc8ba9ebf68080edc33f511ab487c'

  # github.com/tamlok/vnote was verified as official when first introduced to the cask
  url "https://github.com/tamlok/vnote/releases/download/v#{version}/VNote-#{version}-x64.dmg"
  appcast 'https://github.com/tamlok/vnote/releases.atom'
  name 'VNote'
  homepage 'https://tamlok.github.io/vnote/'

  app 'VNote.app'
end
