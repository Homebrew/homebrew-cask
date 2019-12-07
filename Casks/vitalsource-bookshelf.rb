cask 'vitalsource-bookshelf' do
  version '8.3.1.343'
  sha256 '2c9960601c34e439213b96a3e79838fbf3c251475ba6114c6585e6132d8b44c6'

  # downloads.vitalbook.com was verified as official when first introduced to the cask
  url "https://downloads.vitalbook.com/vsti/bookshelf/#{version.major_minor_patch}/mac/bookshelf/Bookshelf_#{version}.dmg"
  appcast 'https://rink.hockeyapp.net/api/2/apps/eed59906dc1a41199db911c5220234fb'
  name 'VitalSource Bookshelf'
  homepage 'https://www.vitalsource.com/bookshelf-features'

  depends_on macos: '>= :sierra'

  app 'VitalSource Bookshelf.app'
end
