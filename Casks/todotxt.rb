cask 'todotxt' do
  version '2.2.1'
  sha256 '0d5b729e207cfc51cd03b87e8378e354d3af34ab70866875411e1eac3fd257ad'

  # github.com/mjdescy/TodoTxtMac was verified as official when first introduced to the cask
  url "https://github.com/mjdescy/TodoTxtMac/releases/download/#{version}/TodoTxtMac.app.zip"
  appcast 'https://github.com/mjdescy/TodoTxtMac/releases.atom',
          checkpoint: '733aae76d4b3e9630c81eec5b775283f6e05b4cb3fc4efc929783e2e64a30ed5'
  name 'TodoTxtMac'
  homepage 'https://mjdescy.github.io/TodoTxtMac/'
  license :mit

  app 'TodoTxtMac.app'
end
