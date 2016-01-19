cask 'tilemill' do
  version '0.10.1'
  sha256 '4d3c9c0a8f7b530d08598b8c245b128c982529a39127fab9dfabd6a2a92ba08f'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://tilemill.s3.amazonaws.com/latest/TileMill-#{version}.zip"
  appcast 'https://www.mapbox.com/tilemill/platforms/osx/appcast2.xml/',
          checkpoint: '2a8c33291658fba8f69f408cf102ca063fa709e301f399b2f2b1a4a93b7516b5'
  name 'TileMill'
  homepage 'https://www.mapbox.com/tilemill/'
  license :bsd

  app 'TileMill.app'
end
