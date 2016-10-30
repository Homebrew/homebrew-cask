cask 'tipp10' do
  version '2.1.0'
  sha256 '023f9545b78a7ca35eea3b23597b6380a4f4d42cc75ace72dcadf645be9edb93'

  url "https://www.tipp10.com/en/download/getfile/1/#{Time.now.to_i}/"
  name 'TIPP10'
  homepage 'https://www.tipp10.com/'

  app 'TIPP10.app'
end
