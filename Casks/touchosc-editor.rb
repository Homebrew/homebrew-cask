cask 'touchosc-editor' do
  version '1.8.6'
  sha256 '79400ed8df5559286495b72e2b7d0655a69cd5f199c14d65667ee5fbe7e3e9ce'

  url "https://hexler.net/pub/touchosc/touchosc-editor-#{version}-macos.zip"
  appcast 'https://hexler.net/software/touchosc'
  name 'TouchOSC Editor'
  homepage 'https://hexler.net/software/touchosc'

  app "touchosc-editor-#{version}-macos/TouchOSC Editor.app"
  artifact "touchosc-editor-#{version}-macos/layouts", target: Pathname.new(File.expand_path('~')).join('Library/Application Support/TouchOSCEditor/layouts')

  zap trash: '~/Library/*/*TouchOSCEditor*'
end
