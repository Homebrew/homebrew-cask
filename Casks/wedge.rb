cask :v1 => 'wedge' do
  version :latest
  sha256 :no_check

  url 'http://wedge.natestedman.com/release/Wedge.app.zip'
  appcast 'http://wedge.natestedman.com/appcast.xml'
  homepage 'http://wedge.natestedman.com'
  license :unknown

  app 'Wedge.app'
end
