cask 'todo-cloud' do
  version '10.4.3'
  sha256 'ddf969227a908558c2ecda4d6696108e4ca50e32c608ffa95aa04df7cefef63e'

  url "http://builds.appigo.com/todo-cloud/macos/Todo+Cloud-PROD-#{version}-mac.dmg"
  name 'Todo Cloud'
  homepage 'http://www.appigo.com/'

  app 'Todo Cloud.app'

  zap trash: [
               "~/Library/Preferences/com.appigo.todo#{version.major}.plist",
               "~/Library/Preferences/com.appigo.todo#{version.major}.helper.plist",
               "~/Library/Saved Application State/com.appigo.todo#{version.major}.savedState",
             ]
end
