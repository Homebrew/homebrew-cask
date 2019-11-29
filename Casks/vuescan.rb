cask 'vuescan' do
  version '9.7.09'
  sha256 '572e0efba66110c56a2315ebc42e56eaa663c316787c5724955b2993b23c42d5'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/alternate-versions.html'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
