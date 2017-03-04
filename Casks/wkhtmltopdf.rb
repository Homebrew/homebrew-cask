cask 'wkhtmltopdf' do
  version '0.12.4'
  sha256 '402209589279e092c94d17c76e6fdda6be5cadb21ce12e7c093c41f82b757506'

  # download.gna.org/wkhtmltopdf was verified as official when first introduced to the cask
  url "http://download.gna.org/wkhtmltopdf/#{version.major_minor}/#{version}/wkhtmltox-#{version}_osx-cocoa-x86-64.pkg"
  name 'wkhtmltopdf'
  homepage 'http://wkhtmltopdf.org/'

  pkg "wkhtmltox-#{version}_osx-cocoa-x86-64.pkg"

  uninstall pkgutil: 'org.wkhtmltopdf.wkhtmltox',
            delete:  [
                       '/usr/local/include/wkhtmltox',
                       '/usr/local/lib/libwkhtmltox.dylib',
                       "/usr/local/lib/libwkhtmltox.#{version.major}.dylib",
                       "/usr/local/lib/libwkhtmltox.#{version.major_minor}.dylib",
                       "/usr/local/lib/libwkhtmltox.#{version.sub(%r{-.*$}, '')}.dylib",
                       '/usr/local/bin/wkhtmltoimage',
                       '/usr/local/bin/wkhtmltopdf',
                     ]

  caveats do
    files_in_usr_local
  end
end
