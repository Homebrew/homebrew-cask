cask 'tilemill' do
  version '0.10.1'
  sha256 '4d3c9c0a8f7b530d08598b8c245b128c982529a39127fab9dfabd6a2a92ba08f'

  # tilemill.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://tilemill.s3.amazonaws.com/latest/TileMill-#{version}.zip"
  appcast 'https://www.mapbox.com/tilemill/platforms/osx/appcast2.xml'
  name 'TileMill'
  homepage 'https://www.mapbox.com/tilemill/'

  app 'TileMill.app'
end
