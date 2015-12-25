cask 'wedge' do
  version :latest
  sha256 :no_check

  url 'http://wedge.natestedman.com/release/Wedge.app.zip'
  name 'Wedge'
  appcast 'http://wedge.natestedman.com/appcast.xml',
          :sha256 => 'fd8ab56c2af33c245ca1f18ad13f1284368e4c0e079750812efe8b93d6871aff'
  homepage 'http://wedge.natestedman.com'
  license :gratis

  app 'Wedge.app'
end
