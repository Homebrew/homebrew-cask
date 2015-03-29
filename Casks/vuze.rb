cask :v1 => 'vuze' do
  version :latest
  sha256 :no_check

  url 'http://cf1.vuze.com/files/J7/VuzeBittorrentClientInstaller.dmg'
  homepage 'http://www.vuze.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  installer :script => 'Vuze Installer.app/Contents/MacOS/JavaApplicationStub',
            :args => [ '-q' ]

  uninstall :delete => '/Applications/Vuze.app'

  zap :delete => '~/Library/Application Support/Vuze'

  caveats <<-EOS.undent
    #{token} requires Java 6+, you can install the latest Java using

      brew cask install java
  EOS
end
