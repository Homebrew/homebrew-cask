require "uri"

module Hbc::UnderscoreSupportingURI
  def self.parse(maybe_uri)
    return nil if maybe_uri.nil?
    URI.parse(maybe_uri)
  rescue URI::InvalidURIError => e
    scheme, host, path = simple_parse(maybe_uri)
    raise e unless path && host.include?("_")
    URI.parse(without_host_underscores(scheme, host, path)).tap do |uri|
      uri.instance_variable_set("@host", host)
    end
  end

  def self.simple_parse(maybe_uri)
    scheme, host_and_path = maybe_uri.split("://")
    host, path = host_and_path.split("/", 2)
    [scheme, host, path]
  rescue StandardError
    nil
  end

  def self.without_host_underscores(scheme, host, path)
    ["#{scheme}:/", host.tr("_", "-"), path].join("/")
  end
end
