cask 'trader-workstation' do
  version '972'
  sha256 'afcc815a50c5f6b2a650ba20755adf0b2749aab7251527dfd02222a403d41d61'

  url 'https://download2.interactivebrokers.com/installers/tws/stable-standalone/tws-stable-standalone-macosx-x64.dmg'
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
