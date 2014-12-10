cask :v1 => 'telegram' do
  version :latest
  sha256 :no_check

  url 'https://rink.hockeyapp.net/api/2/apps/c55f5e74ae5d0ad254df29f71a1b5f0e/?format=zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/c55f5e74ae5d0ad254df29f71a1b5f0e'
  homepage 'https://vk.com/telegram_osx'
  license :unknown    # todo: improve this machine-generated value

  app 'Telegram.app'
end
