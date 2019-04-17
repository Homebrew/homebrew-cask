cask 'trader-workstation' do
  version '975'
  sha256 '623d77f897158d2c316e1e69a8a7243ccedaec2433c81f50cb4f2ae1a79970e8'

  url 'https://download2.interactivebrokers.com/installers/tws/latest-standalone/tws-latest-standalone-macosx-x64.dmg'
  name 'Trader Workstation'
  homepage 'https://www.interactivebrokers.com/'

  installer script: {
                      executable: "#{staged_path}/Trader Workstation #{version} Installer.app/Contents/MacOS/JavaApplicationStub",
                      args:       ['-q'],
                    }

  uninstall quit:   'com.install4j.5889-6375-8446-2021.22',
            script: {
                      executable: "#{ENV['HOME']}/Applications/Trader Workstation #{version}/Trader Workstation #{version} Uninstaller.app/Contents/MacOS/JavaApplicationStub",
                      args:       ['-q'],
                    }
end
