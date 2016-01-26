cask 'wkhtmltopdf' do
  version '0.12.3'

  if Hardware::CPU.is_32_bit?
    sha256 '6e4613c060eb9e5eb0bd05b0ccd85d09086ef7a1156300e53a9dfba7969b6fc0'
    # gna.org is the official download host per the vendor homepage
    url "http://download.gna.org/wkhtmltopdf/#{version.to_f}/#{version}/wkhtmltox-#{version}_osx-carbon-i386.pkg"
    pkg "wkhtmltox-#{version}_osx-carbon-i386.pkg"
  else
    sha256 'c8aa0f9456444847d08c6c772e2e0e4244813e6a2911eba6c940439df9abd0f0'
    # gna.org is the official download host per the vendor homepage
    url "http://download.gna.org/wkhtmltopdf/#{version.to_f}/#{version}/wkhtmltox-#{version}_osx-cocoa-x86-64.pkg"
    pkg "wkhtmltox-#{version}_osx-cocoa-x86-64.pkg"
  end

  name 'wkhtmltopdf'
  homepage 'http://wkhtmltopdf.org/'
  license :gpl

  depends_on macos: '>= :snow_leopard'

  uninstall pkgutil: 'org.wkhtmltopdf.wkhtmltox',
            delete:  [
                       '/usr/local/include/wkhtmltox',
                       '/usr/local/lib/libwkhtmltox.dylib',
                       "/usr/local/lib/libwkhtmltox.#{version.to_i}.dylib",
                       "/usr/local/lib/libwkhtmltox.#{version.to_f}.dylib",
                       "/usr/local/lib/libwkhtmltox.#{version.sub(%r{-.*$}, '')}.dylib",
                       '/usr/local/bin/wkhtmltoimage',
                       '/usr/local/bin/wkhtmltopdf',
                     ]

  caveats do
    files_in_usr_local
  end
end
