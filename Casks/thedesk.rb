cask 'thedesk' do
  version :latest
  sha256 :no_check

  url 'https://dl.thedesk.top/TheDesk-darwin-x64.zip'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
