load "./TinyToken.rb"
load "./TinyScanner.rb"
# if the file(s) are in the same directory, you can simply precede
# the file name(s) with ./

# filename.txt below is simply the "source code"
# that you write that adheres to your grammar rules
# if it is in the same directory as this file, you can
# simply include the file name, otherwise, you will need
# to specify the entire path to the file as we did above
# to load the other ruby modules
scan = Scanner.new("input.tiny")
tok = scan.nextToken()

# the code below will open a file so that I
# can save tokens to it
tokenFile = File.open("tokens", "w")

# keep "fetching" one token at a time, using your scanner
# until there are no tokens left to scan
while (tok.get_type() != Token::EOF)

  #output for the first token
  puts "Token: #{tok.get_type()} Lexeme: #{tok.get_text()}"


  # You will also need to write the token to a file.
  tokenFile.puts "#{tok.get_type()} #{tok.get_text()}"

  # get the next token available (if there is one)
  tok = scan.nextToken()
end

# There should be one token left (see the boolean condition above)
# putting the last token in the file and closing the file

#Start of modification - test cases for characters
=begin
puts "\n All Test cases for the tokens."
output.put "All Test cases for the tokens."

tok = Token.new(Token::LPAREN, "(")
puts "Token: #{tok.get_type()} Lexeme: #{tok.get_text()}"
tokenFile.puts "#{tok.get_type()} #{tok.get_text()}"

tok = Token.new(Token::RPAREN, ")")
puts "Token: #{tok.get_type()} Lexeme: #{tok.get_text()}"
tokenFile.puts "#{tok.get_type()} #{tok.get_text()}"

tok = Token.new(Token::ADDOP, "+")
puts "Token: #{tok.get_type()} Lexeme: #{tok.get_text()}"
tokenFile.puts "#{tok.get_type()} #{tok.get_text()}"

tok = Token.new(Token::SUBOP, "-")
puts "Token: #{tok.get_type()} Lexeme: #{tok.get_text()}"
tokenFile.puts "#{tok.get_type()} #{tok.get_text()}"

tok = Token.new(Token::DIVISOP, "/")
puts "Token: #{tok.get_type()} Lexeme: #{tok.get_text()}"
tokenFile.puts "#{tok.get_type()} #{tok.get_text()}"

tok = Token.new(Token::MULTIOP, "*")
puts "Token: #{tok.get_type()} Lexeme: #{tok.get_text()}"
tokenFile.puts "#{tok.get_type()} #{tok.get_text()}"

tok = Token.new(Token::EQUALS, "=")
puts "Token: #{tok.get_type()} Lexeme: #{tok.get_text()}"
tokenFile.puts "#{tok.get_type()} #{tok.get_text()}"

tok = Token.new(Token::WS, "/n")
puts "Token: #{tok.get_type()} Lexeme: #{tok.get_text()}"
tokenFile.puts "#{tok.get_type()} #{tok.get_text()}"

tok = Token.new(Token::PRINT, "print")
puts "Token: #{tok.get_type()} Lexeme: #{tok.get_text()}"
tokenFile.puts "#{tok.get_type()} #{tok.get_text()}"

tok = Token.new(Token::INT, "123")
puts "Token: #{tok.get_type()} Lexeme: #{tok.get_text()}"
tokenFile.puts "#{tok.get_type()} #{tok.get_text()}"

tok = Token.new(Token::ID, "abc")
puts "Token: #{tok.get_type()} Lexeme: #{tok.get_text()}"
tokenFile.puts "#{tok.get_type()} #{tok.get_text()}"
=end
tokenFile.puts"#{tok}"
tokenFile.close
