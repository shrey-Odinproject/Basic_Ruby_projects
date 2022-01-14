require './lib/Ceaser_Cipher'

describe "encode_sentence method" do
  it "encodes for +ve key" do
    expect(encode_sentence('apple',2)).to eql('crrng')
  end

  it "does not encodes for -ve key" do
    expect(encode_sentence('apple',-12)).to eql(nil)
  end

  it "encodes only alphabets" do
    expect(encode_sentence('My name is what?, my name is who? , 78& is ',7)).to eql("Tf uhtl pz doha?, tf uhtl pz dov? , 78& pz")
  end

  it "as it is when key is 0" do
    expect(encode_sentence('apple',0)).to eql('apple')
  end
end