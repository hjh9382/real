# encoding: UTF-8

require 'sinatra' #시나트라를 쓸거다 선언
require './block' #블럭 파일 /클래스를 갖다 쓸거다 선언

b =Blockchain.new #이걸로 마이닝을 하고 다 할거임 

	get '/' do
		"블럭리스트입니다."
	end #로컬호스트 슬래시 쓰면 얘가 나옴 

	get '/mine' do
		b.mining.to_s #b.mining=begin부터 end 까지 계속 반복하는데 0이 아닐 때까지 한다. 그리고 마지막 값을 보여준다.
		
	end
	
