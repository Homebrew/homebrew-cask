cask 'wordmark' do
  version '3.0.1-beta.18'
  sha256 'f19410eed783e9b84d877fc843c52a352c6867e4406830735b3fbfa6e84e78e1'

  # github.com/wordmark/wordmark was verified as official when first introduced to the cask
  url "https://github.com/wordmark/wordmark/releases/download/v#{version}/wordmark-#{version}-mac.zip"
  appcast 'https://github.com/wordmark/wordmark/releases.atom'
  name "WordMark #{version.major}"
  homepage 'https://wordmarkapp.com/'

  app 'wordmark.app'
end
