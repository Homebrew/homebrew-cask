cask 'together' do
  version '3.5.14'
  sha256 '84ba33053a8bff96f006dcb039fc3845d82158dbe3ac3c45d74696dfe924b996'

  url "https://reinventedsoftware.com/together/downloads/Together_#{version}.dmg"
  appcast "https://reinventedsoftware.com/together/downloads/Together#{version.major}.xml",
          checkpoint: '6c1d9fdc1be123f0d54798b8a917bd1d419764ea9ca7362bbf81f59c4e573d32'
  name 'Together'
  homepage 'https://reinventedsoftware.com/together/'

  app "Together #{version.major}.app"

  zap delete: [
                "~/Library/Application Support/Together #{version.major}",
                '~/Library/Caches/Together',
                "~/Library/Caches/com.reinvented.Together#{version.major}",
                "~/Library/Preferences/com.reinvented.Together#{version.major}.shared.plist",
                "~/Library/Preferences/com.reinvented.Together#{version.major}.plist",
                "~/Library/Saved Application State/com.reinvented.Together#{version.major}.savedState",
              ]
end
