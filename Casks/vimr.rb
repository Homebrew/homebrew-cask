cask 'vimr' do
  version '0.13.1-167'
  sha256 '570ab8df069fa6a7bdd042144125ad56258f82f5aec46630cd880f044b60d9a6'

  # github.com/qvacua/vimr was verified as official when first introduced to the cask
  url "https://github.com/qvacua/vimr/releases/download/v#{version}/VimR-v#{version}.tar.bz2"
  appcast 'https://github.com/qvacua/vimr/releases.atom',
          checkpoint: '7619a0d2d13f1f7474780807a5870d1ef879360314542b49e406dc35d22f24fd'
  name 'VimR'
  homepage 'http://vimr.org/'

  app 'VimR.app'
  binary "#{appdir}/VimR.app/Contents/Resources/vimr"
end
