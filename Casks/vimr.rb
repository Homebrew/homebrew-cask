cask 'vimr' do
  version '0.13.1-167'
  sha256 '570ab8df069fa6a7bdd042144125ad56258f82f5aec46630cd880f044b60d9a6'

  # github.com/qvacua/vimr was verified as official when first introduced to the cask
  url "https://github.com/qvacua/vimr/releases/download/v#{version}/VimR-v#{version}.tar.bz2"
  appcast 'https://github.com/qvacua/vimr/releases.atom',
          checkpoint: '51157cfc1b0ce5ca40e7a3c0092d281bf5bf5f9b55074b45c5d1676ef57af652'
  name 'VimR'
  homepage 'http://vimr.org/'

  app 'VimR.app'
  binary "#{appdir}/VimR.app/Contents/Resources/vimr"
end
