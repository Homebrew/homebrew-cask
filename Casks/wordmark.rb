cask 'wordmark' do
  version '2.1.7'
  sha256 '0fa5a922cd9a860a004465abfb26265aa9e83b1ee4ddebad0928caf20a4c1b08'

  url "https://github.com/wordmark/wordmark/releases/download/v#{version}/WordMark-darwin-x64.zip"
  name 'WordMark 2'
  homepage 'http://wordmarkapp.com/'
  license :unknown

  app 'WordMark-darwin-x64/WordMark.app'
end
