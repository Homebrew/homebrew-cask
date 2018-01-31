cask 'therm' do
  version '0.1.3'
  sha256 'e6c168ad398932847536adce8429e4173792b62b15850d47e931b08eec380984'

  url "https://github.com/trufae/Therm/releases/download/#{version}/Therm.app.zip"
  appcast 'https://github.com/trufae/Therm/releases.atom',
          checkpoint: 'd2ecf71326a5dbb28bdac17804ce35ff52e5c60c324ae8ab7b8a5a6d2f7da853'
  name 'Therm'
  homepage 'https://github.com/trufae/Therm'

  app 'Therm.app'
end
