cask 'zulip' do
  version '1.9.0'
  sha256 '330d4351088ef929832f48d720fc5de02cb71557545ccc2a2c00ba6b32394446'

  # github.com/zulip/zulip-electron was verified as official when first introduced to the cask
  url "https://github.com/zulip/zulip-electron/releases/download/v#{version}/Zulip-#{version}-mac.zip"
  appcast 'https://github.com/zulip/zulip-electron/releases.atom',
          checkpoint: '32db585876169f8b441bd1cb58e233ace0946d257e64605cad3415ad5d548c68'
  name 'Zulip'
  homepage 'https://zulipchat.com/'

  auto_updates true

  app 'Zulip.app'
end
