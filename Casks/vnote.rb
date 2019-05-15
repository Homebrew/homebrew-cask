cask 'vnote' do
  version '2.5'
  sha256 'f3fa4e9d34dadda2e88a22ed12e25835ed92fa027297e87de9c18cbbf5ca5480'

  # github.com/tamlok/vnote was verified as official when first introduced to the cask
  url "https://github.com/tamlok/vnote/releases/download/v#{version}/VNote-#{version}-x64.dmg"
  appcast 'https://github.com/tamlok/vnote/releases.atom'
  name 'VNote'
  homepage 'https://tamlok.github.io/vnote/'

  app 'VNote.app'
end
