cask 'vnote' do
  version '1.12'
  sha256 '9ac3c687466faf60864a5610394f0b9b01fa4ad9a480483c7198303edd0872f0'

  # github.com/tamlok/vnote was verified as official when first introduced to the cask
  url "https://github.com/tamlok/vnote/releases/download/v#{version}/VNote_X64_#{version}.dmg"
  appcast 'https://github.com/tamlok/vnote/releases.atom',
          checkpoint: '17fe06d597fe9bb104c8bdb5a650a21021b0e7b473e81199e4c1ab47e71ab8a1'
  name 'VNote'
  homepage 'https://tamlok.github.io/vnote/'

  app 'VNote.app'
end
