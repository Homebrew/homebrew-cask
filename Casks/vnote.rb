cask 'vnote' do
  version '2.7'
  sha256 'ad6ce63e5b87e9915e4c28c1d6628567b7391b24ff38a6ef67618d5224c603c4'

  # github.com/tamlok/vnote was verified as official when first introduced to the cask
  url "https://github.com/tamlok/vnote/releases/download/v#{version}/VNote-#{version}-x64.dmg"
  appcast 'https://github.com/tamlok/vnote/releases.atom'
  name 'VNote'
  homepage 'https://tamlok.github.io/vnote/'

  app 'VNote.app'
end
