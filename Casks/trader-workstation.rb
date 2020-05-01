cask 'trader-workstation' do
  version '972.1y'
  sha256 '43cc6ed29036f403d133f97df2f23983a6a56c35d0917a2bc817a79f9121e0fd'

  url 'https://download2.interactivebrokers.com/installers/tws/stable/tws-stable-macosx-x64.dmg'
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
