cask 'tower' do
  version '2.6.2-353,e3840772'
  sha256 '69ebe1fdda18d644b83524b5e14068021d20309e9c8a8f75fdadc9c73cae4c63'

  # fournova-app-updates.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://fournova-app-updates.s3.amazonaws.com/apps/tower#{version.major}-mac/#{version.split('-').last.tr(',', '-')}/Tower-#{version.major}-#{version.before_comma}.zip"
  appcast "https://updates.fournova.com/updates/tower#{version.major}-mac/stable",
          checkpoint: '51e0914fd755c8eba1815715322e73f8d78213db56925fb9552f6f4722a4ed2e'
  name 'Tower'
  homepage 'https://www.git-tower.com/'

  app 'Tower.app'
  binary "#{appdir}/Tower.app/Contents/MacOS/gittower"

  zap delete: [
                "~/Library/Application Support/com.fournova.Tower#{version.major}",
                "~/Library/Caches/com.fournova.Tower#{version.major}",
                "~/Library/Preferences/com.fournova.Tower#{version.major}.plist",
              ]
end
