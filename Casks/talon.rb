cask 'talon' do
  version '78-0.0.8.18'
  sha256 'cc5cf33854152b3f325de6291ac26ee8835caaa212b09f9d63e65c3bbddef700'

  url "https://talonvoice.com/update/nmi5s3faoq6NzROd2dbCRg/Talon-#{version}.dmg"
  appcast "https://talonvoice.com/update/nmi5s3faoq6NzROd2dbCRg/Talon-#{version}.html"
  name 'Talon'
  homepage 'https://talonvoice.com/'

  app 'Talon.app'

  caveats do
    license 'https://talonvoice.com/EULA.txt'
  end
end
