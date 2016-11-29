cask 'wordmark' do
  version '2.2.5'
  sha256 'd572b6dc97aeddcb9df6414ad12eb2e6c2b9ed7da85eb969c814d59fd349ccb3'

  # github.com/wordmark/wordmark was verified as official when first introduced to the cask
  url "https://github.com/wordmark/wordmark/releases/download/v#{version}/WordMark-darwin-x64.zip"
  appcast 'https://github.com/wordmark/wordmark/releases.atom',
          checkpoint: '0de99e8bc71d3e8c29ec350af6edc0c59faf2ed832fbe4864eecc75dd3073c55'
  name "WordMark #{version.major}"
  homepage 'http://wordmarkapp.com/'

  app 'WordMark-darwin-x64/WordMark.app'
end
