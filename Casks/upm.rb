cask :v1 => 'upm' do
  version '1.13'
  sha256 '8f4092603a2f96f38eb32e3101210c2e3771970097367a616769e85e3afdf060'

  url 'http://downloads.sourceforge.net/project/upm/upm-1.13/upm-mac-1.13.tar.gz'
  name 'UPM'
  name 'Universal Password Manager'
  name 'UPM Swing'
  homepage 'http://upm.sourceforge.net/'
  license :gpl

  app 'upm-mac-1.13/UPM.app'
end
