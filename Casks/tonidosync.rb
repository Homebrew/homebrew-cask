cask 'tonidosync' do
  version :latest
  sha256 :no_check

  # patch.codelathe.com/tonido was verified as official when first introduced to the cask
  url 'http://patch.codelathe.com/tonido/live/installer/x86-darwin/TonidoSync264.dmg'
  name 'Tonido Sync for Mac'
  homepage 'http://www.tonido.com/'

  app 'tonidosync2.app'
end
