cask :v1 => 'vuze' do
  version :latest
  sha256 :no_check

  url 'http://cf1.vuze.com/files/J7/VuzeBittorrentClientInstaller.dmg'
  homepage 'http://www.vuze.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  installer :manual => 'Vuze Installer.app'

  uninstall :delete => '/Applications/Vuze.app'

  zap :delete => '~/Library/Application Support/Vuze'

  caveats do
    uninstall_depends_on_default_install_location
  end
end
