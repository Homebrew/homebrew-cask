cask 'wordmark' do
  version '3.0.1-beta.20'
  sha256 'cc54c60ccead67912664faabb716eb06b8662671072ec76f611648d755892c38'

  # github.com/wordmark/wordmark was verified as official when first introduced to the cask
  url "https://github.com/wordmark/wordmark/releases/download/v#{version}/wordmark-#{version}-mac.zip"
  appcast 'https://github.com/wordmark/wordmark/releases.atom'
  name "WordMark #{version.major}"
  homepage 'https://wordmarkapp.com/'

  app 'wordmark.app'
end
