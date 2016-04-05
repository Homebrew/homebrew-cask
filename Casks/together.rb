cask 'together' do
  version '3.5.8'
  sha256 '2425411e6972a186d289c49b454041943fe6e594a445487cd42894166648b523'

  url "http://reinventedsoftware.com/together/downloads/Together_#{version}.dmg"
  appcast 'http://reinventedsoftware.com/together/downloads/',
          checkpoint: 'a83aba19c678378af423f1f93c57e67272f8c657439500d2492172b44d3079b8'
  name "Together #{version.major}"
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
