cask 'vuescan' do
  version '9.5.85'
  sha256 '11ad3cfa8b4fb2aed4bc27ca39dcda1b846d308cd94b06871350a03f4fd10355'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/old-versions.html',
          checkpoint: '6e4df0585b1aaf87d25cc2da4824d4dbe3ad4767c80b5567981f5174bfcd44c9'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
