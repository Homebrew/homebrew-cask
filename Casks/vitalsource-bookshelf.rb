cask 'vitalsource-bookshelf' do
  version '9.0.1.1205'
  sha256 '2ae0a3e11ab27254c2cd176f1c2f687b07673115e2440800690ddb35920d8027'

  # downloads.vitalbook.com was verified as official when first introduced to the cask
  url "https://downloads.vitalbook.com/vsti/bookshelf/#{version.major_minor_patch}/mac/bookshelf/VitalSource-Bookshelf_#{version}.dmg"
  appcast 'https://support.vitalsource.com/hc/en-us/articles/360014107913-Mac'
  name 'VitalSource Bookshelf'
  homepage 'https://www.vitalsource.com/bookshelf-features'

  depends_on macos: '>= :sierra'

  app 'VitalSource Bookshelf.app'
end
