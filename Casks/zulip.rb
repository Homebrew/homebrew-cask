cask 'zulip' do
  version '2.3.1'
  sha256 '549e6e06d90895964e6ab32dd0bcadc527adcd5503d614f999538e9245e8b6da'

  # github.com/zulip/zulip-electron was verified as official when first introduced to the cask
  url "https://github.com/zulip/zulip-electron/releases/download/v#{version}/Zulip-#{version}-mac.zip"
  appcast 'https://github.com/zulip/zulip-electron/releases.atom',
          checkpoint: '745f7ad0874504a13c8a80daf4446ed7ae0fb675c3ce0b7074ace8f01234e759'
  name 'Zulip'
  homepage 'https://zulipchat.com/'

  auto_updates true

  app 'Zulip.app'
end
