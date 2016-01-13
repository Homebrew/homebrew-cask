cask 'wedge' do
  version :latest
  sha256 :no_check

  url 'http://wedge.natestedman.com/release/Wedge.app.zip'
  appcast 'http://wedge.natestedman.com/appcast.xml',
          :checkpoint => '60a2c89c8b3525b9884edc4175b1ed8f4d8ae8bccb697f806b4f62d04664b927'
  name 'Wedge'
  homepage 'http://wedge.natestedman.com'
  license :gratis

  app 'Wedge.app'
end
