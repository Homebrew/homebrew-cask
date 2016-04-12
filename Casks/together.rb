cask 'together' do
  version '3.5.8'
  sha256 '2425411e6972a186d289c49b454041943fe6e594a445487cd42894166648b523'

  url "http://reinventedsoftware.com/together/downloads/Together_#{version}.dmg"
  appcast "https://reinventedsoftware.com/together/downloads/Together#{version.major}.xml",
          checkpoint: '9d707f8da1a99bf4e85bdd61274b8310ee4578434146ba9d6fce778062aba7b9'
  name 'Together'
  homepage 'http://reinventedsoftware.com/together/'
  license :commercial

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
