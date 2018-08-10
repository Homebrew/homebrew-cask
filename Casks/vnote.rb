cask 'vnote' do
  version '1.21'
  sha256 'df1bf3fe863230e5648197ce82d8ee8df382a1c386a9ef5028bc58c15112948d'

  # github.com/tamlok/vnote was verified as official when first introduced to the cask
  url "https://github.com/tamlok/vnote/releases/download/v#{version}/VNote-#{version}-x64.dmg"
  appcast 'https://github.com/tamlok/vnote/releases.atom'
  name 'VNote'
  homepage 'https://tamlok.github.io/vnote/'

  app 'VNote.app'
end
