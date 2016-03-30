cask 'wmail' do
  version '1.2.0'
  sha256 '44a3fe2a414c08412085b4d058aba8eb79c48ca1f20eb562770f2a54e7fa5da3'

  # github.com/Thomas101/wmail was verified as official when first introduced to the cask
  url "https://github.com/Thomas101/wmail/releases/download/v#{version}/WMail_#{version.dots_to_underscores}_osx.zip"
  appcast 'https://github.com/Thomas101/wmail/releases.atom',
          checkpoint: 'd55ffc1892a3164e00a8d018a4d317f59638f9cd688b4a6028995de7c438cdc9'
  name 'WMail'
  homepage 'https://thomas101.github.io/wmail/'
  license :mit

  app 'WMail.app'
end
