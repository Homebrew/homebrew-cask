cask 'thedesk' do
  version '18.0.2'
  sha256 'bb176ecf2b18a5bdc80cca5395e8c884c9a875409e4016d9668e279f25ef81b1'

  url 'https://dl.thedesk.top/TheDesk-darwin-x64.zip'
  appcast 'https://thedesk.top/'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk-darwin-x64/TheDesk.app'
end
