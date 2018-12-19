cask 'therm' do
  version '0.2.1'
  sha256 'ff5d6fb6704309e94e238c95625746fd8ef473031533d26faedbce2066f4c09e'

  url "https://github.com/trufae/Therm/releases/download/#{version}/Therm.app.zip"
  appcast 'https://github.com/trufae/Therm/releases.atom'
  name 'Therm'
  homepage 'https://github.com/trufae/Therm'

  app 'Therm.app'
end
