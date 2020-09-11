# Build a class EmailAddressParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailAddressParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails

  end

  def parse
    #@emails would just reaturn a string of the emails, in quotations
    

    @emails = @emails.gsub(/[\,]/ , " ").split
    #gsub! is a String class method
    #returns a copy of the given string with occurence of the [\,] pattern
    #and substitutes the pattern of " "

    @emails.uniq


  end



end
