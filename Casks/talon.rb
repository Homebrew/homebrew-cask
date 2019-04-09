cask 'talon' do
  version '100-0.0.8.40'
  sha256 'e883fba2348bae796b73ff0a94a65f9af937ea936aa89cdae71153a1595664c9'

  url "https://talonvoice.com/update/nmi5s3faoq6NzROd2dbCRg/Talon-#{version}.dmg"
  appcast 'https://talonvoice.com/update/nmi5s3faoq6NzROd2dbCRg/appcast.xml'
  name 'Talon'
  homepage 'https://talonvoice.com/'

  app 'Talon.app'

  caveats do
    license 'https://talonvoice.com/EULA.txt'
  end
end
