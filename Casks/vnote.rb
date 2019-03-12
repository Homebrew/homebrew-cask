cask 'vnote' do
  version '2.3'
  sha256 '88ed41192a0cf8618e3c518d3c40d19dd1e5a6929cbeb61d9f3e44aab76296e1'

  # github.com/tamlok/vnote was verified as official when first introduced to the cask
  url "https://github.com/tamlok/vnote/releases/download/v#{version}/VNote-#{version}-x64.dmg"
  appcast 'https://github.com/tamlok/vnote/releases.atom'
  name 'VNote'
  homepage 'https://tamlok.github.io/vnote/'

  app 'VNote.app'
end
