cask :v1 => 'tilemill' do
  version '0.10.1'
  sha256 '4d3c9c0a8f7b530d08598b8c245b128c982529a39127fab9dfabd6a2a92ba08f'

  url "https://tilemill.s3.amazonaws.com/latest/TileMill-#{version}.zip"
  appcast 'http://mapbox.com/tilemill/platforms/osx/appcast2.xml',
          :sha256 => '839122af3c2d526d97557078a0f84dc6c3c146bd35bcba915949c671be79ac02'
  homepage 'http://www.mapbox.com/tilemill/'
  license :unknown    # todo: improve this machine-generated value

  app 'TileMill.app'
end
