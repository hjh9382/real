class Blockchain #네이밍은 무조건 대문자 알파벳으로 시작한다

	def mining

		begin
			nonce = rand(100000) #0에서 괄호안 숫자에 있는 값 사이 랜덤값
			hashed = Digest::SHA256.hexdigest(nonce.to_s) 
		end while hashed[0..3] != "0000" #해쉬드의 0부터 3번째 값이 따옴표 안의 값일 때 끝난다

		nonce #the nonce result here replaces b.mining in server.rb
	end

end






