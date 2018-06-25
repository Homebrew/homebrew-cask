cask 'wedge' do
  version '0.7'
  sha256 '61e9b56de230ebd41e80992206129cec2bc5ccf46ebd2e8c8d2d2fb3c2581c59'

  url "http://wedge.natestedman.com/release/#{version}.zip"
  appcast 'http://wedge.natestedman.com/appcast.xml'
  name 'Wedge'
  homepage 'http://wedge.natestedman.com/'

  app 'Wedge.app'
end
