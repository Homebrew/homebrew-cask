cask :v1 => 'web-sharing' do
  version :latest
  sha256 :no_check

  url 'https://clickontyler.com/web-sharing/download/'
  homepage 'http://clickontyler.com/web-sharing/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  prefpane 'Web Sharing.prefPane'
end
