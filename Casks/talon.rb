cask 'talon' do
  version '89-0.0.8.29'
  sha256 '87d49ff38693872394f17dc9413e00de2c82693c6eaf0c44a45c8740c86748b2'

  url "https://talonvoice.com/update/nmi5s3faoq6NzROd2dbCRg/Talon-#{version}.dmg"
  appcast 'https://talonvoice.com/'
  name 'Talon'
  homepage 'https://talonvoice.com/'

  app 'Talon.app'

  caveats do
    license 'https://talonvoice.com/EULA.txt'
  end
end
