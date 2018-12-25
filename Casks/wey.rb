cask 'wey' do
  version '0.3.3'
  sha256 '56f9a35eafea46e43bc51f1e4fd8fa1fac7c5aa4df19ad29b47c273d24baeb4d'

  url "https://github.com/yue/wey/releases/download/v#{version}/wey-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/yue/wey/releases.atom'
  name 'Wey'
  homepage 'https://github.com/yue/wey'

  app 'Wey.app'
end
