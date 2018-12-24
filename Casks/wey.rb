cask 'wey' do
  version '0.3.2'
  sha256 '5d19562b626fa7a3286e8870ac16659b357886526781408f0e18cce73d5e3ebb'

  url "https://github.com/yue/wey/releases/download/v#{version}/wey-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/yue/wey/releases.atom'
  name 'Wey'
  homepage 'https://github.com/yue/wey'

  app 'Wey.app'
end
