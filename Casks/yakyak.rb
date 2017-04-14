cask 'yakyak' do
  version '1.4.3'
  sha256 'a8e220046279f2794087c8609bcc643e1171e83a84b93967b2c169362289a411'

  url "https://github.com/yakyak/yakyak/releases/download/v#{version}/yakyak-#{version}-osx.zip"
  appcast 'https://github.com/yakyak/yakyak/releases.atom',
          checkpoint: 'ad612c55efbfbb9d72738e2af20f00ce5fe3fa913a5225f215d606deaf8e345e'
  name 'Yakyak'
  homepage 'https://github.com/yakyak/yakyak'

  app 'yakyak-darwin-x64/Yakyak.app'
end
