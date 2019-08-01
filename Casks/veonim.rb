cask 'veonim' do
  version '0.14.0'
  sha256 'fc1f8f0e977a11da4e1a735cd381a99067db38bc8675185ed0a2955eb91102c0'

  url "https://github.com/veonim/veonim/releases/download/#{version}/veonim-#{version}-mac.zip"
  appcast 'https://github.com/veonim/veonim/releases.atom'
  name 'veonim'
  homepage 'https://github.com/veonim/veonim'

  app 'veonim.app'
end
