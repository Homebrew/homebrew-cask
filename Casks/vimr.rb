cask 'vimr' do
  version '0.15.0-191'
  sha256 '5466a01d9a7f5085b5cb59fcb82db0333a878a5a8635b03af893fbd13fdb5048'

  # github.com/qvacua/vimr was verified as official when first introduced to the cask
  url "https://github.com/qvacua/vimr/releases/download/v#{version}/VimR-v#{version}.tar.bz2"
  appcast 'https://github.com/qvacua/vimr/releases.atom',
          checkpoint: '300e7e1ce4c37bf1dca8f3296303fdf00a19852f2c59a423d2cbf464b92464aa'
  name 'VimR'
  homepage 'http://vimr.org/'

  app 'VimR.app'
  binary "#{appdir}/VimR.app/Contents/Resources/vimr"
end
