cask 'touchosc-editor' do
  version '1.8.6'
  sha256 '2ed7aa7ef99f3f1340af31dc54c89623e971ff3ba50ce09f75b1a5f0274de3f9'

  url "https://hexler.net/pub/touchosc/touchosc-editor-#{version}-osx.zip"
  appcast 'https://hexler.net/software/touchosc'
  name 'TouchOSC Editor'
  homepage 'https://hexler.net/software/touchosc'

  app "touchosc-editor-#{version}-osx/TouchOSC Editor.app"
  artifact "touchosc-editor-#{version}-osx/layouts", target: Pathname.new(File.expand_path('~')).join('Library/Application Support/TouchOSCEditor/layouts')

  zap trash: '~/Library/*/*TouchOSCEditor*'
end
