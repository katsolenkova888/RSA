require 'prime'

class RSA
	def initialize(n, e, d)
		@n = n
		@e = e
		@d = d

	end
   
	def n
		#returns the value of 'n' passed in the initialize
		return n
	end
   
	def e
		#returns the value of 'e' passed in the initialize
		return e
	end
   
	def d
		#returns the value of 'd' passed in the initialize
		return d
	end
	
	def gcd (e, euler)
	
		if e > euler
			gcd = e
		else
			gcd = euler
		end

		while gcd != 1 do
			if(e%gcd == 0 && euler%gcd == 0)
				return gcd
			else 
				gcd-=1
			end
		end
	end
   
	def new_key
	#generates a new 'n','e' and 'd' values following the RSA algorithm. Returns a new array of three elements where the first element is 'n', the second is 'e' and the third is 'd'. Each time it 	is called a new key must be returned.
		q = Random.new
		q.rand(10...99)
		while Prime.prime?(q) != true do
			q.rand(10...99)
		end
				
		p = Random.new
		p.rand(10...99)
		while Prime.prime?(p) != true do
			p.rand(10...99)
		end
		n = p*q
		euler = (p-1)*(q-1)
		e = Random.new
		e.rand(2...euler-1)
		while gcd(e,euler) != 1 do
			e.rand(2..euler)
		end
		d = Random.new
		d.rand(1...1000)
		while d*e%euler!=1 do
			d.rand(1...1000)
		end
		array = Array.new(3)
		array.push(n)
		array.push(e)
		array.push(d)
		@n = n
		@e = e
		@d = d
		return array
		
		
	end
   
	def encrypt message
	#encrypts the message passed. The message is of type string. Encrypts each symbol of this string by using its ASCII number representation and returns the encrypted message.
		message.each_byte do |ascii_codes|
			string += ascii_codes.to_s
			m = string.to_i
		end
		c = m^e%n
		return c
		
	end
   
	def decrypt message
	#decrypts the message passed. The message is of type string. Decrypts each symbol of this string Encrypts each symbol of this string by using its ASCII number representationand returns the 		decrypted message. 
		
		message.each_byte do |ascii_codes|
			string += ascii_codes.to_s
			c = string.to_i
		end
		m = c^d%n
		m = string.to_s
		return m
	end 

end
