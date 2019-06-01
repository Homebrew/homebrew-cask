cask 'vnote' do
  version '2.6'
  sha256 '8c101c0af9d002628fc2b2d3684c6f89c11f512c99f98d8662fc947d3b5f2204'

  # github.com/tamlok/vnote was verified as official when first introduced to the cask
  url "https://github.com/tamlok/vnote/releases/download/v#{version}/VNote-#{version}-x64.dmg"
  appcast 'https://github.com/tamlok/vnote/releases.atom'
  name 'VNote'
  homepage 'https://tamlok.github.io/vnote/'

  app 'VNote.app'
end
