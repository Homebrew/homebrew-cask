cask 'wmail' do
  version '2.1.0'
  sha256 '1bbab3c8d6c2c99120258e484df883aa90f7737f246ddaa1ffac4dfd56137677'

  # github.com/Thomas101/wmail was verified as official when first introduced to the cask
  url "https://github.com/Thomas101/wmail/releases/download/#{version}/WMail_#{version.dots_to_underscores}_osx.dmg"
  appcast 'https://github.com/Thomas101/wmail/releases.atom',
          checkpoint: '3f8d154cc47118f8070fb1a92f76b2c12928e5ad3a5d4019c788653209cedeec'
  name 'WMail'
  homepage 'https://thomas101.github.io/wmail/'

  app 'WMail.app'
end
