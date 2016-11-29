cask 'zettelkasten' do
  version '3.2.7'
  sha256 '7e975f1cfaf3e06c0f394bf57686456915411355ded2b5736cdb99e9928544be'

  url "http://zettelkasten.danielluedecke.de/download/Zettelkasten#{version.major}_mac.zip"
  name 'zettelkasten'
  homepage 'http://zettelkasten.danielluedecke.de/'

  app 'Zettelkasten.app'
end
