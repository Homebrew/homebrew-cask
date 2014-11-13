cask :v1 => 'zephyros' do
  version :latest
  sha256 :no_check

  url 'https://raw.github.com/sdegutis/zephyros/master/Builds/Zephyros-LATEST.app.tar.gz'
  appcast 'https://raw.github.com/sdegutis/zephyros/master/appcast.xml'
  homepage 'https://github.com/sdegutis/zephyros'
  license :oss

  app 'Zephyros.app'
end
