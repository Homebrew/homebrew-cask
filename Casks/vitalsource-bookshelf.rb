cask 'vitalsource-bookshelf' do
  version '7.5'
  sha256 '7f794440e696b0e221ba26ab6818359cd5ed03d84c96713dfc9c68bd4f43bb21'

  # downloads.vitalbook.com/vsti/bookshelf was verified as official when first introduced to the cask
  url "http://downloads.vitalbook.com/vsti/bookshelf/#{version}/MAC/Bookshelf/Bookshelf_#{version}.dmg"
  name 'VitalSource Bookshelf'
  homepage 'https://www.vitalsource.com/bookshelf-features'

  depends_on macos: '>= :mavericks'

  app 'VitalSource Bookshelf.app'
end
