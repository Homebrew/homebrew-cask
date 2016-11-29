cask 'vitalsource-bookshelf' do
  if MacOS.version <= :lion
    version '6.5.2'
    sha256 'bf5873bb39ff76421a55c9ab769007bb1af64b21dabf6630a4087bbc29c27d55'
    url "http://downloads.vitalbook.com/vsti/bookshelf/#{version}/MAC/Bookshelf/VitalSource_Bookshelf_#{version}.zip"
  else
    version '6.8'
    sha256 '01153395bb01f79cf11bc5091568c35b3d5de6a0725254bce8b39e0b57a5b031'
    url "http://downloads.vitalbook.com/vsti/bookshelf/#{version}/MAC/BOOKSHELF/VitalSource_Bookshelf_#{version}.zip"
  end

  appcast 'https://services.vitalbook.com/version/check',
          checkpoint: 'a310b400eadb9aabc7bcf12e5e56ee2dd80d595288a380d8d2a572b242016bb8'
  name 'VitalSource Bookshelf'
  homepage 'https://www.vitalsource.com/bookshelf-features'

  app 'VitalSource Bookshelf.app'
end
