cask 'webhook' do
  version :latest
  sha256 :no_check

  url 'http://dump.webhook.com/application/Webhook.dmg'
  name 'Webhook'
  homepage 'http://www.webhook.com/'

  app 'Webhook.app'
end
