cask 'texstudio' do
  version '2.12.0'
  sha256 '28b2b493cbbeadc92da23eba3a58499e1449ccfd32f2b7a728656f6b67df14c6'

  url "https://downloads.sourceforge.net/texstudio/texstudio-#{version}-osx-qt5.7.1.zip"
  appcast 'https://sourceforge.net/projects/texstudio/rss',
          checkpoint: '6e1d75c0f1c775e9d3d855013b64316d8f477fe13a14f227492c54f7ef888fca'
  name 'TeXstudio'
  homepage 'http://texstudio.sourceforge.net/'

  app 'TeXstudio.app'
end
