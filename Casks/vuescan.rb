cask 'vuescan' do
  version '9.5.89'
  sha256 '3fc9e1572c82c8f95c433ff33e9a3b3d89c06a47f36c6e774601c4613659958e'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/old-versions.html',
          checkpoint: '01ce8ee270c8a90e6d25fa2714b709c26e8f8e3ae04168cf90ae96fcfe42f640'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
