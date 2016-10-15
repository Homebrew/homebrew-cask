cask 'tuneup' do
  version '2.8.4'
  sha256 'af67b5ac301c9aeb842b90b22402b144ba3d8d4c66f84eb12cb53919bf1e9eb8'

  # dvk2ozaytrec6.cloudfront.net was verified as official when first introduced to the cask
  url "https://dvk2ozaytrec6.cloudfront.net/mac4/Sparkle/TuneUp-#{version}.dmg"
  appcast 'https://dvk2ozaytrec6.cloudfront.net/mac4/appcast.xml',
          checkpoint: '64150d576a3291c6755d79e68b2e52e5d2fd71bee8e7627ac77bf57aca4f6f55'
  name 'TuneUp'
  homepage 'https://www.tuneupmedia.com/'

  installer manual: 'TuneUp-Installer.app'

  caveats do
    malware '27013246'
  end
end
