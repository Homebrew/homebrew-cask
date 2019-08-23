cask 'touchosc-editor' do
  version '1.8.6'
  sha256 '409d530276b2b7903c75855feb14e9dcaea24b75c98129645fed1ec3645a2415'

  url "https://hexler.net/pub/touchosc/touchosc-editor-#{version}-macos.zip"
  appcast 'https://hexler.net/software/touchosc'
  name 'TouchOSC Editor'
  homepage 'https://hexler.net/software/touchosc'

  app "touchosc-editor-#{version}-osx/TouchOSC Editor.app"
  artifact "touchosc-editor-#{version}-osx/layouts", target: Pathname.new(File.expand_path('~')).join('Library/Application Support/TouchOSCEditor/layouts')

  zap trash: '~/Library/*/*TouchOSCEditor*'
end
