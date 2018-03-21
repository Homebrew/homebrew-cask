cask 'yakyak' do
  version '1.4.3'
  sha256 'a8e220046279f2794087c8609bcc643e1171e83a84b93967b2c169362289a411'

  url "https://github.com/yakyak/yakyak/releases/download/v#{version}/yakyak-#{version}-osx.zip"
  appcast 'https://github.com/yakyak/yakyak/releases.atom',
          checkpoint: '50e926210260f0821aa210704f2b92ef094feac07130d939c29fe52250ca595e'
  name 'Yakyak'
  homepage 'https://github.com/yakyak/yakyak'

  app 'YakYak-darwin-x64/YakYak.app'
end
