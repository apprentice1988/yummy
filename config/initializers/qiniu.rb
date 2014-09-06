require 'qiniu'

Qiniu.establish_connection! :access_key => AppConfig.qiniu["access_key"],
                                :secret_key => AppConfig.qiniu["secret_key"]