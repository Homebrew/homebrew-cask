cask 'tuneup' do
  version '2.10.1'
  sha256 '4332684d776c7e3114bc19357360b51fba69c77b8c4c641ed3a518ab9939fe86'

  # d2m5os1cpndbxq.cloudfront.net was verified as official when first introduced to the cask
  url 'http://d2m5os1cpndbxq.cloudfront.net/mac4/Sparkle/TuneUp-Installer.dmg'
  appcast 'https://d2m5os1cpndbxq.cloudfront.net/mac4/appcast.xml',
          checkpoint: '2e1926411a6a93af80ce0d46b1a624acee03691d7cc1c48160bf958bfcef229d'
  name 'TuneUp'
  homepage 'https://www.tuneupmedia.com/'

  installer manual: 'TuneUp-Installer.app'

  caveats do
    malware '27013246'
  end
end
