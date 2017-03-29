cask 'vimr' do
  version '0.13.1-167'
  sha256 '570ab8df069fa6a7bdd042144125ad56258f82f5aec46630cd880f044b60d9a6'

  # github.com/qvacua/vimr was verified as official when first introduced to the cask
  url "https://github.com/qvacua/vimr/releases/download/v#{version}/VimR-v#{version}.tar.bz2"
  appcast 'https://github.com/qvacua/vimr/releases.atom',
          checkpoint: '965cd41d6d5747b664a8561ce6b164ae4fd20214202d6c78995f361aece592c3'
  name 'VimR'
  homepage 'http://vimr.org/'

  app 'VimR.app'
  binary "#{appdir}/VimR.app/Contents/Resources/vimr"
end
