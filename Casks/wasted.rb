cask 'wasted' do
  version '3.0'
  sha256 '9802d9d9674145881f82ccd127ee49d64af4fd09f27a1199fe354a5fe57881ba'

  url 'http://wasted.werk01.de/Wasted.zip'
  appcast 'http://wasted.werk01.de/appcast.xml',
          checkpoint: '8e21e6c013e70e7393fb99b20289b3be42c437200f5240d1a149411bab081d04'
  name 'WASTED'
  homepage 'http://wasted.werk01.de'
  license :mit

  app 'Wasted.app'
end
