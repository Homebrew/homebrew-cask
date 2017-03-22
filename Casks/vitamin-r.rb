cask 'vitamin-r' do
  if MacOS.version <= :leopard
    version '1.48'
    sha256 '9a06bbf02da9ff61d10fc5cc14ff888c6125e8ccef92dc42e3878284c46afe45'
    url 'http://www.publicspace.net/download/VitaminLeopard.dmg'
    app 'Vitamin-R.app'
  elsif MacOS.version <= :snow_leopard
    version '1.85'
    sha256 'cf5676f710a9be0f290aa20c2b1f9feaf87f162b580987f7c08477a2f13b2705'
    url "http://www.publicspace.net/download/Vitamin_#{version.dots_to_underscores}.dmg"
    app 'Vitamin-R.app'
  elsif MacOS.version <= :lion
    version '2.06'
    sha256 'd6a5839f7a1bdf1b3767f1c48881048f6bee20bf9de55be3936bab3202ee2541'
    url "http://www.publicspace.net/download/Vitamin_#{version.dots_to_underscores}.dmg"
    app "Vitamin-R #{version.major}.app"
  elsif MacOS.version <= :mavericks
    version '2.19'
    sha256 'cfc107e016e364ba1ed2ca091b6b03daf00d748852d06a4de7c421b8f4ece175'
    url "http://www.publicspace.net/download/Vitamin_#{version.dots_to_underscores}.dmg"
    app "Vitamin-R #{version.major}.app"
  else
    version '2.45'
    sha256 'b5059380472d47cc9771691125d53a249924a711dc88993364246f978c7f6e67'
    url "http://www.publicspace.net/download/signedVitamin#{version.major}.zip"
    appcast "http://www.publicspace.net/app/vitamin#{version.major}.xml",
            checkpoint: '9ee7f7129fa7184a5d8238f82adbc4122e5cb9ebfffab380e827cf7957206566'
    app "Vitamin-R #{version.major}.app"
  end

  name 'Vitamin-R'
  homepage 'http://www.publicspace.net/Vitamin-R/'
end
