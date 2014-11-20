cask :v1 => 'vimr' do
  version '0.3.0-21'
  sha256 'ebb17770ab2eb5d561c2ef3d46c274617e3099ac2a15f7a6fccf55b79218c282'

  url "https://github.com/qvacua/vimr/releases/download/v#{version}/VimR-#{version.gsub(/-.*/, '')}.tar.bz2"
  homepage 'http://vimr.org/'
  license :gpl

  app 'VimR.app'
end
