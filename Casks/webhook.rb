cask :v1 => 'webhook' do
  version :latest
  sha256 :no_check

  url 'http://dump.webhook.com/application/Webhook.dmg'
  homepage 'http://www.webhook.com/'
  license :unknown

  app 'Webhook.app'
end
