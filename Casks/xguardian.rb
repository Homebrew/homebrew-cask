cask :v1 => 'xguardian' do
  version :latest
  sha256 :no_check

  url 'http://xara.openscanner.cc/download'
  name 'XGuardian'
  homepage 'http://xara.openscanner.cc'
  license :mit

  app 'xguardian.app'

  zap :delete => [
                  '~/Library/Application Support/xguardian',
                  '~/Library/Caches/cc.openscanner.XGuardian',
                 ]
end
