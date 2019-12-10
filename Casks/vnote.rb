cask 'vnote' do
  version '2.8'
  sha256 '871bf13f9269f3ea547d50c76a4e2e9c660322ea0992e75cc37998cd286a9d1b'

  # github.com/tamlok/vnote was verified as official when first introduced to the cask
  url "https://github.com/tamlok/vnote/releases/download/v#{version}/VNote-#{version}-x64.dmg"
  appcast 'https://github.com/tamlok/vnote/releases.atom'
  name 'VNote'
  homepage 'https://tamlok.github.io/vnote/'

  app 'VNote.app'
end
