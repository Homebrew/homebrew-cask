cask 'tilemill' do
  version '0.10.1'
  sha256 '4d3c9c0a8f7b530d08598b8c245b128c982529a39127fab9dfabd6a2a92ba08f'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://tilemill.s3.amazonaws.com/latest/TileMill-#{version}.zip"
  appcast 'https://www.mapbox.com/tilemill/platforms/osx/appcast2.xml/',
          :sha256 => '638eca1562110b11c496ddf687c9f65b7d78be6f19fb1615baa2a51ac2a3a5d8'
  name 'TileMill'
  homepage 'https://www.mapbox.com/tilemill/'
  license :bsd

  app 'TileMill.app'
end
