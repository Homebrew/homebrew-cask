cask 'vuescan' do
  version '9.5.92'
  sha256 'c6c7a720769d9f5605bcabe45d765ffa56d30e2e0c4e8937e4ab98bd5e18fe30'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/old-versions.html',
          checkpoint: '3bae093a924139a76d31e6d339e428e3386a69ad4731ffd33da737ac384e8f7c'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
