cask 'wordmark' do
  version '3.0.1-beta.9'
  sha256 'f3b2383aa97455c8a862b1e3ef20f7f58951f03ef823c3c83633dc34d954a86f'

  # github.com/wordmark/wordmark was verified as official when first introduced to the cask
  url "https://github.com/wordmark/wordmark/releases/download/v#{version}/wordmark-#{version}-mac.zip"
  appcast 'https://github.com/wordmark/wordmark/releases.atom'
  name "WordMark #{version.major}"
  homepage 'https://wordmarkapp.com/'

  app 'wordmark.app'
end
