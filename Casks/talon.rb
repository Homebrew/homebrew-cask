cask 'talon' do
  version '101-0.0.8.41'
  sha256 '222bb22a94ae32521c0fd5df1150ce26ac2edc50c301a5ff493134795a52f347'

  url "https://talonvoice.com/update/nmi5s3faoq6NzROd2dbCRg/Talon-#{version}.dmg"
  appcast 'https://talonvoice.com/update/nmi5s3faoq6NzROd2dbCRg/appcast.xml'
  name 'Talon'
  homepage 'https://talonvoice.com/'

  app 'Talon.app'

  caveats do
    license 'https://talonvoice.com/EULA.txt'
  end
end
