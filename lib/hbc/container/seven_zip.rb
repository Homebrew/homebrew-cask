class Hbc::Container::SevenZip < Hbc::Container::GenericUnar
  def self.me?(criteria)
    # todo: cover self-extracting archives
    criteria.extension('7z') &&
      criteria.file.include?('application/octet-stream;') &&
        criteria.magic_number(0, 2, '7z') &&
          !criteria.lsar.nil? &&
            criteria.lsar.split("\n").first.split(':').last.include?('7-Zip') &&
              super
  end
end
