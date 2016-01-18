cask 'touchosc-editor' do
  version '1.7.0'
  sha256 'c23baa9eb9f3c15bb71f83f713a6b2e9aa01cc0ffe0acc15f23a6a8042acb766'

  url "http://hexler.net/pub/touchosc/touchosc-editor-#{version}-osx.zip"
  name 'TouchOSC Editor'
  homepage 'http://hexler.net/software/touchosc'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app "touchosc-editor-#{version}-osx/TouchOSC Editor.app"
  artifact "touchosc-editor-#{version}-osx/layouts", target: Pathname.new(File.expand_path('~')).join('Library/Application Support/TouchOSCEditor/layouts')

  zap delete: '~/Library/*/*TouchOSCEditor*'
end
