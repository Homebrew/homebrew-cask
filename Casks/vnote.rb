cask 'vnote' do
  version '1.22'
  sha256 '09fc5de5cfe14e7bbf66e8918a60fcc4e0a5ff0452e16c1d1d18abf7f1931d8a'

  # github.com/tamlok/vnote was verified as official when first introduced to the cask
  url "https://github.com/tamlok/vnote/releases/download/v#{version}/VNote-#{version}-x64.dmg"
  appcast 'https://github.com/tamlok/vnote/releases.atom'
  name 'VNote'
  homepage 'https://tamlok.github.io/vnote/'

  app 'VNote.app'
end
