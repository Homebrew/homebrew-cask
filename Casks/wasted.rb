cask 'wasted' do
  version '3.0'
  sha256 '9802d9d9674145881f82ccd127ee49d64af4fd09f27a1199fe354a5fe57881ba'

  url 'http://wasted.werk01.de/Wasted.zip'
  appcast 'http://wasted.werk01.de/appcast.xml',
          checkpoint: '2798524a4eb590c537dd46085528bb94a3717d6dd07572e93cb2241ed682f722'
  name 'WASTED'
  homepage 'http://wasted.werk01.de'

  app 'Wasted.app'
end
