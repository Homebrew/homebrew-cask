cask 'wordmark' do
  version '3.0.1-beta.2'
  sha256 '99222b222c94276049181da3dabef1aa96f4c292dd3bd4dfef55494dae21bc88'

  # github.com/wordmark/wordmark was verified as official when first introduced to the cask
  url "https://github.com/wordmark/wordmark/releases/download/v#{version}/wordmark-#{version}-mac.zip"
  appcast 'https://github.com/wordmark/wordmark/releases.atom',
          checkpoint: '93bfa185cc98f6eb99753d81322cf53a035c8aeb44adbcadc894329f7286f84c'
  name "WordMark #{version.major}"
  homepage 'http://wordmarkapp.com/'

  app 'WordMark-darwin-x64/WordMark.app'
end
