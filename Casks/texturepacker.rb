cask 'texturepacker' do
  version '4.3.3'
  sha256 'cebfc0bd741015f9c6c43562c1d17e41b224c700a3a6fa67f6b8044fb68efaa4'

  url "https://www.codeandweb.com/download/texturepacker/#{version}/TexturePacker-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/TexturePacker/appcast-mac-release.xml',
          checkpoint: '5599a20179c04e0935117d247be0a8da982cd2d540cba2dd5da5465f350a0eef'
  name 'TexturePacker'
  homepage 'https://www.codeandweb.com/texturepacker'

  app 'TexturePacker.app'
end
