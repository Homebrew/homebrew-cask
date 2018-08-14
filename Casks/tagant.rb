cask 'tagant' do
  version '1.2.0'
  sha256 '712eb54638b2162de7115314bf35f6f800e786c5b7a08bec944e92badc52cee2'

  url "http://www.laurenceanthony.net/software/tagant/releases/TagAnt#{version.no_dots}/TagAnt.zip"
  appcast 'http://www.laurenceanthony.net/software/tagant/releases/'
  name 'TagAnt'
  homepage 'http://www.laurenceanthony.net/software/tagant/'

  app 'TagAnt.app'
end
