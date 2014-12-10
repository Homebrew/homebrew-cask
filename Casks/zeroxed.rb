cask :v1 => 'zeroxed' do
  version :latest
  sha256 :no_check

  url 'http://www.suavetech.com/cgi-bin/download.cgi?0xED.tar.bz2'
  homepage 'http://www.suavetech.com/0xed/'
  license :unknown    # todo: improve this machine-generated value

  app '0xED.app'

  zap :delete => [
                  '~/Library/Caches/com.suavetech.0xED',
                  '~/Library/Logs/0xED.log',
                 ]
end
