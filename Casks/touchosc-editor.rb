cask 'touchosc-editor' do
  version '1.8.5'
  sha256 '0873ee00f6e7e135d3dc704fd2f072e29e02b5a6d863851370e81c657a788643'

  url "https://hexler.net/pub/touchosc/touchosc-editor-#{version}-osx.zip"
  name 'TouchOSC Editor'
  homepage 'https://hexler.net/software/touchosc'

  app "touchosc-editor-#{version}-osx/TouchOSC Editor.app"
  artifact "touchosc-editor-#{version}-osx/layouts", target: Pathname.new(File.expand_path('~')).join('Library/Application Support/TouchOSCEditor/layouts')

  zap trash: '~/Library/*/*TouchOSCEditor*'
end
