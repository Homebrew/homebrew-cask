cask 'thinkorswim' do
  version :latest
  sha256 :no_check

  url 'https://mediaserver.thinkorswim.com/installer/InstFiles/thinkorswim_installer.dmg'
  name 'thinkDesktop'
  homepage 'https://mediaserver.thinkorswim.com/installer/install.html#macosx'

  installer script: 'thinkorswim Installer.app/Contents/MacOS/JavaApplicationStub',
            args:   ['-q']

  uninstall script: {
                      executable: '/Applications/thinkorswim/thinkorswim Uninstaller.app/Contents/MacOS/JavaApplicationStub',
                      args:       ['-q'],
                    }
end
