cask 'wordmark' do
  version '3.0.1-beta.16'
  sha256 '55b1371db8530de3f4233e56a22d8b71851bc9b3eaec601a746da3dc6fce14bc'

  # github.com/wordmark/wordmark was verified as official when first introduced to the cask
  url "https://github.com/wordmark/wordmark/releases/download/v#{version}/wordmark-#{version}-mac.zip"
  appcast 'https://github.com/wordmark/wordmark/releases.atom'
  name "WordMark #{version.major}"
  homepage 'https://wordmarkapp.com/'

  app 'wordmark.app'
end
