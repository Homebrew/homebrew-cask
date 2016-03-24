cask 'trufont' do
  version '0.3.0'
  sha256 'dd274baeef87cf43971af7d6e4c845e384c3dc0d15e1888e9483aa9959804f90'

  url "https://github.com/trufont/trufont/releases/download/#{version}/TruFont.app.zip"
  appcast 'https://github.com/trufont/trufont/releases.atom',
          checkpoint: 'df73f40f726b307dd7746ce4bdff4cf3d8882395c3ad972e8cf1ec0be4bf2a39'
  name 'TruFont'
  homepage 'https://trufont.github.io/'
  license :oss

  app 'TruFont.app'
end
