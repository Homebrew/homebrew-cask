cask 'together' do
  version '3.8.5'
  sha256 'e49cf05eb8d25624d5dfafbbdfee7e326be6b7df601357b67f67897f3ecb5ac1'

  url "https://reinventedsoftware.com/together/downloads/Together_#{version}.dmg"
  appcast "https://reinventedsoftware.com/together/downloads/Together#{version.major}.xml",
          checkpoint: '7a317de709aeaa399a298c52ce308d898bd77a948ca3330ed0e0c011c41b39f8'
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
