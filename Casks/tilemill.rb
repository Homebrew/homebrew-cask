class Tilemill < Cask
  version '0.10.1'
  sha256 '4d3c9c0a8f7b530d08598b8c245b128c982529a39127fab9dfabd6a2a92ba08f'

  url 'https://tilemill.s3.amazonaws.com/latest/TileMill-0.10.1.zip'
  appcast 'http://mapbox.com/tilemill/platforms/osx/appcast2.xml'
  homepage 'http://www.mapbox.com/tilemill/'

  link 'TileMill.app'
end
