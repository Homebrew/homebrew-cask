cask 'touchosc-editor' do
  version '1.8.2'
  sha256 '37d22796d50199719b7a6e618817ebb5113ea15b3dc2a9686ca60f14774cfd81'

  url "http://hexler.net/pub/touchosc/touchosc-editor-#{version}-osx.zip"
  name 'TouchOSC Editor'
  homepage 'https://hexler.net/software/touchosc'

  app "touchosc-editor-#{version}-osx/TouchOSC Editor.app"
  artifact "touchosc-editor-#{version}-osx/layouts", target: Pathname.new(File.expand_path('~')).join('Library/Application Support/TouchOSCEditor/layouts')

  zap trash: '~/Library/*/*TouchOSCEditor*'
end
