require_relative  '../lib/RSA'


	describe RSA do
		context "some encrypts and decrypts" do
			describe '#n'
				it "returns n" do 
					rsa = RSA.new(8,7,6)
					expect(rsa.n).to eql(8)
				end
			end
			describe '#e'
				it "returns e" do 
					rsa = RSA.new(8,7,6)
					expect(rsa.e).to eql(7)
				end
			end
			describe '#d'
				it "returns d" do 
					rsa = RSA.new(8,7,6)
					expect(rsa.d).to eql(6)
				end
		
			end
		
			describe '#encrypt'
				it "encrypts some message" do 
					rsa = RSA.new(143,11,11)
					expect(rsa.encrypt('S')).to eql(88)
				end		
			end
		
			describe '#decrypt'
				it "decrypts some message" do 
					rsa = RSA.new(143,11,11)
					expect(rsa.decrypt(88)).to eql('S')
				end		
			end

			describe '#encrypt'
				it "encrypts some message" do 
					rsa = RSA.new(221,7,13)
					expect(rsa.encrypt('K')).to eql(76)
				end		
			end
		
			describe '#decrypt'
				it "decrypts some message" do 
					rsa = RSA.new(143,11,11)
					expect(rsa.decrypt(76)).to eql('K')
				end		
			end
	
			describe '#encrypt'
				it "encrypts some message" do 
					rsa = RSA.new(95,5,29)
					expect(rsa.encrypt('Hello')).to eql(7269767674)
				end		
			end
		
			describe '#decrypt'
				it "decrypts some message" do 
					rsa = RSA.new(95,5,29)
					expect(rsa.decrypt(7269767674)).to eql('Hello')
				end		
			end
	end
end

	

