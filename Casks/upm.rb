cask 'upm' do
  version '1.13'
  sha256 '8f4092603a2f96f38eb32e3101210c2e3771970097367a616769e85e3afdf060'

  url "https://downloads.sourceforge.net/upm/upm-#{version}/upm-mac-#{version}.tar.gz"
  appcast 'https://sourceforge.net/projects/upm/rss',
          checkpoint: '89855b9570b29cfa046bd23fa605d5488ddd34d20b98a5628e5e4972022eb0ab'
  name 'Universal Password Manager'
  homepage 'http://upm.sourceforge.net/'

  app "upm-mac-#{version}/UPM.app"
end
