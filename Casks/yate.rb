cask 'yate' do
  version '3.17.1'
  sha256 'e9de30bb90d1cfbc1d031e070358a5355c9ba0cf8477ab4d7113e1056dd86e5c'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip',
      using: :post
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml',
          checkpoint: '82be8965830e57d9a871bab2635370349cbf8832b65d64359c9589f5eef53884'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  app 'Yate.app'
end
