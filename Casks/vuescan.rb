cask 'vuescan' do
  version '9.6.15'
  sha256 '13e09b319ce57f70d8dd14ca082cf1d5bc9444c73579f284e015b76ff12446ac'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/old-versions.html'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
