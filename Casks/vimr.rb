cask 'vimr' do
  version '0.12.3-156'
  sha256 '689729075e82436750a1ba52bb3a5d9232abb7850e64dcdad725d2c07641de96'

  # github.com/qvacua/vimr was verified as official when first introduced to the cask
  url "https://github.com/qvacua/vimr/releases/download/v#{version}/VimR-v#{version}.tar.bz2"
  appcast 'https://github.com/qvacua/vimr/releases.atom',
          checkpoint: 'caa3e003d1d120b961dcdd6cd9f98151ae640d4a63bacdff24af754adf66e4e9'
  name 'VimR'
  homepage 'http://vimr.org/'

  app 'VimR.app'
  binary "#{appdir}/VimR.app/Contents/Resources/vimr"
end
