cask 'tonidosync' do
  version '2.6.4'
  sha256 'ea1577758e5b75e22f91420a450d8192b11247ec81a7efc528394737d31e9c11'

  # patch.codelathe.com/tonido was verified as official when first introduced to the cask
  url "http://patch.codelathe.com/tonido/live/installer/x86-darwin/TonidoSync#{version.no_dots}.dmg"
  name 'Tonido Sync for Mac'
  homepage 'http://www.tonido.com/'

  app "tonidosync#{version.major}.app"
end
