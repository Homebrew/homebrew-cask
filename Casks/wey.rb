cask 'wey' do
  version '0.3.5'
  sha256 'baa4b7446bacfda9e24d6cc64306757b77341a7ef0d4dbb4f557dce1f3c94d03'

  url "https://github.com/yue/wey/releases/download/v#{version}/wey-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/yue/wey/releases.atom'
  name 'Wey'
  homepage 'https://github.com/yue/wey'

  app 'Wey.app'
end
