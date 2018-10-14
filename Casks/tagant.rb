cask 'tagant' do
  version '1.2.0'
  sha256 '712eb54638b2162de7115314bf35f6f800e786c5b7a08bec944e92badc52cee2'

  url "https://www.laurenceanthony.net/software/tagant/releases/TagAnt#{version.no_dots}/TagAnt.zip"
  appcast 'https://www.laurenceanthony.net/software/tagant/releases/'
  name 'TagAnt'
  homepage 'https://www.laurenceanthony.net/software/tagant/'

  app 'TagAnt.app'
end
