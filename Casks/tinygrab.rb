cask 'tinygrab' do
  version '2.5.1'
  sha256 '783a2a739233d715d18c05faa2efdbf4c0360e3a420507ca1c4a50e5f5a731c1'

  url "http://tinygrab.com/downloads/app/TinyGrab#{version}.dmg"
  appcast 'http://tinygrab.com/appcast/tinygrab-appcast.xml',
          checkpoint: '7e83bfe277a800bd0833e3ca79eade0056e3acbb998d72e6ad1be8e7b1693126'
  name 'TinyGrab'
  homepage 'http://www.tinygrab.com'

  app 'TinyGrab.app'
end
