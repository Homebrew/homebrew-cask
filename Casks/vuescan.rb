cask 'vuescan' do
  version '9.7.10'
  sha256 '1ffc6c38894d86ee9625c40398e8551a8084836109110f03ab6f97a747942fe7'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/alternate-versions.html'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
