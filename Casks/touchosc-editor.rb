cask 'touchosc-editor' do
  version '1.8.1'
  sha256 '6997ad5ffbe24b0199dafa3b8b3c52e28a61892fc7c6e6274e2b8b93919a3544'

  url "http://hexler.net/pub/touchosc/touchosc-editor-#{version}-osx.zip"
  name 'TouchOSC Editor'
  homepage 'http://hexler.net/software/touchosc'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app "touchosc-editor-#{version}-osx/TouchOSC Editor.app"
  artifact "touchosc-editor-#{version}-osx/layouts", target: Pathname.new(File.expand_path('~')).join('Library/Application Support/TouchOSCEditor/layouts')

  zap delete: '~/Library/*/*TouchOSCEditor*'
end
