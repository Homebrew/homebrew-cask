cask 'todo-cloud' do
  version '10.4.2'
  sha256 'ea794b10ec5b7fa5cd99019cffc365661d96b6637cd1afbbba48e0405dcde742'

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
