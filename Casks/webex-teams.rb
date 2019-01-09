cask 'webex-teams' do
  version :latest
  sha256 :no_check

  url 'https://www.webex.com/downloads/WebexTeams.dmg'
  name 'Webex Teams'
  homepage 'https://www.webex.com/'

  depends_on macos: '>= :mavericks'

  app 'Webex Teams.app'

  uninstall signal: [
                      ['TERM', 'Cisco-Systems.Spark'],
                    ]

  zap trash: [
               '~/Library/Preferences/Cisco-Systems.Spark.plist',
               '~/Library/Caches/Cisco-Systems.Spark',
               '~/Library/Logs/SparkMacDesktop',
             ]
end
