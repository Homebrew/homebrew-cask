cask 'wasted' do
  version '3.0'
  sha256 '9802d9d9674145881f82ccd127ee49d64af4fd09f27a1199fe354a5fe57881ba'

  url 'http://wasted.werk01.de/Wasted.zip'
  appcast 'http://wasted.werk01.de/appcast.xml',
          checkpoint: '23a115ef319622d89f1b56f4b1ffea1ba10fd69e3b753e48344a4566687f04c6'
  name 'WASTED'
  homepage 'http://wasted.werk01.de'

  app 'Wasted.app'
end
