cask 'touchosc-editor' do
  version '1.8.6'
  sha256 '8ca5f88adfffc5c0e2028cb63fe1c4a4b0c4aafd690eedbe2e6f42ad456070d1'

  url "https://hexler.net/pub/touchosc/touchosc-editor-#{version}-osx.zip"
  appcast 'https://hexler.net/software/touchosc'
  name 'TouchOSC Editor'
  homepage 'https://hexler.net/software/touchosc'

  app "touchosc-editor-#{version}-osx/TouchOSC Editor.app"
  artifact "touchosc-editor-#{version}-osx/layouts", target: Pathname.new(File.expand_path('~')).join('Library/Application Support/TouchOSCEditor/layouts')

  zap trash: '~/Library/*/*TouchOSCEditor*'
end
