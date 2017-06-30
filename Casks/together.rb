cask 'together' do
  version '3.8.6'
  sha256 'd0d90cf8bf2f4dd2ab8a3db9a084d9f4aa672ecb3c6c53e97f93a23fe6b537f3'

  url "https://reinventedsoftware.com/together/downloads/Together_#{version}.dmg"
  appcast "https://reinventedsoftware.com/together/downloads/Together#{version.major}.xml",
          checkpoint: '1b9fbab834de660897b21c643e2eeddc70c92e9286cdac0e6adabbaae9acecc5'
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
