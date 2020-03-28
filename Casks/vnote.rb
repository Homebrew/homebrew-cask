cask 'vnote' do
  version '2.9'
  sha256 'dabeb8bca928965a3c90f35025ea5b62a8e48470248e5200841ce16b59e9e9d8'

  # github.com/tamlok/vnote was verified as official when first introduced to the cask
  url "https://github.com/tamlok/vnote/releases/download/v#{version}/VNote-#{version}-x64.dmg"
  appcast 'https://github.com/tamlok/vnote/releases.atom'
  name 'VNote'
  homepage 'https://tamlok.github.io/vnote/'

  app 'VNote.app'
end
