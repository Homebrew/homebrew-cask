cask 'tipp10' do
  # note: "10" is not a version number, but an intrinsic part of the product name
  version :latest
  sha256 :no_check

  url "https://www.tipp10.com/en/download/getfile/1/#{Time.now.to_i}/"
  name 'TIPP10'
  homepage 'https://www.tipp10.com/'

  app 'TIPP10.app'
end
