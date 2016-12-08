cask 'vimr' do
  version '0.11.1-140'
  sha256 'bf171ffb0c47700194f5eb4f44df572f2be64ebb1e6e5fa79ce89b219f5b2244'

  # github.com/qvacua/vimr was verified as official when first introduced to the cask
  url "https://github.com/qvacua/vimr/releases/download/v#{version}/VimR-v#{version}.tar.bz2"
  appcast 'https://github.com/qvacua/vimr/releases.atom',
          checkpoint: '6ebdd0fc57647d4ffcf528d92deb1b5730b9a5d180cd8d0a73acaedc42d98cba'
  name 'VimR'
  homepage 'http://vimr.org/'

  app 'VimR.app'
  binary "#{appdir}/VimR.app/Contents/Resources/vimr"
end
