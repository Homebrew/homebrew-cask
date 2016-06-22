class Hbc::Container::Rar < Hbc::Container::GenericUnar
  def self.me?(criteria)
    (criteria.file.include?('application/x-rar;') ||
     criteria.file.include?('application/octet-stream;')) &&
       !criteria.lsar.nil? &&
         criteria.lsar.split("\n").first.split(':').last.include?('RAR') &&
           super
  end
end
