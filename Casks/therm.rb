cask 'therm' do
  version '0.1.4'
  sha256 'b27ab02e63e9bc95b91aa428ef8d12cdb8e26ae4f4ef15a742de4b6e66f580b3'

  url "https://github.com/trufae/Therm/releases/download/#{version}/Therm.app.zip"
  appcast 'https://github.com/trufae/Therm/releases.atom',
          checkpoint: '08c557475e51f0cf5807011ab94c56cc8628384f328533bd86ce643b5415c65f'
  name 'Therm'
  homepage 'https://github.com/trufae/Therm'

  app 'Therm.app'
end
