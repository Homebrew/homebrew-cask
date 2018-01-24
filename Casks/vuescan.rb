cask 'vuescan' do
  version '9.6.05'
  sha256 '4730ff545492d2988c478f53f49d34b5497d61c2fe05d9f3abcbc94b76377ef3'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/old-versions.html',
          checkpoint: 'd1f4dad18c62eeb495fef4686e53a7b3748d22286e4320e2dfa7aee1671e01ee'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
