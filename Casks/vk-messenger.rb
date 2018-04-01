cask 'vk-messenger' do
  version :latest
  sha256 :no_check

  # desktop.userapi.com/mac/master was verified as official when first introduced to the cask
  url 'https://desktop.userapi.com/mac/master/vk.dmg'
  name 'VK Messenger'
  homepage 'https://vk.com/messenger'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'VK Messenger.app'

  zap trash: [
               '~/Library/Preferences/com.vk.messages.plist',
               '~/Library/Preferences/com.vk.messages.helper.plist',
               '~/Library/Saved Application State/com.vk.messages.savedState',
             ]
end
