cask 'vimr' do
  version '0.15.0-191'
  sha256 '5466a01d9a7f5085b5cb59fcb82db0333a878a5a8635b03af893fbd13fdb5048'

  # github.com/qvacua/vimr was verified as official when first introduced to the cask
  url "https://github.com/qvacua/vimr/releases/download/v#{version}/VimR-v#{version}.tar.bz2"
  appcast 'https://github.com/qvacua/vimr/releases.atom',
          checkpoint: '5451bfd1d007032ab989a0078ad8c8856210ad9f5803210c983f95ec8facda64'
  name 'VimR'
  homepage 'http://vimr.org/'

  app 'VimR.app'
  binary "#{appdir}/VimR.app/Contents/Resources/vimr"
end
