cask :v1 => 'todoist' do
  version '6.0.3'
  sha256 '5457917cbc22092e12f736dfd7b1d22a2cb62ad0cda82d7b1c053fe287d9112e'

  # cloudfront.net is the official download host per the appcast feed
  url 'https://d2dq6e731uoz0t.cloudfront.net/f34bc666b8a2458496a5c00a115f7cbd/as/Todoist.zip'
  appcast 'https://todoist.com/static/native_apps/mac_app.xml'
  name 'Todoist'
  homepage 'https://todoist.com'
  license :gratis

  app 'Todoist.app'

  postflight do
    suppress_move_to_applications
  end

  zap :delete => [
                  '~/Library/Application Support/Todoist',
                  '~/Library/Preferences/com.todoist.mac.Todoist.plist',
                 ]
end
