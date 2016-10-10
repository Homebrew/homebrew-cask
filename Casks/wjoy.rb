cask 'wjoy' do
  version '0.7.1'
  sha256 '98a9f825634b09b901ad979a6cdda241a04a1cbd7dcd14b4b17b0bebe3f40ee1'

  url "https://github.com/alxn1/wjoy/releases/download/#{version}/wjoy.#{version}.dmg"
  appcast 'https://github.com/alxn1/wjoy/releases.atom',
          checkpoint: '0e823cea5613d6f503e915d6d8367ef91d1d0ebf1f736537870c1c62d133d0ae'
  name 'WJoy'
  homepage 'https://github.com/alxn1/wjoy'

  app 'Wjoy.app'

  caveats do
    discontinued
  end
end
