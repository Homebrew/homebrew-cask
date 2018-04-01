cask 'tagger' do
  version '1.8.0.7'
  sha256 'a4745dcf88f1691d2c681a87e6cfb6326200b6a2d9dfb53c2c62c67905a09e16'

  # github.com/Bilalh/Tagger was verified as official when first introduced to the cask
  url "https://github.com/Bilalh/Tagger/releases/download/1.8.0/Tagger_#{version}.zip"
  appcast 'https://github.com/Bilalh/Tagger/releases.atom',
          checkpoint: '88594d3413f6c50e21bbf6cbe08a7f1df4e674f92b0c0745e4d02e91b9f09960'
  name 'Tagger'
  homepage 'https://bilalh.github.io/projects/tagger/'

  app 'Tagger.app'
end
