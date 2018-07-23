cask 'vnote' do
  version '1.20'
  sha256 '54f05e3bb69c07a87cbb1de9279d01ebfa3bac1f5006120f5043a581a9e5070d'

  # github.com/tamlok/vnote was verified as official when first introduced to the cask
  url "https://github.com/tamlok/vnote/releases/download/v#{version}/VNote-#{version}-x64.dmg"
  appcast 'https://github.com/tamlok/vnote/releases.atom'
  name 'VNote'
  homepage 'https://tamlok.github.io/vnote/'

  app 'VNote.app'
end
