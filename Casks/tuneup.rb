cask 'tuneup' do
  version '2.5.3.0'
  sha256 '8a2722d8719323d692c4a14935d945a3e42946aa9abd8a772fbd3737e4698b5d'

  # cloudfront.net is the official download host per the vendor homepage
  url "https://dvk2ozaytrec6.cloudfront.net/mac4/Sparkle/TuneUp-Installer-#{version.major_minor}.0.zip"
  appcast 'https://dvk2ozaytrec6.cloudfront.net/mac4/appcast.xml',
          :sha256 => '01e2648592caec109db7cbf538ba0de4d9d2ff22b1c10520a7c08e2ebf606e9a'
  name 'TuneUp'
  homepage 'https://www.tuneupmedia.com/'
  license :commercial

  installer :manual => 'TuneUp-Installer.app'
end
