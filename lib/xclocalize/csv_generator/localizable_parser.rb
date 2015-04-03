module XCLocalize
  class LocalizableParser
    def self.parse_file(file_path)
      return nil unless File.exist?(file_path)

      File.open(path,'r+:UTF-8')do |file|
        file.each_line do |line|
          line.scan(single_line_comment_regex) do |comment|
            puts 'comment: ' + comment
          end

        end
      end
    end

    def self.single_line_comment_regex
      return /(\/\/(.*?)$)/
    end

    def self.multi_line_comment_regex
      return /\/\*(.*?)\*\//
    end

    def self.localizable_item_regex
      return /^[\s]*["](.+)["][\s]*[=][\\s]*["](.*)["][\s]*[;]+/
    end
  end

  class LocalizableItem
    attr_accessor :key
    attr_accessor :value
  end

  class LocalizableCommentItem
    attr_accessor :comment
  end
end