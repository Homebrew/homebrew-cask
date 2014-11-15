cask :v1 => 'tagger' do
  version '1.8.0.7'
  sha256 'a4745dcf88f1691d2c681a87e6cfb6326200b6a2d9dfb53c2c62c67905a09e16'

  url "https://github.com/Bilalh/Tagger/releases/download/1.8.0/Tagger_#{version}.zip"
  appcast 'http://bilalh.github.com/sparkle/tagger/appcast.xml',
          :sha256 => 'df4ef5a84c4900943529c0a45e7bf47a0823985fd558462899b5029fb32ce25e'
  homepage 'http://bilalh.github.io/projects/tagger/'
  license :oss

  app 'Tagger.app'
end
