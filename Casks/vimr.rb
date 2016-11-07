cask 'vimr' do
  version '0.10.0-118'
  sha256 'f4db5084565b08cfc78c171bfd479d5db0f467e3d77cefc51a0d7756fe68dc5c'

  # github.com/qvacua/vimr was verified as official when first introduced to the cask
  url "https://github.com/qvacua/vimr/releases/download/v#{version}/VimR-v#{version}.tar.bz2"
  appcast 'https://github.com/qvacua/vimr/releases.atom',
          checkpoint: '2800489c8892131df269efe614886bd72a691be647d61181c66cb3921e9b005d'
  name 'VimR'
  homepage 'http://vimr.org/'

  app 'VimR.app'
  binary "#{appdir}/VimR.app/Contents/Resources/vimr"
end
