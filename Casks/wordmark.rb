cask 'wordmark' do
  version '3.0.1-beta.5'
  sha256 'ff97372eb55fa7da7713ad9c3f62f6363cb557d29d168c4f909f3d58471b8c67'

  # github.com/wordmark/wordmark was verified as official when first introduced to the cask
  url "https://github.com/wordmark/wordmark/releases/download/v#{version}/wordmark-#{version}-mac.zip"
  appcast 'https://github.com/wordmark/wordmark/releases.atom'
  name "WordMark #{version.major}"
  homepage 'https://wordmarkapp.com/'

  app 'wordmark.app'
end
