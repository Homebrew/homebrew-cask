cask 'vitalsource-bookshelf' do
  version '9.2.0.1235'
  sha256 'f4e5282d7d153b6f48a98fe2b69d08c87f976e6bc041fd4ccb2a9f5efe18b388'

  # downloads.vitalbook.com/ was verified as official when first introduced to the cask
  url "https://downloads.vitalbook.com/vsti/bookshelf/#{version.major_minor}/Mac/bookshelf/VitalSource-Bookshelf_#{version}.dmg"
  appcast 'https://support.vitalsource.com/hc/en-us/articles/360014107913-Mac'
  name 'VitalSource Bookshelf'
  homepage 'https://www.vitalsource.com/bookshelf-features'

  depends_on macos: '>= :sierra'

  app 'VitalSource Bookshelf.app'
end
