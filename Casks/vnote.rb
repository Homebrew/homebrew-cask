cask 'vnote' do
  version '2.9.1'
  sha256 '7611fca118e2b5894b1530ae049db9ede91ebbabdd6fc5f135cb61d724f8f12d'

  # github.com/tamlok/vnote/ was verified as official when first introduced to the cask
  url "https://github.com/tamlok/vnote/releases/download/v#{version}/VNote-#{version}-x64.dmg"
  appcast 'https://github.com/tamlok/vnote/releases.atom'
  name 'VNote'
  homepage 'https://tamlok.github.io/vnote/'

  app 'VNote.app'
end
