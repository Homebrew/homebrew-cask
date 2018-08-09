cask 'wordmark' do
  version '3.0.1-beta.7'
  sha256 '1a7010fc1b9c131a654112eab9eaeeb02c8143f23aacc93584727ce95a861d85'

  # github.com/wordmark/wordmark was verified as official when first introduced to the cask
  url "https://github.com/wordmark/wordmark/releases/download/v#{version}/wordmark-#{version}-mac.zip"
  appcast 'https://github.com/wordmark/wordmark/releases.atom'
  name "WordMark #{version.major}"
  homepage 'https://wordmarkapp.com/'

  app 'wordmark.app'
end
