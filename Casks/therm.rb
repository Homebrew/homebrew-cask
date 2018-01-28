cask 'therm' do
  version '0.1.2'
  sha256 '4a1d43ef40f13d6cb6fadfa955489b7cd1f9976c4d332401565636ae543dbd1a'

  url "https://github.com/trufae/Therm/releases/download/#{version}/Therm.app.zip"
  appcast 'https://github.com/trufae/Therm/releases.atom',
          checkpoint: '3c628ff43ad479e048225cf647052681ec3fa5bc1d8990519f59ab7cdb1d779b'
  name 'Therm'
  homepage 'https://github.com/trufae/Therm'

  app 'Therm.app'
end
