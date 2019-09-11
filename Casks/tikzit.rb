cask 'tikzit' do
  version '2.1.4'
  sha256 'aa3024cb27f89127661c701efad7737edd9739b52c1d7008d8d32ddb5793ee2b'

  # github.com/tikzit/tikzit was verified as official when first introduced to the cask
  url "https://github.com/tikzit/tikzit/releases/download/v#{version}/tikzit-osx.dmg"
  appcast 'https://github.com/tikzit/tikzit/releases.atom'
  name 'TikZiT'
  homepage 'https://tikzit.github.io/'

  depends_on macos: '>= :sierra'

  app 'TikZiT.app'
end
