cask :v1 => 'tuneup' do
  version :latest
  sha256 :no_check

  url 'https://www.tuneupmedia.com/redirect/mac-download'
  appcast 'https://dvk2ozaytrec6.cloudfront.net/mac4/appcast.xml',
          :sha256 => '2a2db87df2326bfab9f9922517096eb11090d6a7e3aa2f1bbf44810b52e8a9d2'
  name 'TuneUp'
  homepage 'https://www.tuneupmedia.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  installer :manual => 'TuneUp-Installer.app'
end
