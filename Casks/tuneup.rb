cask 'tuneup' do
  version '2.5.3.0'
  sha256 '8a2722d8719323d692c4a14935d945a3e42946aa9abd8a772fbd3737e4698b5d'

  # dvk2ozaytrec6.cloudfront.net was verified as official when first introduced to the cask
  url "https://dvk2ozaytrec6.cloudfront.net/mac4/Sparkle/TuneUp-Installer-#{version.major_minor}.0.zip"
  appcast 'https://dvk2ozaytrec6.cloudfront.net/mac4/appcast.xml',
          checkpoint: 'fa140f16451aa2604c86fe4f1eed48c80dc183618152552c633dbe3c864ec4f2'
  name 'TuneUp'
  homepage 'https://www.tuneupmedia.com/'

  installer manual: 'TuneUp-Installer.app'

  caveats do
    malware '27013246'
  end
end
