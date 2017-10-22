cask 'vuescan' do
  version '9.5.90'
  sha256 '0c77e72b7ee929820b06973bb5e953c4b4b66d7aae6f6c201b57ae5f433b8072'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/old-versions.html',
          checkpoint: '105d346d578b815e7d1eeb5fdbe5e8c329af7ae6e76c331f663bdb1cf8f05e2c'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
