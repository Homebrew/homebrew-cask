cask 'vitalsource-bookshelf' do
  if MacOS.release <= :lion
    version '6.5.2'
    sha256 'bf5873bb39ff76421a55c9ab769007bb1af64b21dabf6630a4087bbc29c27d55'
    url "http://downloads.vitalbook.com/vsti/bookshelf/#{version}/MAC/Bookshelf/VitalSource_Bookshelf_#{version}.zip"
  else
    version '6.6'
    sha256 '216cae475c4507a0de553e3fbde72575589f407aa1a2d48334a49804a00ac4c3'
    url "http://downloads.vitalbook.com/vsti/bookshelf/#{version}/Mac/Bookshelf/VitalSource_Bookshelf_#{version}.zip"
  end

  appcast 'https://services.vitalbook.com/version/check',
          checkpoint: 'a310b400eadb9aabc7bcf12e5e56ee2dd80d595288a380d8d2a572b242016bb8'
  name 'VitalSource Bookshelf'
  homepage 'https://www.vitalsource.com/bookshelf-features'
  license :freemium

  app 'VitalSource Bookshelf.app'
end
