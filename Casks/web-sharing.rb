cask :v1 => 'web-sharing' do
  version :latest
  sha256 :no_check

  url 'https://clickontyler.com/web-sharing/download/'
  homepage 'http://clickontyler.com/web-sharing/'
  license :unknown    # todo: improve this machine-generated value

  prefpane 'Web Sharing.prefPane'
end
