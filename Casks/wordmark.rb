cask 'wordmark' do
  version '3.0.1-beta.17'
  sha256 '3595fe19623cf605c21ec99810694a2a60358e0354d26f57d1463960b38bf493'

  # github.com/wordmark/wordmark was verified as official when first introduced to the cask
  url "https://github.com/wordmark/wordmark/releases/download/v#{version}/wordmark-#{version}-mac.zip"
  appcast 'https://github.com/wordmark/wordmark/releases.atom'
  name "WordMark #{version.major}"
  homepage 'https://wordmarkapp.com/'

  app 'wordmark.app'
end
