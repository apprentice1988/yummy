if $("#quiz_pic_upload_button").length > 0
	uploader = Qiniu.uploader(
		runtimes: "html5,flash,html4"
		browse_button: "quiz_pic_upload_button" #上传选择的点选按钮，**必需**
		uptoken_url: "/quizzes/uptoken"
		domain: "http://houzi.qiniudn.com"
		container: "quiz_picture_section"
		max_file_size: "5mb"
		flash_swf_url: "js/plupload/Moxie.swf"
		max_retries: 3
		dragdrop: true
		drop_element: "quiz_picture_section"
		chunk_size: "4mb"
		auto_start: true
		init:
			FilesAdded: (up, files) ->
				plupload.each files, (file) ->
				return

			# 文件添加进队列后,处理相关的事情
			BeforeUpload: (up, file) ->
	
			
			# 每个文件上传前,处理相关的事情
			UploadProgress: (up, file) ->
	
			
			# 每个文件上传时,处理相关的事情
			FileUploaded: (up, file, info) ->
				name = $.parseJSON(info).key
				url = "http://houzi.qiniudn.com/" + name
				$("#quiz_picture").attr "value", name
				$("#quiz_pic_upload_button").remove()
				$("#quiz_picture_section").append "<img src='" + url + "?imageView2/1/w/300/h/200'>"
				$("#new_quiz").show()
				return
			Error: (up, err, errTip) ->
	
			#上传出错时,处理相关的事情
			UploadComplete: ->
	
			
			#队列文件处理完毕后,处理相关的事情
			Key: (up, file) ->
				
				# 若想在前端对每个文件的key进行个性化处理，可以配置该函数
				# 该配置必须要在 unique_names: false , save_key: false 时才生效
				key = Date.now().toString()
				
				# do something with key here
				key
	)