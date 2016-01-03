cask 'wi2-connect' do
  version :latest
  sha256 :no_check

  # wi2.ne.jp is the official download host per the vendor homepage
  url 'https://service.wi2.ne.jp/sw/autoLogin/MacOSX/Wi2-Connect-MacOSX.dmg'
  name 'Wi2 Connect'
  homepage 'http://wi2.co.jp/jp/300/process/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Wi2 Connect.app'
end
