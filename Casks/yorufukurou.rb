cask :v1 => 'yorufukurou' do
  version :latest
  sha256 :no_check

  url 'http://aki-null.net/yf/YoruFukurou_SL.zip'
  appcast 'http://sites.google.com/site/yorufukurou/distribution/appcast.xml'
  homepage 'https://sites.google.com/site/yorufukurou/home-en'
  license :unknown

  app 'YoruFukurou.app'
end
