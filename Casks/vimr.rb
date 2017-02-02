cask 'vimr' do
  version '0.13.0-164'
  sha256 '67932b57d8e13ccee4d1b5862404cde7f7d87dca7ed615896da9ee065291a943'

  # github.com/qvacua/vimr was verified as official when first introduced to the cask
  url "https://github.com/qvacua/vimr/releases/download/v#{version}/VimR-v#{version}.tar.bz2"
  appcast 'https://github.com/qvacua/vimr/releases.atom',
          checkpoint: 'f507e5628e040a7b90730257be1862ede95a961f1f059fccd7e61786b09a7fa6'
  name 'VimR'
  homepage 'http://vimr.org/'

  app 'VimR.app'
  binary "#{appdir}/VimR.app/Contents/Resources/vimr"
end
