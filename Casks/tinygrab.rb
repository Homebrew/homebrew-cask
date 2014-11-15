cask :v1 => 'tinygrab' do
  version '2.5.1'
  sha256 '783a2a739233d715d18c05faa2efdbf4c0360e3a420507ca1c4a50e5f5a731c1'

  url "http://tinygrab.com/downloads/app/TinyGrab#{version}.dmg"
  appcast 'http://tinygrab.com/appcast/tinygrab-appcast.xml',
          :sha256 => '918a398a34b634076c71660304495a85e1555529f9f3e5432fa961107a481bb3'
  homepage 'http://www.tinygrab.com'
  license :unknown

  app 'TinyGrab.app'
end
