cask :v1 => 'yate' do
  version :latest
  sha256 :no_check

  url 'http://2manyrobots.com/Builds/Yate/Yate.dmg'
  homepage 'http://2manyrobots.com/yate/'
  license :commercial

  app 'Yate.app'
end
