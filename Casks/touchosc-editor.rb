cask 'touchosc-editor' do
  version '1.8.6'
  sha256 '5f5b618f026ef38c82577b3c324d8b035f5fdd1212f55d253012382d72efef9c'

  url "https://hexler.net/pub/touchosc/touchosc-editor-#{version}-osx.zip"
  appcast 'https://hexler.net/software/touchosc'
  name 'TouchOSC Editor'
  homepage 'https://hexler.net/software/touchosc'

  app "touchosc-editor-#{version}-osx/TouchOSC Editor.app"
  artifact "touchosc-editor-#{version}-osx/layouts", target: Pathname.new(File.expand_path('~')).join('Library/Application Support/TouchOSCEditor/layouts')

  zap trash: '~/Library/*/*TouchOSCEditor*'
end
