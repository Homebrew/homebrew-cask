cask 'tuneup' do
  version '2.5.3.0'
  sha256 '8a2722d8719323d692c4a14935d945a3e42946aa9abd8a772fbd3737e4698b5d'

  # cloudfront.net is the official download host per the vendor homepage
  url "https://dvk2ozaytrec6.cloudfront.net/mac4/Sparkle/TuneUp-Installer-#{version.major_minor}.0.zip"
  appcast 'https://dvk2ozaytrec6.cloudfront.net/mac4/appcast.xml',
          :sha256 => '2a2db87df2326bfab9f9922517096eb11090d6a7e3aa2f1bbf44810b52e8a9d2'
  name 'TuneUp'
  homepage 'https://www.tuneupmedia.com/'
  license :commercial

  installer :manual => 'TuneUp-Installer.app'
end
