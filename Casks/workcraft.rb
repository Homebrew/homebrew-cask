cask 'workcraft' do
  version '3.1.3'
  sha256 '4db58ea3a96a9b7a18ed681d1d4efcea2276040436d6a3752ae44c29a3e981b8'

  url "https://www.workcraft.org/_media/download/workcraft-v#{version}-osx.tar.gz"
  appcast 'https://www.workcraft.org/changelog/start',
          checkpoint: '256019f426ce16146a7d160cfed0445db65563a08ae7460b96b1b6194779a5c2'
  name 'Workcraft'
  homepage 'https://www.workcraft.org/'

  app 'Workcraft.app'
end
