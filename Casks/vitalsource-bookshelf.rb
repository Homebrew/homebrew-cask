cask 'vitalsource-bookshelf' do
  version '9.0.2.1206'
  sha256 'c3f6e6dbfc63e82078a2198633bb9072e648942c4162c49187efe1e2822395e8'

  # downloads.vitalbook.com was verified as official when first introduced to the cask
  url "https://downloads.vitalbook.com/vsti/bookshelf/#{version.major_minor_patch}/bookshelf/VitalSource-Bookshelf_#{version}.dmg"
  appcast 'https://support.vitalsource.com/hc/en-us/articles/360014107913-Mac'
  name 'VitalSource Bookshelf'
  homepage 'https://www.vitalsource.com/bookshelf-features'

  depends_on macos: '>= :sierra'

  app 'VitalSource Bookshelf.app'
end
