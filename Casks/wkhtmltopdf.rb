cask :v1 => 'wkhtmltopdf' do
  version '0.12.3-dev-79ff51e'

  if Hardware::CPU.is_32_bit?
    sha256 'a9eb4127243ec15c3c300f5d64c3a7e93e69400beb68419f93f070cc3ec54c11'
    # bitbucket.org is the official download host per the vendor homepage
    url "https://bitbucket.org/wkhtmltopdf/wkhtmltopdf/downloads/wkhtmltox-#{version}_osx-carbon-i386.pkg"
    pkg "wkhtmltox-#{version}_osx-carbon-i386.pkg"
  else
    sha256 '087d7b81d6e02d6d64605fd0901d538d944b926131bcbe2b87f70bc866473382'
    # bitbucket.org is the official download host per the vendor homepage
    url "https://bitbucket.org/wkhtmltopdf/wkhtmltopdf/downloads/wkhtmltox-#{version}_osx-cocoa-x86-64.pkg"
    pkg "wkhtmltox-#{version}_osx-cocoa-x86-64.pkg"
  end

  name 'wkhtmltopdf'
  homepage 'http://wkhtmltopdf.org/'
  license :gpl

  depends_on :macos => '>= :snow_leopard'

  uninstall :pkgutil => 'org.wkhtmltopdf.wkhtmltox',
            :delete  => [
                          '/usr/local/include/wkhtmltox',
                          '/usr/local/lib/libwkhtmltox.dylib',
                          "/usr/local/lib/libwkhtmltox.#{version.to_i}.dylib",
                          "/usr/local/lib/libwkhtmltox.#{version.to_f}.dylib",
                          "/usr/local/lib/libwkhtmltox.#{version.sub(%r{-.*$},'')}.dylib",
                          '/usr/local/bin/wkhtmltoimage',
                          '/usr/local/bin/wkhtmltopdf'
                        ]

  caveats do
    files_in_usr_local
  end
end
