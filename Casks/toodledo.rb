cask :v1 => 'toodledo' do
  version :latest
  sha256 :no_check

  url 'https://www.toodledo.com/tools/Toodledo.dmg'
  name 'Toodledo Mac Menu Bar App'
  homepage 'https://www.toodledo.com/tools/mac_menubar.php'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Toodledo.app'
end
