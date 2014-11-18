cask :v1test => 'adobe-air-container' do
  version '1.0.1'
  sha256 '9b6e4174afa76f2af50238364fcf87525bc4ed2287acbe62925107ab6cda5c99'

  url TestHelper.local_binary_url('GMDesk-1.01.air')
  homepage 'http://robertnyman.com/gmdesk/'

  app 'GMDesk.app'
end
