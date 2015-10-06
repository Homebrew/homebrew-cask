cask :v1 => 'videobox' do
  version '4.1.2'
  sha256 'bd9e6ae942b729b02c40ad076814be7c5e2f966325c9c5e982070d03443408c5'

  url "https://download.tastyapps.com/videobox_#{version}.dmg"
  name 'Videobox'
  appcast 'https://casts.tastyapps.com/cast.html',
          :sha256 => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
  homepage 'https://www.tastyapps.com/videobox/'
  license :closed

  app 'Videobox.app'
end
