require "xclocalize/version"

module XCLocalize
  def self.printfile(path='/Users/ogan/workspace/ruby/xclocalize/test/Localizable.strings')
    all_items = []

    puts path

    # file = File.open('/Users/ogan/workspace/ruby/xclocalize/test/Localizable.strings','r+:UTF-8')do |file|
    file = File.open(path,'r+:UTF-8')do |file|
      file.each_line do |line|
        line.scan(/^[\s]*["]{1}(.+)["]{1}[\s]*[=][\s]*["]{1}(.*)["]{1}[\s]*[;]+/) do |key,value|
          hash = { key => value}
          all_items << hash
        end
      end
    end

    puts all_items
    return all_items
  end
end


# string singleLineCommentRegex{
#   get {
#     return "(\\/\\/(.*?)$)";
#   }
# }
#
# string multiLineCommentRegex{
#   get {
#     return "(\\/\\*(.*?)\\*\\/)";
#   }
# }