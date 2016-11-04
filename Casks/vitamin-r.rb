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
    version '2.43'
    sha256 'a08960027b32249e44d37ec30f1f6f78432f5f4eb116c24650b1a008b6fb7918'
    url "http://www.publicspace.net/download/signedVitamin#{version.major}.zip"
    appcast "http://www.publicspace.net/app/vitamin#{version.major}.xml",
            checkpoint: 'ddba0d4086693bc527ac9623936517dc265c6d44aabbf04145d40b9758250d7e'
    app "Vitamin-R #{version.major}.app"
  end

  name 'Vitamin-R'
  homepage 'http://www.publicspace.net/Vitamin-R/'
end
