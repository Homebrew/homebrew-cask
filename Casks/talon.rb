cask 'talon' do
  version '98-0.0.8.38'
  sha256 '45de05c79f7119785cf01535521e2872ed0c409018a32453804db90c6e707368'

  url "https://talonvoice.com/update/nmi5s3faoq6NzROd2dbCRg/Talon-#{version}.dmg"
  appcast 'https://talonvoice.com/update/nmi5s3faoq6NzROd2dbCRg/appcast.xml'
  name 'Talon'
  homepage 'https://talonvoice.com/'

  app 'Talon.app'

  caveats do
    license 'https://talonvoice.com/EULA.txt'
  end
end
