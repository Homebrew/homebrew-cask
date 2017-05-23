cask 'yakyak' do
  version '1.4.3'
  sha256 'a8e220046279f2794087c8609bcc643e1171e83a84b93967b2c169362289a411'

  url "https://github.com/yakyak/yakyak/releases/download/v#{version}/yakyak-#{version}-osx.zip"
  appcast 'https://github.com/yakyak/yakyak/releases.atom',
          checkpoint: 'b57fee0629bf5ebba6731d8ad992719d70155c12f0987916483b8d54960c0bab'
  name 'Yakyak'
  homepage 'https://github.com/yakyak/yakyak'

  app 'yakyak-darwin-x64/Yakyak.app'
end
