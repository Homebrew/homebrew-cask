cask 'vitalsource-bookshelf' do
  version '7.5.1'
  sha256 'ecf1061c98431df91b7a78a0c45b3088c91df0d2efceb2f20c48b6b9147cc031'

  # downloads.vitalbook.com/vsti/bookshelf was verified as official when first introduced to the cask
  url "http://downloads.vitalbook.com/vsti/bookshelf/#{version}/MAC/Bookshelf/VitalSource_Bookshelf.dmg"
  name 'VitalSource Bookshelf'
  homepage 'https://www.vitalsource.com/bookshelf-features'

  depends_on macos: '>= :mavericks'

  app 'VitalSource Bookshelf.app'
end
