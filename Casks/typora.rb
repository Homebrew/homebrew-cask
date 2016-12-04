cask 'typora' do
  version '0.9.9.8.5'
  sha256 '6edbd210cc166d46d8a8e9f3de6a4ee20f6bbaf647330491a2192690d07c6853'

  url "https://www.typora.io/download/typora_#{version}.zip"
  appcast 'https://www.typora.io/download/dev_update.xml',
          checkpoint: '44f938414da0269e0f11181a46bf69722ce03286046c5c2b3fb7032652b97e40'
  name 'Typora'
  homepage 'https://www.typora.io/'

  app 'Typora.app'
end
