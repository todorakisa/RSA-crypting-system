require_relative '../lib/RSA.rb'
describe RSA do
    ressult = RSA.new(123, 456, 789)
    it "checks return n" do
        expect(ressult.n).to eq(123)
    end
 
    it "checks return e" do
        expect(ressult.e).to eq(456)
    end

    it "checks return d" do
        expect(ressult.d).to eq(789)
    end
	message = "test"
	generated_keys = ressult.new_key
        ressult_with_generated_keys = RSA.new(generated_keys[0], generated_keys[1], generated_keys[2])
    it "checks crypting" do
        expect(ressult_with_generated_keys.decrypt(ressult_with_generated_keys.encrypt(message))).to eq("test")
    end
    		
end
