cask 'zulip' do
  version :latest
  sha256 :no_check

  # zulip.com was verified as official when first introduced to the cask
  url 'https://zulip.com/dist/apps/mac/Zulip-latest.dmg'
  name 'Zulip'
  homepage 'https://www.zulip.org/'

  app 'Zulip.app'
end
