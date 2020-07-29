cask 'trader-workstation' do
  version '978.2b'
  sha256 '6a64c8615b31e29430f06415079db1dda6263f4985a9305520fbb818a8dfbd60'

  url 'https://download2.interactivebrokers.com/installers/tws/stable-standalone/tws-stable-standalone-macosx-x64.dmg'
  name 'Trader Workstation'
  homepage 'https://www.interactivebrokers.com/'

  installer script: {
                      executable: "#{staged_path}/Trader Workstation #{version.major} Installer.app/Contents/MacOS/JavaApplicationStub",
                      args:       ['-q'],
                    }

  uninstall quit:   'com.install4j.5889-6375-8446-2021.22',
            script: {
                      executable: "#{ENV['HOME']}/Applications/Trader Workstation #{version.major}/Trader Workstation #{version.major} Uninstaller.app/Contents/MacOS/JavaApplicationStub",
                      args:       ['-q'],
                    }
end
