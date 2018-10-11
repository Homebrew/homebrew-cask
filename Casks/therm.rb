cask 'therm' do
  version '0.2.0'
  sha256 '13fc212977213220aa6896c68e55f879b54ead69ba4987d7487d8e4b7923a30f'

  url "https://github.com/trufae/Therm/releases/download/#{version}/Therm.app.zip"
  appcast 'https://github.com/trufae/Therm/releases.atom'
  name 'Therm'
  homepage 'https://github.com/trufae/Therm'

  app 'Therm.app'
end
