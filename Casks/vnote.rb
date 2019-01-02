cask 'vnote' do
  version '2.2'
  sha256 '6ac190fe8b49cb3a35084e0eb23d56e47e9dafb286fa8de71e418768829a1749'

  # github.com/tamlok/vnote was verified as official when first introduced to the cask
  url "https://github.com/tamlok/vnote/releases/download/v#{version}/VNote-#{version}-x64.dmg"
  appcast 'https://github.com/tamlok/vnote/releases.atom'
  name 'VNote'
  homepage 'https://tamlok.github.io/vnote/'

  app 'VNote.app'
end
