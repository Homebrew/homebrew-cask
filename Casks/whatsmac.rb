cask :v1 => 'whatsmac' do
  version '1.0.0'
  sha256 '5a0cd10ddaa3a4efa13fca4f703e1290c22849ccc72e84304a705c218c175186'

  url "https://github.com/stonesam92/WhatsMac/releases/download/v#{version}/WhatsMac.#{version.to_f}.zip"
  appcast 'https://github.com/stonesam92/WhatsMac/releases.atom'
  name 'WhatsMac'
  homepage 'https://github.com/stonesam92/WhatsMac'
  license :oss

  app 'WhatsMac.app'
end
