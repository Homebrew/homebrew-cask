cask 'wordmark' do
  version '3.0.1-beta.10'
  sha256 '667984c18c754450a6180b6514c32c472a1563c61997ece9a4879ddd207512b9'

  # github.com/wordmark/wordmark was verified as official when first introduced to the cask
  url "https://github.com/wordmark/wordmark/releases/download/v#{version}/wordmark-#{version}-mac.zip"
  appcast 'https://github.com/wordmark/wordmark/releases.atom'
  name "WordMark #{version.major}"
  homepage 'https://wordmarkapp.com/'

  app 'wordmark.app'
end
