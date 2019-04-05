cask 'talon' do
  version '99-0.0.8.39'
  sha256 'ee95ab2a16a501c4d7be375eb9ad97b14627708733e51a6326133a8cda24f067'

  url "https://talonvoice.com/update/nmi5s3faoq6NzROd2dbCRg/Talon-#{version}.dmg"
  appcast 'https://talonvoice.com/update/nmi5s3faoq6NzROd2dbCRg/appcast.xml'
  name 'Talon'
  homepage 'https://talonvoice.com/'

  app 'Talon.app'

  caveats do
    license 'https://talonvoice.com/EULA.txt'
  end
end
