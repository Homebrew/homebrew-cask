cask 'zulip' do
  version '1.7.0'
  sha256 'a4aac2e02893d4cb9b635bfc3fcb561abdfd4c1d5f014aa3d18d633446321937'

  # github.com/zulip/zulip-electron was verified as official when first introduced to the cask
  url "https://github.com/zulip/zulip-electron/releases/download/v#{version}/Zulip-#{version}-mac.zip"
  appcast 'https://github.com/zulip/zulip-electron/releases.atom',
          checkpoint: 'dfa95171dc99ff77b5e7adebc77e3b64c4831ee3986bd1f901a25b54f052b491'
  name 'Zulip'
  homepage 'https://zulipchat.com/'

  auto_updates true

  app 'Zulip.app'
end
