cask 'tinygrab' do
  version '2.5.1'
  sha256 '783a2a739233d715d18c05faa2efdbf4c0360e3a420507ca1c4a50e5f5a731c1'

  url "http://tinygrab.com/downloads/app/TinyGrab#{version}.dmg"
  appcast 'http://tinygrab.com/appcast/tinygrab-appcast.xml',
          :checkpoint => '6611fd43595df3071114183e52cd54467eab423052b77c0e83840c35ad2487a6'
  name 'TinyGrab'
  homepage 'http://www.tinygrab.com'
  license :gratis

  app 'TinyGrab.app'
end
