cask 'vuze' do
  version :latest
  sha256 :no_check

  url 'https://cf1.vuze.com/files/J7/VuzeBittorrentClientInstaller.dmg'
  name 'Vuze'
  homepage 'https://www.vuze.com/'

  installer script: {
                      executable: 'Vuze Installer.app/Contents/MacOS/JavaApplicationStub',
                      args:       ['-q'],
                      sudo:       true,
                    }

  uninstall delete: '/Applications/Vuze.app'

  zap delete: '~/Library/Application Support/Vuze'

  caveats do
    depends_on_java
  end
end
