cask 'xca' do
  version '1.4.0'
  sha256 '21d3f6e8199918173a188987de093dc9f16a867ccefb8c348950bb7d843cb1d8'

  # github.com/chris2511/xca was verified as official when first introduced to the cask
  url "https://github.com/chris2511/xca/releases/download/RELEASE.#{version}/xca-#{version}.dmg"
  appcast 'https://github.com/chris2511/xca/releases.atom',
          checkpoint: '9433a9afc80c85b85539bbeb7bf29af5184f83ad07402c611a1b93c2bd57b884'
  name 'XCA'
  homepage 'http://hohnstaedt.de/xca/'

  app 'xca.app'
end
