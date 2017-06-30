cask 'vuescan' do
  version '9.5.80'
  sha256 'd5277b3d3e5331ec35ed9e2598490d525f87b6ae3257add7321a54a21727c6c2'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/old-versions.html',
          checkpoint: 'f70e45d351f1d53a3c7940d301de27d59a2c52dcc1c393b64504f7acb289a380'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
