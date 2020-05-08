cask 'visicut' do
  version '1.9-68-gf9e37c5e'
  sha256 'fb5f35b0cdd7fca48012949a636ff91b231ff57e55662aeaf42e9899b0d7b665'

  url "https://download.visicut.org/files/master/MacOSX/VisiCutMac-#{version}.zip"
  appcast 'https://download.visicut.org'
  name 'VisiCut'
  homepage 'https://visicut.org/'

  app 'VisiCut.app'
end
