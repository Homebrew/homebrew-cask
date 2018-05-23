cask 'todo-cloud' do
  version '10.4.0'
  sha256 '1ed815a4ab7e57833fcc4bb7c6e47113c1dcaaef7adb3a3256a7637a1a08b0d9'

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
