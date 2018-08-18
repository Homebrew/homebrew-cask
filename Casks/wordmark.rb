cask 'wordmark' do
  version '3.0.1-beta.8'
  sha256 '39f0763829ea7eb96bf2718adf1d5e29899f904a5a5eb6d853f6a83be5de2ce6'

  # github.com/wordmark/wordmark was verified as official when first introduced to the cask
  url "https://github.com/wordmark/wordmark/releases/download/v#{version}/wordmark-#{version}-mac.zip"
  appcast 'https://github.com/wordmark/wordmark/releases.atom'
  name "WordMark #{version.major}"
  homepage 'https://wordmarkapp.com/'

  app 'wordmark.app'
end
