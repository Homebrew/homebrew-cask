cask 'wey' do
  version '0.3.1'
  sha256 'c0a8fd689fcbeab6a75af034fdf8c41d8c77b7f66c1485a953a38c8ab8e712b1'

  url "https://github.com/yue/wey/releases/download/v#{version}/wey-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/yue/wey/releases.atom'
  name 'Wey'
  homepage 'https://github.com/yue/wey'

  app 'Wey.app'
end
