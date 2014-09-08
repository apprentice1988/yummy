class Quiz < ActiveRecord::Base
	validates_presence_of :picture, :choices, :level
	def pic_url
		"http://houzi.qiniudn.com/#{picture}?imageView2/1/w/300/h/200"
	end

	def delete_remote_pic
		Qiniu::Storage.delete("houzi", picture)
		return
	end
end
