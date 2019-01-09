cask 'wey' do
  version '0.3.4'
  sha256 '784a22f6ccc61acb96f7ceb85ef8cf8431f133317a4f8c324863e23f121b2ead'

  url "https://github.com/yue/wey/releases/download/v#{version}/wey-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/yue/wey/releases.atom'
  name 'Wey'
  homepage 'https://github.com/yue/wey'

  app 'Wey.app'
end
