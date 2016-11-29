cask 'the-hit-list' do
  version '1.1.27,347'
  sha256 '76d1dd3d441e1df6d7aa3a7708228853cd89ca3839a095f73c5cdb4d6d69749f'

  url "https://distrib.karelia.com/downloads/TheHitList-#{version.after_comma}.zip"
  appcast 'https://launch.karelia.com/appcast.php?product=9&appname=The+Hit+List',
          checkpoint: '2f9a1f6cc0fb28c0ff21b5e36211cad4d01acb4bcd9b0f97563cabce6c5657f5'
  name 'The Hit List'
  homepage 'https://www.karelia.com/products/the-hit-list/mac.html'

  app 'The Hit List.app'
end
