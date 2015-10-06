cask :v1 => 'whiskey' do
  version :latest
  sha256 :no_check

  url 'http://usewhiskey.com/latest'
  name 'Whiskey'
  appcast 'http://usewhiskey.com/appcast.xml',
          :sha256 => '7ed688377dff74817a7de04a52fb93b41a97f0ebd87cb6db92752f9fa7d5962c'
  homepage 'http://usewhiskey.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Whiskey.app'
end
