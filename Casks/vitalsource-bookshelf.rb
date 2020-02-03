cask 'vitalsource-bookshelf' do
  version '9.1.0.1222'
  sha256 '07a180768db8e313253d3d447694569fa749340db21faea76daf3f01fe6ea7be'

  # downloads.vitalbook.com was verified as official when first introduced to the cask
  url "https://downloads.vitalbook.com/vsti/bookshelf/#{version.major_minor}/Mac/bookshelf/VitalSource-Bookshelf_#{version}.dmg"
  appcast 'https://support.vitalsource.com/hc/en-us/articles/360014107913-Mac'
  name 'VitalSource Bookshelf'
  homepage 'https://www.vitalsource.com/bookshelf-features'

  depends_on macos: '>= :sierra'

  app 'VitalSource Bookshelf.app'
end
