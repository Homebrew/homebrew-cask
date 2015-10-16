cask :v1 => 'videobox' do
  version '4.1.2'
  sha256 'bd9e6ae942b729b02c40ad076814be7c5e2f966325c9c5e982070d03443408c5'

  url "https://download.tastyapps.com/videobox_#{version}.dmg"
  name 'Videobox'
  appcast 'https://casts.tastyapps.com/cast.html',
          :sha256 => 'a5946b653f3d86f641836b458e4781d2e97449f0f160674812b18a4700ae30a2'
  homepage 'https://www.tastyapps.com/videobox/'
  license :closed

  app 'Videobox.app'
end
