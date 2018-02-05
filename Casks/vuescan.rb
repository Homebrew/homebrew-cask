cask 'vuescan' do
  version '9.6.06'
  sha256 'b0e769f71c685b59e724953dddc513b58bc559a47e207c2d8243ef9d4f744523'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/old-versions.html',
          checkpoint: 'e7bc97e4e018ab349a7d4cfc7d4f03328bd372955d587c5bb32bcde94445db4f'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
