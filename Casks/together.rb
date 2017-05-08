cask 'together' do
  version '3.8.2'
  sha256 '00ac790499b98a90cf674941fded3f91d15b8daf304c1a855a16eeaa21e722d6'

  url "https://reinventedsoftware.com/together/downloads/Together_#{version}.dmg"
  appcast "https://reinventedsoftware.com/together/downloads/Together#{version.major}.xml",
          checkpoint: 'a2bbf6732a52265b8cd5b1c0aade0a4ed076e479950157b965e35a8e35babc50'
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
