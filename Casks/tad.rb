cask 'tad' do
  version '0.8.5'
  sha256 'd18ee34912d9730dfd8608a0063aaadac83ed56ae168e2659650f7133142eacb'

  # github.com/antonycourtney/tad was verified as official when first introduced to the cask
  url "https://github.com/antonycourtney/tad/releases/download/v#{version}/tad-#{version}.dmg"
  appcast 'https://github.com/antonycourtney/tad/releases.atom'
  name 'Tad'
  homepage 'https://www.tadviewer.com/'

  app 'Tad.app'
  binary "#{appdir}/Tad.app/Contents/Resources/tad.sh", target: 'tad'
end
