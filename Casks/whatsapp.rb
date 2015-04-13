cask :v1 => 'whatsapp' do
  version '0.1.0'
  sha256 '1c85878b726a84de33b04e2fa7139c71c6804a08a3b14bdd99b400d2f7bbea49'

  url "https://github.com/anatolinicolae/whatsapp/releases/download/v#{version}/WhatsApp-v#{version}.zip"
  name 'WhatsApp'
  homepage 'https://github.com/anatolinicolae/whatsapp'
  license :mit

  app 'WhatsApp.app'
end
