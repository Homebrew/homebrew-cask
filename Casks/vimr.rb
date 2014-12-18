cask :v1 => 'vimr' do
  version '0.5.0-24'
  sha256 '22a6203573e13d9e4ae2f277c297446edba3d2e5150375563668a9a2c430ab5f'

  url "https://github.com/qvacua/vimr/releases/download/v#{version}/VimR-#{version.gsub(/-.*/, '')}.tar.bz2"
  homepage 'http://vimr.org/'
  license :gpl

  app 'VimR.app'
end
