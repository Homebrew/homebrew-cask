cask 'xoctave' do
  version :latest
  sha256 :no_check

  url 'http://www.xoctave.com/demo/xoctave%20demo.dmg'
  name 'Xoctave'
  homepage 'http://www.xoctave.com/'

  auto_updates true

  app 'Xoctave.app'

  uninstall quit: 'org.magnifier.magnifier'

  zap delete: '~/xoctave'
end
