cask 'xdm' do
  version '7.2.7'
  sha256 'b28d3aac96fe9a2ce161bdd4462fe270eac3dd3ce91828f0e308b9d77aa811b4'

  url 'https://downloads.sourceforge.net/xdman/xdm-setup.dmg'
  appcast 'https://sourceforge.net/projects/xdman/rss'
  name 'Xtreme Download Manager'
  homepage 'http://xdman.sourceforge.net/'

  installer script: {
                      executable: "#{staged_path}/install",
                      sudo:       true,
                    }

  uninstall delete: [
                      '/Applications/xdm.app',
                      '~/Library/LaunchAgents/org.sdg.xdman.plist',
                    ]

  zap trash: '~/.xdman'
end
