cask :v1 => 'tuneup' do
  version :latest
  sha256 :no_check

  url 'https://www.tuneupmedia.com/redirect/mac-download'
  appcast 'https://dvk2ozaytrec6.cloudfront.net/mac4/appcast.xml',
          :sha256 => 'aed2e65b28225b29c01f5c02f1be2a0557a71a8930d337bdbfe080b8e39b2386'
  name 'TuneUp'
  homepage 'https://www.tuneupmedia.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  installer :manual => 'TuneUp-Installer.app'
end
