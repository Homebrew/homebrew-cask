cask 'vitalsource-bookshelf' do
  version '8.0'
  sha256 '954a6152a74ca9b86b70c1a30ead067a706721b6b833dfb7e5d49569e68b9086'

  # downloads.vitalbook.com/vsti/bookshelf was verified as official when first introduced to the cask
  url "https://downloads.vitalbook.com/vsti/bookshelf/#{version}/MAC/Bookshelf/VitalSource-Bookshelf.dmg"
  name 'VitalSource Bookshelf'
  homepage 'https://www.vitalsource.com/bookshelf-features'

  depends_on macos: '>= :yosemite'

  app 'VitalSource Bookshelf.app'
end
