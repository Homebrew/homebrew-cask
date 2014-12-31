cask :v1 => 'videobox' do
  version '4.1.2'
  sha256 'bd9e6ae942b729b02c40ad076814be7c5e2f966325c9c5e982070d03443408c5'

  url "http://download.tastyapps.com/videobox_#{version}.dmg"
  homepage 'http://www.tastyapps.com/videobox/'
  license :closed

  app 'Videobox.app'
end
