cask 'vnote' do
  version '1.15'
  sha256 'eb64ee54426fb5525c077e4538f74aac20fc2108a39937aeee700835dfc95825'

  # github.com/tamlok/vnote was verified as official when first introduced to the cask
  url "https://github.com/tamlok/vnote/releases/download/v#{version}/VNote-#{version}-x64.dmg"
  appcast 'https://github.com/tamlok/vnote/releases.atom',
          checkpoint: '5b65722928f42af4f8c1fb06a3258a60e9e266d89993dcdc5e21bb566d26923d'
  name 'VNote'
  homepage 'https://tamlok.github.io/vnote/'

  app 'VNote.app'
end
