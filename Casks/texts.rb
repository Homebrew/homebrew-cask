cask 'texts' do
  version '1.5'
  sha256 '8c3e5c7c761f31abf414d632e6787f95e08ad112bfd43e63f90a925ae0c3fef2'

  url "http://www.texts.io/Texts-#{version}.dmg"
  appcast 'http://www.texts.io/download/'
  name 'Texts'
  homepage 'http://www.texts.io/'

  app 'Texts.app'
end
