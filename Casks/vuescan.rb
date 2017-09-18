cask 'vuescan' do
  version '9.5.85'
  sha256 '1844372f0636edeffde47ebbca0c342bbd28395af037ff064201b22ad3f1f910'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/old-versions.html',
          checkpoint: '6e4df0585b1aaf87d25cc2da4824d4dbe3ad4767c80b5567981f5174bfcd44c9'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
