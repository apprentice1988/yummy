class QiniuApi
	def self.food_uptoken
		put_policy = Qiniu::Auth::PutPolicy.new('houzi')
		Qiniu::Auth.generate_uptoken(put_policy)
	end
end