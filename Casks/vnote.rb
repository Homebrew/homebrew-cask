cask 'vnote' do
  version '2.0'
  sha256 'bba9fffe90e6b9ac2f2a1e9ce90e7ec4f6671511d6ae48ea990c1e7ef4a5d6f1'

  # github.com/tamlok/vnote was verified as official when first introduced to the cask
  url "https://github.com/tamlok/vnote/releases/download/v#{version}/VNote-#{version}-x64.dmg"
  appcast 'https://github.com/tamlok/vnote/releases.atom'
  name 'VNote'
  homepage 'https://tamlok.github.io/vnote/'

  app 'VNote.app'
end
