cask 'wtlibrary' do
  version '1.12.1'
  sha256 '5d2f4a2e5b25bf18125bcec7c4fe2662d213c0a696e5b6bc09ec60f7d6ef7867'

  # downloads.sourceforge.net was verified as official when first introduced to the cask
  url 'https://downloads.sourceforge.net/wtlibrary/WtLibrary_1_12_1.dmg'
  name 'Watchtower Library on Mac'
  homepage 'http://www.wtlibrary.net/'

  app 'WtLibrary.app'
end
