module Cask::UnderscoreSupportingURI
  def self.parse(maybe_uri)
    return nil if maybe_uri.nil?
    URI.parse(maybe_uri)
  rescue URI::InvalidURIError
    scheme, host, path = simple_parse(maybe_uri)
    if host =~ /\_/
      URI.parse(without_host_underscores(scheme, host, path)).tap { |uri|
        uri.instance_variable_set('@host', host)
      }
    else
      raise
    end
  end

  def self.simple_parse(maybe_uri)
    scheme, host_and_path = maybe_uri.split('://')
    host, path = host_and_path.split('/', 2)
    [scheme, host, path]
  end

  def self.without_host_underscores(scheme, host, path)
    ["#{scheme}:/", host.gsub(/\_/, '-'), path].join('/')
  end
end
