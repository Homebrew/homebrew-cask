cask 'wordmark' do
  version '3.0.1-beta.6'
  sha256 '7eefcbeb263d04c10d334eaf7edfcb5b7a9e3598711734e382e46415233655ab'

  # github.com/wordmark/wordmark was verified as official when first introduced to the cask
  url "https://github.com/wordmark/wordmark/releases/download/v#{version}/wordmark-#{version}-mac.zip"
  appcast 'https://github.com/wordmark/wordmark/releases.atom'
  name "WordMark #{version.major}"
  homepage 'https://wordmarkapp.com/'

  app 'wordmark.app'
end
