cask 'zulip' do
  version '2.3.82'
  sha256 '368d7ddcb672d6e6e3428ff56e5330f69eae0c2b80e9f088a0e51131ffefdaf8'

  # github.com/zulip/zulip-electron was verified as official when first introduced to the cask
  url "https://github.com/zulip/zulip-electron/releases/download/v#{version}/Zulip-#{version}.zip"
  appcast 'https://github.com/zulip/zulip-electron/releases.atom'
  name 'Zulip'
  homepage 'https://zulipchat.com/'

  auto_updates true

  app 'Zulip.app'
end
