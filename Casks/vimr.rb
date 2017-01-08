cask 'vimr' do
  version '0.12.5-159'
  sha256 'a32f6f73871e25fd1ab81238a6d56482cbbe30af3ab736e6ef3afebd4f335bfd'

  # github.com/qvacua/vimr was verified as official when first introduced to the cask
  url "https://github.com/qvacua/vimr/releases/download/v#{version}/VimR-v#{version}.tar.bz2"
  appcast 'https://github.com/qvacua/vimr/releases.atom',
          checkpoint: '4c1773073c09d3b1c45256979773dacda8d44ae4a6d8fa5018bf2b407058d9b6'
  name 'VimR'
  homepage 'http://vimr.org/'

  app 'VimR.app'
  binary "#{appdir}/VimR.app/Contents/Resources/vimr"
end
