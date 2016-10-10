cask 'wordmark' do
  version '2.1.7'
  sha256 '0fa5a922cd9a860a004465abfb26265aa9e83b1ee4ddebad0928caf20a4c1b08'

  # github.com/wordmark/wordmark was verified as official when first introduced to the cask
  url "https://github.com/wordmark/wordmark/releases/download/v#{version}/WordMark-darwin-x64.zip"
  appcast 'https://github.com/wordmark/wordmark/releases.atom',
          checkpoint: 'ed6b36192e533e1f6ac518d2fbcfdbd483fdc64adc6dd79bc6e4386acbf9358b'
  name 'WordMark 2'
  homepage 'http://wordmarkapp.com/'

  app 'WordMark-darwin-x64/WordMark.app'
end
