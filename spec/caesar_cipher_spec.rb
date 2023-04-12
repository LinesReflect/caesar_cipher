require_relative '../caesar_cipher'

describe CaesarCipher do
  describe "#caesar_cipher" do
    it "returns a modified string when given a string with one charachter" do
      caesar = CaesarCipher.new
      expect(caesar.caesar_cipher('a', 2)).to eql('c')
    end

    it "returns a modified string when given a string with spaces" do
      caesar = CaesarCipher.new
      expect(caesar.caesar_cipher('hello world', 3)).to eql('khoor zruog')
    end

    it "returns a modified string when given a string with upper and lowercase." do
      caesar = CaesarCipher.new
      expect(caesar.caesar_cipher('hElLo WoRlD', 3)).to eql('kHoOr ZrUoG')
    end

    it "returns a modified string when given a string with punctuation" do
      caesar = CaesarCipher.new
      expect(caesar.caesar_cipher('Wow!', 5)).to eql('Btb!')
    end

    it "returns a modified string when given a negative shift value" do
      caesar = CaesarCipher.new
      expect(caesar.caesar_cipher('Change the world', -2)).to eql('Afylec rfc umpjb')
    end

    it "returns an empty string when given an empty string" do
      caesar = CaesarCipher.new
      expect(caesar.caesar_cipher('', 2)).to eql('')
    end
  end
end
