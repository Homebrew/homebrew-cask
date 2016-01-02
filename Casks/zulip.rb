cask 'zulip' do
  version :latest
  sha256 :no_check

  url 'https://zulip.com/dist/apps/mac/Zulip-latest.dmg'
  name 'Zulip'
  homepage 'https://www.zulip.org/'
  license :apache

  app 'Zulip.app'
end
