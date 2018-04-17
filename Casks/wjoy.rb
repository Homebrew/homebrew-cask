cask 'wjoy' do
  version '0.7.1'
  sha256 '98a9f825634b09b901ad979a6cdda241a04a1cbd7dcd14b4b17b0bebe3f40ee1'

  url "https://github.com/alxn1/wjoy/releases/download/#{version}/wjoy.#{version}.dmg"
  appcast 'https://github.com/alxn1/wjoy/releases.atom',
          checkpoint: '106e09bc615d70facc7075fe79791a576f8d0f0eb1183a4244e032c2570cd29b'
  name 'WJoy'
  homepage 'https://github.com/alxn1/wjoy'

  app 'Wjoy.app'

  caveats do
    discontinued
  end
end
