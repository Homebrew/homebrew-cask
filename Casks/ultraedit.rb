cask 'ultraedit' do
  version '18.00.0.34'
  sha256 '9ea1ddc47797df8b1ada28d6401148d723e600a9c1bcdfee932c60cdeb397304'

  url "http://www.ultraedit.com/files/uex/OSX/UltraEdit_#{version}.dmg",
      user_agent: :fake
  appcast 'https://www.ultraedit.com/downloads/uex.html'
  name 'UltraEdit'
  homepage 'https://www.ultraedit.com/'

  app 'UltraEdit.app'
end
