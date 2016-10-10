cask 'tagant' do
  version '1.1.2'
  sha256 '591981f044e60dbf0daf701228de5cb04710f4bcd6d58a1a8fda22b82321394a'

  url "http://www.laurenceanthony.net/software/tagant/releases/TagAnt#{version.no_dots}/TagAnt.zip"
  name 'TagAnt'
  homepage 'http://www.laurenceanthony.net/software/tagant'

  app 'TagAnt.app'
end
