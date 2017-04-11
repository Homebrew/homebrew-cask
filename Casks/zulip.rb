cask 'zulip' do
  version :latest
  sha256 :no_check

  url 'https://zulip.org/dist/apps/mac/Zulip-latest.dmg'
  name 'Zulip'
  homepage 'https://www.zulip.org/'

  app 'Zulip.app'
end
