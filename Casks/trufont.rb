cask 'trufont' do
  version '0.5.0'
  sha256 'bdc20b8e11f51b58595a8ed2ff2e6a9684a581c739ed5c1fd500ca8b8cd05fcb'

  # github.com/trufont/trufont was verified as official when first introduced to the cask
  url "https://github.com/trufont/trufont/releases/download/#{version}/TruFont.app.zip"
  appcast 'https://github.com/trufont/trufont/releases.atom',
          checkpoint: '94f15046baf1df5da48358493e4ab5895ed918e80abf67623dad4f1490c163a9'
  name 'TruFont'
  homepage 'https://trufont.github.io/'

  app 'TruFont.app'
end
