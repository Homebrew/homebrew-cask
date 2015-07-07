cask :v1 => 'zerobranestudio' do
  version '1.10'
  sha256 'bf407b82d2ec6c173dbe0580c264e4ef769ef147fb952918ef08edeff703df14'

  url "https://download.zerobrane.com/ZeroBraneStudioEduPack-#{version}-macos.dmg"
  name 'ZeroBrane Studio'
  homepage 'https://studio.zerobrane.com'
  license :mit

  app 'ZeroBraneStudio.app'
end
