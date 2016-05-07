cask 'wmail' do
  version '1.3.0'
  sha256 'b41ae52ae40c8d8ee26cb5dccbb90ecb39a0170b14dc13d0c2d31f743767926c'

  # github.com/Thomas101/wmail was verified as official when first introduced to the cask
  url "https://github.com/Thomas101/wmail/releases/download/v#{version}/WMail_#{version.dots_to_underscores}_osx.zip"
  appcast 'https://github.com/Thomas101/wmail/releases.atom',
          checkpoint: '4706edc43ece366d048bc158cb97b78951cf6062bb9baf2df15a2cc5c93d9554'
  name 'WMail'
  homepage 'https://thomas101.github.io/wmail/'
  license :mit

  app 'WMail.app'
end
