cask 'vuescan' do
  version '9.5.84'
  sha256 '7187b58a0c0bc86c73bb2bf3ecb01f4e0264ed2f8d9efced4e370e4bb3aeb1ae'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/old-versions.html',
          checkpoint: '5cb317c34f55aac7d9b6d82913da74e621290053dbac6a77bca10e85bf454f3e'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
