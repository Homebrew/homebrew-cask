cask 'yate' do
  version '3.11.0.2'
  sha256 '30fbb8e175ef5c2b0d70338229ac0999e6e05d7d911d2bd0d7ce8ae72d7e0291'

  url 'https://2manyrobots.com/Builds/Yate/Yate.dmg'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml',
          checkpoint: 'ae0423024ab5e89d7dfcaab0078d3351e45e6e63a332e34a99c04b201e48881f'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'
  license :commercial

  app 'Yate.app'
end
