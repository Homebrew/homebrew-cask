cask :v1 => 'todoist' do
  version '6.0.3'
  sha256 :no_check

  # cloudfront.net is the official download host per the appcast feed
  url 'https://d2dq6e731uoz0t.cloudfront.net/f34bc666b8a2458496a5c00a115f7cbd/as/Todoist.zip'
  appcast 'https://todoist.com/static/native_apps/mac_app.xml',
          :sha256 => 'eb3fd73d34933f76bb7e3a375b0438ecc38ddf6df5d423b70eb62c2b4019eaf8'
  name 'Todoist'
  homepage 'https://todoist.com'
  license :freemium

  depends_on :macos => '>= :mountain_lion'
  depends_on :arch => :intel

  app 'Todoist.app'

  postflight do
    suppress_move_to_applications
  end

  zap :delete => [
                  '~/Library/Application Support/Todoist',
                  '~/Library/Preferences/com.todoist.mac.Todoist.plist',
                 ]
end
