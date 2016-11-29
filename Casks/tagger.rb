cask 'tagger' do
  version '1.8.0.7'
  sha256 'a4745dcf88f1691d2c681a87e6cfb6326200b6a2d9dfb53c2c62c67905a09e16'

  # github.com/Bilalh/Tagger was verified as official when first introduced to the cask
  url "https://github.com/Bilalh/Tagger/releases/download/1.8.0/Tagger_#{version}.zip"
  appcast 'https://github.com/Bilalh/Tagger/releases.atom',
          checkpoint: 'bec52aec35f7c2d84da353a17220a2c9830a1c4e54c00e995b38812004c522f1'
  name 'Tagger'
  homepage 'https://bilalh.github.io/projects/tagger/'

  app 'Tagger.app'
end
