cask 'together' do
  version '3.8.8'
  sha256 '689992d5d84f1137cbbd23e9b9114dd56545fbe8df40310ea19b715c447fbae2'

  url "https://reinventedsoftware.com/together/downloads/Together_#{version}.dmg"
  appcast "https://reinventedsoftware.com/together/downloads/Together#{version.major}.xml"
  name 'Together'
  homepage 'https://reinventedsoftware.com/together/'

  app "Together #{version.major}.app"

  zap trash: [
               "~/Library/Application Support/Together #{version.major}",
               '~/Library/Caches/Together',
               "~/Library/Caches/com.reinvented.Together#{version.major}",
               "~/Library/Preferences/com.reinvented.Together#{version.major}.shared.plist",
               "~/Library/Preferences/com.reinvented.Together#{version.major}.plist",
               "~/Library/Saved Application State/com.reinvented.Together#{version.major}.savedState",
             ]
end
