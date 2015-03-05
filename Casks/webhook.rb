cask :v1 => 'webhook' do
  version :latest
  sha256 :no_check

  url 'http://dump.webhook.com/application/Webhook.dmg'
  homepage 'http://www.webhook.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Webhook.app'
end
