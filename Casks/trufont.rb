cask 'trufont' do
  version '0.3.0'
  sha256 'dd274baeef87cf43971af7d6e4c845e384c3dc0d15e1888e9483aa9959804f90'

  url "https://github.com/trufont/trufont/releases/download/#{version}/TruFont.app.zip"
  name 'TruFont'
  homepage 'http://trufont.github.io/'
  license :oss

  app 'TruFont.app'
end
