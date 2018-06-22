cask 'vuescan' do
  version '9.6.09'
  sha256 'f49f6c308707da207b89499ce6caf8648779aa2c249eafef6af85effc1228b9f'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/old-versions.html'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
