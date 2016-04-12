cask 'typora' do
  version '0.9.9.1'
  sha256 'bf58cbcef5443c51c0eed9c2674841cf0a8dabca7ffa72ea73926d84c8b383ea'

  url "https://www.typora.io/download/typora_#{version}.zip"
  appcast 'https://www.typora.io/download/dev_update.xml',
          checkpoint: 'd9cb38c9af091e2dd55a3a798ead3ebfa64c061e0ca3a5d309c2403190520e05'
  name 'Typora'
  homepage 'http://typora.io'
  license :gratis

  app 'Typora.app'
end
