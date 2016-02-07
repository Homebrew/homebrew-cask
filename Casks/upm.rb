cask 'upm' do
  version '1.13'
  sha256 '8f4092603a2f96f38eb32e3101210c2e3771970097367a616769e85e3afdf060'

  url "http://downloads.sourceforge.net/project/upm/upm-#{version}/upm-mac-#{version}.tar.gz"
  name 'Universal Password Manager'
  homepage 'http://upm.sourceforge.net/'
  license :gpl

  app "upm-mac-#{version}/UPM.app"
end
