cask 'windscribe' do
  version :latest
  sha256 :no_check

  url 'https://assets.windscribe.com/desktop/mac/Windscribe.dmg'
  name 'Windscribe'
  homepage 'https://windscribe.com/'

  app 'Windscribe.app'
end
