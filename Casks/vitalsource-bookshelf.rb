cask 'vitalsource-bookshelf' do
  version '9.2.1.1237'
  sha256 '962bdb73a0e5b2cc3bf7752d18dc4314ec534a8ec2a20a76d75d7fb2ad4bdfcf'

  # downloads.vitalbook.com/ was verified as official when first introduced to the cask
  url "https://downloads.vitalbook.com/vsti/bookshelf/#{version.major_minor_patch}/Mac/bookshelf/VitalSource-Bookshelf_#{version}.dmg"
  appcast 'https://support.vitalsource.com/hc/en-us/articles/360014107913-Mac'
  name 'VitalSource Bookshelf'
  homepage 'https://www.vitalsource.com/bookshelf-features'

  depends_on macos: '>= :sierra'

  app 'VitalSource Bookshelf.app'
end
