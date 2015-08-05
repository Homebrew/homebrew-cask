cask :v1 => 'wi2-connect' do
  version :latest
  sha256 '2946fb1c6997d64430eb7c8f95d37262df1c1add636a6c3571e36735ee76d0e5'

  url 'https://service.wi2.ne.jp/sw/autoLogin/MacOSX/Wi2-Connect-MacOSX.dmg'
  name 'Wi2 Connect'
  homepage 'http://wi2.co.jp/jp/300/process/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Wi2 Connect.app'
end
