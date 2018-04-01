cask 'timestamp' do
  version '1.0.1'
  sha256 'b8062b283ed80f62267e50a4486a8610b7d59cd60d6697ad018c9aae97d478bb'

  # github.com/mzdr/timestamp was verified as official when first introduced to the cask
  url "https://github.com/mzdr/timestamp/releases/download/#{version}/Timestamp-#{version}-mac.zip"
  appcast 'https://github.com/mzdr/timestamp/releases.atom',
          checkpoint: '8b05dd311c62983d609520dc1006ea6d9f22b4ae4d8cd29af59e1b0afec12e2e'
  name 'Timestamp'
  homepage 'https://mzdr.github.io/timestamp/'

  app 'Timestamp.app'
end
