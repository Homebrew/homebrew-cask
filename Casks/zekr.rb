cask 'zekr' do
  version '1.1.0'
  sha256 '95c1fc030f250e29ab7227170d8a670d269810f2281ccd3def6ba81604672518'

  # downloads.sourceforge.net/zekr was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/zekr/zekr-#{version}-mac_64.tgz"
  appcast 'https://sourceforge.net/projects/zekr/rss?path=/Zekr',
          checkpoint: 'd4156f90a39a16f9247164fa8a5536e6c5e396e55fff047cb7fe86aa2f114643'
  name 'Zekr'
  homepage 'http://zekr.org/'

  app 'Zekr.app'

  caveats do
    depends_on_java('6+')
  end
end
