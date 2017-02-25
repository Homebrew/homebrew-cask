cask 'webcatalog' do
  version '3.1.1'
  sha256 '8e7daabe674443a216feffb0366fb123d032f76a9692583e7ed6054d8f5b89bb'

  # github.com/webcatalog/desktop/releases/download/ was verified as official when first introduced to the cask
  url "https://github.com/webcatalog/desktop/releases/download/v#{version}/WebCatalog-#{version}.dmg"
  appcast 'https://github.com/webcatalog/desktop/releases.atom',
          checkpoint: 'a0fb8bfbdb0be3a777123cbc7f01c429c683a0bbd7e5d3e46c619a96942e27f2'
  name 'WebCatalog'
  homepage 'https://getwebcatalog.com/'

  app 'WebCatalog.app'
end
