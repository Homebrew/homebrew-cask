cask 'yakyak' do
  version '1.4.3'
  sha256 'a8e220046279f2794087c8609bcc643e1171e83a84b93967b2c169362289a411'

  url "https://github.com/yakyak/yakyak/releases/download/v#{version}/yakyak-#{version}-osx.zip"
  appcast 'https://github.com/yakyak/yakyak/releases.atom',
          checkpoint: '0c3cfd8553b156fe6e0254af99722e069dc69903d45d95b090502dcfd3efd2c0'
  name 'Yakyak'
  homepage 'https://github.com/yakyak/yakyak'

  app 'YakYak-darwin-x64/YakYak.app'
end
