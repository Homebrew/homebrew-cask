cask 'todo-cloud' do
  version '10.3.1'
  sha256 '76eaed95d790bdaf62431b9284f3ce504801ba2de2d5a4978a1ce74d69b61704'

  url "http://builds.appigo.com/todo-cloud/macos/Todo+Cloud-PROD-#{version}-mac.dmg"
  name 'Todo Cloud'
  homepage 'http://www.appigo.com/'

  app 'Todo Cloud.app'

  zap trash: [
               '~/Library/Preferences/com.appigo.todo10.plist',
               '~/Library/Preferences/com.appigo.todo10.helper.plist',
               '~/Library/Saved Application State/com.appigo.todo10.savedState',
             ]
end
