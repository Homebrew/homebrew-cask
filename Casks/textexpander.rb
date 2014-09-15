class Textexpander < Cask
  version '4.3.3'
  sha256 '1aa42fa3b1bcb6e41f662c040f3efde5713ddfe8f1aee9d03c8f60bcd9d65ddf'

  url "http://cdn.smilesoftware.com/TextExpander_#{version}.zip"
  appcast 'http://www.smilesoftware.com/appcast/update.php'
  homepage 'http://www.smilesoftware.com/TextExpander/index.html'

  app 'TextExpander.app'
end
