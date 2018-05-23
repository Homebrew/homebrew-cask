cask 'tad' do
  version '0.8.5'
  sha256 'd18ee34912d9730dfd8608a0063aaadac83ed56ae168e2659650f7133142eacb'

  # github.com/antonycourtney/tad was verified as official when first introduced to the cask
  url "https://github.com/antonycourtney/tad/releases/download/v#{version}/tad-#{version}.dmg"
  appcast 'https://github.com/antonycourtney/tad/releases.atom',
          checkpoint: '047fd74d0603b63f2f51f2fecb8bae52128787cb664df1d5b3bcc0a1d2a3a5a1'
  name 'Tad'
  homepage 'http://tadviewer.com/'

  app 'Tad.app'
  binary "#{appdir}/Tad.app/Contents/Resources/tad.sh", target: 'tad'
end
