cask 'zulip' do
  version '2.3.6'
  sha256 'd272239ee32f22e39da7e4c34b073d06ec7ede3860adc6a367f355a60f6ab69f'

  # github.com/zulip/zulip-electron was verified as official when first introduced to the cask
  url "https://github.com/zulip/zulip-electron/releases/download/v#{version}/Zulip-#{version}.zip"
  appcast 'https://github.com/zulip/zulip-electron/releases.atom'
  name 'Zulip'
  homepage 'https://zulipchat.com/'

  auto_updates true

  app 'Zulip.app'
end
