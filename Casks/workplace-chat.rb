cask 'workplace-chat' do
  version :latest
  sha256 :no_check

  url 'https://www.facebook.com/work/chat/download/mac',
      referer: 'https://www.facebook.com/workplace/chat-app'
  name 'Facebook Workplace Chat'
  homepage 'https://www.facebook.com/workplace/chat-app'

  app 'Workplace Chat.app'
end
