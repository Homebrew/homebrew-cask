cask 'wordmark' do
  version '3.0.1-beta.4'
  sha256 'c902f0ef3c3d176df1248f2e8e3ee8a3a5092b8f4f0286a12161dd9ccaaf578c'

  # github.com/wordmark/wordmark was verified as official when first introduced to the cask
  url "https://github.com/wordmark/wordmark/releases/download/v#{version}/wordmark-#{version}-mac.zip"
  appcast 'https://github.com/wordmark/wordmark/releases.atom'
  name "WordMark #{version.major}"
  homepage 'https://wordmarkapp.com/'

  app 'wordmark.app'
end
