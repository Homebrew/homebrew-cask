cask 'vuescan' do
  version '9.6.04'
  sha256 'a76aab962ccaae6bb3328c1120e78a4e28d222b391230e2e6314ffa10c7f1c58'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/old-versions.html',
          checkpoint: '0b30c256256def9db2b7df1a02f485cfa4d22ee24991f401ce15953eea5f8eed'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
