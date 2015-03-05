cask :v1 => 'whiskey' do
  version :latest
  sha256 :no_check

  url 'http://usewhiskey.com/latest'
  homepage 'http://usewhiskey.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Whiskey.app'
end
