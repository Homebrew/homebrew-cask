cask 'together' do
  version '3.8.1'
  sha256 '8cd067232792c6267939af5d895baac6560cce3eb5a0826e936303b241b61d3b'

  url "https://reinventedsoftware.com/together/downloads/Together_#{version}.dmg"
  appcast "https://reinventedsoftware.com/together/downloads/Together#{version.major}.xml",
          checkpoint: 'a6a9e45f2be85c4a0074cb6ce6de82ab032ba3cbc4d06e166600e00686a13a4f'
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
