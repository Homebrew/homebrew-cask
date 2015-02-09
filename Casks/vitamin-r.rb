cask :v1 => 'vitamin-r' do

  if MacOS.release <= :leopard
    version "1.48"
    sha256 "dcd9eeb2370f365360b3a3f518a6e6c08e117159"

    url 'http://www.publicspace.net/download/VitaminLeopard.dmg'
    # dropped from appcast feed


  if MacOS.release = :snow_leopard
    version "1.85"
    sha256 "ffd52e7f4ba945e1ecf9ba0c1c43c8ecede13dc7"

    url 'http://www.publicspace.net/download/Vitamin_1_85.dmg'
    # dropped from appcast feed


  if MacOS.release = :lion
    version "280cfa8e39c4cef0681408ae5c169a2fd5c582f2"
    sha256 :no_check

    url 'http://www.publicspace.net/download/Vitamin_2_06.dmg'
    appcast 'http://www.publicspace.net/app/vitamin2.xml'


  if MacOS.release = :mountain_lion or MacOS.release = :mavericks
    version "2.19"
    sha256 "f7b9423e90da4a41d1d1f4f7443afad9ae9f278e"

    url 'http://www.publicspace.net/download/Vitamin_2_19.dmg'
    appcast 'http://www.publicspace.net/app/vitamin2.xml'


  else
    version :latest
    sha256 :no_check

    url 'http://www.publicspace.net/download/Vitamin.dmg'
    appcast 'http://www.publicspace.net/app/vitamin2.xml'
  end

    name 'Vitamin-R'
    homepage 'http://www.publicspace.net/Vitamin-R/'
    license :commercial

    app 'Vitamin-R 2.app'
end
