cask 'vimr' do
  version '0.15.2-201'
  sha256 '6c410b2d42f7efa418f4d2ec43f72990b746432c4d13c03d31840ede18ca4be3'

  # github.com/qvacua/vimr was verified as official when first introduced to the cask
  url "https://github.com/qvacua/vimr/releases/download/v#{version}/VimR-v#{version}.tar.bz2"
  appcast 'https://github.com/qvacua/vimr/releases.atom',
          checkpoint: 'bbeb4136d39b0d09e51ea84bcce85ad10ce83582f68ce5c95c2b15641d618601'
  name 'VimR'
  homepage 'http://vimr.org/'

  app 'VimR.app'
  binary "#{appdir}/VimR.app/Contents/Resources/vimr"
end
