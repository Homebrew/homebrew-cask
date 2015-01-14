cask :v1 => 'thinkorswim' do
  version :latest
  sha256 :no_check

  url 'https://mediaserver.thinkorswim.com/installer/InstFiles/thinkorswim_installer.dmg'
  homepage 'http://mediaserver.thinkorswim.com/installer/install.html#macosx'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  installer :manual => 'thinkorswim Installer.app'
end
