cask 'wiring' do
  version '1.0,0101'
  sha256 'ff593ccfc8a1ef988b86f7610141c9bd0e5d3763b64e04f28257a374042830a8'

  url "http://wiring.org.co/download/wiring-#{version.after_comma}-macosx.zip"
  name 'Wiring'
  homepage 'http://wiring.org.co/'

  app 'Wiring.app'
end
