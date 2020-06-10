cask 'touchosc-editor' do
  version '1.8.7'
  sha256 '03290f24b6c8d0286cd847e9552d44942536731d27fa98b676ff32d58485f82a'

  url "https://hexler.net/pub/touchosc/touchosc-editor-#{version}-macos.zip"
  appcast 'https://hexler.net/software/touchosc'
  name 'TouchOSC Editor'
  homepage 'https://hexler.net/software/touchosc'

  app "touchosc-editor-#{version}-macos/TouchOSC Editor.app"
  artifact "touchosc-editor-#{version}-macos/layouts", target: Pathname.new(File.expand_path('~')).join('Library/Application Support/TouchOSCEditor/layouts')

  zap trash: '~/Library/*/*TouchOSCEditor*'
end
