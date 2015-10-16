cask :v1 => 'xoctave' do
  version :latest
  sha256 :no_check

  url 'http://www.xoctave.com/demo/xoctave%20demo.dmg'
  name 'Xoctave'
  homepage 'http://www.xoctave.com/'
  license :commercial

  app 'Xoctave.app'

  uninstall :quit => 'org.magnifier.magnifier'

  zap :delete => '~/xoctave'
end
