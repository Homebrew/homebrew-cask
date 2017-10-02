cask 'vuescan' do
  version '9.5.87'
  sha256 'bdbfbc948daee135976ede9e8f740e9e8a4ea65c9c42fa942f4bd8fdda94fdc5'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/old-versions.html',
          checkpoint: 'a9b303f2a9721b41a57e4b4513e2db7a31b068e5af35a83c40bc677cac69c81d'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
