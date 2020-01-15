cask 'thorn-writing' do
  version '0.1.0'
  sha256 'cf9e5261a43416f7b4b4518218083aa50c2eb6e650c776b43d4c76a6ca4b4537'

  # github.com/Greathings-Lab/Thorn-Writing/ was verified as official when first introduced to the cask
  url "https://github.com/Greathings-Lab/Thorn-Writing/releases/download/v#{version}-beta/Thorn.Writing.#{version}-beta.dmg"
  appcast 'https://github.com/Greathings-Lab/Thorn-Writing/releases.atom'
  name 'Thorn Writing'
  homepage 'https://thorn.greathin.gs/'

  depends_on macos: '>= :mavericks'

  app 'Thorn Writing.app'
end
