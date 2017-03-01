cask 'webcatalog' do
  version '3.2.5'
  sha256 '117e4950a4df4e2ac7308d764cd72a71d8c4d557f3764b2a123eb51adc6dcb58'

  # github.com/webcatalog/desktop/releases/download/ was verified as official when first introduced to the cask
  url "https://github.com/webcatalog/desktop/releases/download/v#{version}/WebCatalog-#{version}.dmg"
  appcast 'https://github.com/webcatalog/desktop/releases.atom',
          checkpoint: '235297ca6a778bf207eadbf6cf3565a7bf0a2c4a03cf1c12cb23f9dd2f4cfccd'
  name 'WebCatalog'
  homepage 'https://getwebcatalog.com/'

  app 'WebCatalog.app'
end
