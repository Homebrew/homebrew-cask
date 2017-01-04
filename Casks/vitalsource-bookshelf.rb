cask 'vitalsource-bookshelf' do
  version '7.0'
  sha256 'd9654ad2b9b49d9e212c56b5265f027cb9b9288e9837929bcc51f3879bfdce52'

  # downloads.vitalbook.com/vsti/bookshelf was verified as official when first introduced to the cask
  url "http://downloads.vitalbook.com/vsti/bookshelf/#{version}/MAC/Bookshelf/VitalSource_Bookshelf_#{version}.dmg"
  name 'VitalSource Bookshelf'
  homepage 'https://www.vitalsource.com/bookshelf-features'

  depends_on macos: '>= :mavericks'

  app 'VitalSource Bookshelf.app'
end
