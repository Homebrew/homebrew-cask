cask 'wordmark' do
  version '3.0.1-beta.19'
  sha256 'b9849fae63c3236632677a95b2720a156630c29460d448c035e17086c8c7d66e'

  # github.com/wordmark/wordmark was verified as official when first introduced to the cask
  url "https://github.com/wordmark/wordmark/releases/download/v#{version}/wordmark-#{version}-mac.zip"
  appcast 'https://github.com/wordmark/wordmark/releases.atom'
  name "WordMark #{version.major}"
  homepage 'https://wordmarkapp.com/'

  app 'wordmark.app'
end
