cask 'vimediamanager' do
  version '0.7.17'
  sha256 'd4948aa0c70cfd860c491b13016bb4a3355d3a40bf04189580046a791009011f'

  url "https://github.com/vidalvanbergen/ViMediaManager/releases/download/v#{version.minor}a#{version.patch}/ViMediaManager_v#{version}c.dmg"
  appcast 'https://github.com/vidalvanbergen/ViMediaManager/releases.atom',
          checkpoint: 'b6a846e7367ccdf40e7cec2683c08bc1d12c6095d42ac98288ecca9490de4cfb'
  name 'ViMediaManager'
  homepage 'https://github.com/vidalvanbergen/ViMediaManager'

  app 'ViMediaManager.app'
end
