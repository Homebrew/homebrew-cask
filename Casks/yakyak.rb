cask 'yakyak' do
  version '1.5.0'
  sha256 'c4e4eb42ff2224f26134a878110194ee106d139a7b029305bad01cff0c914c5b'

  url "https://github.com/yakyak/yakyak/releases/download/v#{version}/yakyak-#{version}-osx.zip"
  appcast 'https://github.com/yakyak/yakyak/releases.atom',
          checkpoint: '582157119d34959068d6e0f745f5e576c0dc267c413d23b8a9255812d4f4d48b'
  name 'Yakyak'
  homepage 'https://github.com/yakyak/yakyak'

  app 'YakYak-darwin-x64/YakYak.app'
end
