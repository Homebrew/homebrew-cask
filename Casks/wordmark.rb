cask 'wordmark' do
  version '3.0.1-beta.3'
  sha256 '455d2920bc1b2138deccdbd09a9c47a83a4f021428b8cdead8a0b27ed8b5e9e6'

  # github.com/wordmark/wordmark was verified as official when first introduced to the cask
  url "https://github.com/wordmark/wordmark/releases/download/v#{version}/wordmark-#{version}-mac.zip"
  appcast 'https://github.com/wordmark/wordmark/releases.atom',
          checkpoint: '78779c9c8a97899acfb17bfdb905ab8387669a6871932c9961942b5fe613a063'
  name "WordMark #{version.major}"
  homepage 'https://wordmarkapp.com/'

  app 'wordmark.app'
end
