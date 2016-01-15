cask 'wedge' do
  version :latest
  sha256 :no_check

  url 'http://wedge.natestedman.com/release/Wedge.app.zip'
  appcast 'http://wedge.natestedman.com/appcast.xml',
          :checkpoint => '2a2f34cb7ee8a7e61c0bb685aeba02aabd3b6681ef76730b8eb758913cddbf4d'
  name 'Wedge'
  homepage 'http://wedge.natestedman.com'
  license :gratis

  app 'Wedge.app'
end
