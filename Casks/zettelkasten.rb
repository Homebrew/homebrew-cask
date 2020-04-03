cask 'zettelkasten' do
  version '3.3.0'
  sha256 '0249695dd3742819624720e457559f707131d6864c76c911fd553e06781cc2f9'

  # github.com/sjPlot/Zettelkasten was verified as official when first introduced to the cask
  url "https://github.com/sjPlot/Zettelkasten/releases/download/v#{version}/Zettelkasten_#{version}.dmg"
  appcast 'https://github.com/sjPlot/Zettelkasten/releases.atom'
  name 'zettelkasten'
  homepage 'http://zettelkasten.danielluedecke.de/'

  app 'Zettelkasten.app'
end
