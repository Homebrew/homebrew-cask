cask 'texstudio' do
  version '2.12.2'
  sha256 'cd8fa98b4884a2fb8db5b2a66222fdc9393e4dfe2df38677619930d66813af94'

  url "https://downloads.sourceforge.net/texstudio/texstudio-#{version}-osx-qt5.7.1.zip"
  appcast 'https://sourceforge.net/projects/texstudio/rss',
          checkpoint: 'bbddafbb347b89e35154f84d725273f11e5d62bec60c128375e9d4a94b283b09'
  name 'TeXstudio'
  homepage 'http://texstudio.sourceforge.net/'

  app 'texstudio.app'
end
