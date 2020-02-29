cask 'vnote' do
  version '2.8.2'
  sha256 '043ac56b11a04c7614e1adf43235035925e2aa3735524e884ace6bb14192b705'

  # github.com/tamlok/vnote was verified as official when first introduced to the cask
  url "https://github.com/tamlok/vnote/releases/download/v#{version}/VNote-#{version}-x64.dmg"
  appcast 'https://github.com/tamlok/vnote/releases.atom'
  name 'VNote'
  homepage 'https://tamlok.github.io/vnote/'

  app 'VNote.app'
end
