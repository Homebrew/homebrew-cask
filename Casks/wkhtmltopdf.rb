cask "wkhtmltopdf" do
  version "0.12.6-2"
  sha256 "81a66b77b508fede8dbcaa67127203748376568b3673a17f6611b6d51e9894f8"

  url "https://github.com/wkhtmltopdf/packaging/releases/download/#{version}/wkhtmltox-#{version}.macos-cocoa.pkg",
      verified: "github.com/wkhtmltopdf/packaging/"
  name "wkhtmltopdf"
  desc "HTML to PDF renderer"
  homepage "https://wkhtmltopdf.org/"

  livecheck do
    url "https://wkhtmltopdf.org/downloads.html"
    regex(/href=.*?wkhtmltox[._-]v?(\d+(?:\.\d+)*-\d+)[._-]macos[._-]cocoa\.pkg/i)
  end

  pkg "wkhtmltox-#{version}.macos-cocoa.pkg"

  uninstall pkgutil: "org.wkhtmltopdf.wkhtmltox",
            delete:  [
              "/usr/local/bin/wkhtmltoimage",
              "/usr/local/bin/wkhtmltopdf",
              "/usr/local/include/wkhtmltox",
              "/usr/local/lib/libwkhtmltox.#{version.major_minor}.dylib",
              "/usr/local/lib/libwkhtmltox.#{version.major}.dylib",
              "/usr/local/lib/libwkhtmltox.#{version.sub(/-.*$/, "")}.dylib",
              "/usr/local/lib/libwkhtmltox.dylib",
            ]

  caveats do
    files_in_usr_local
  end
end
