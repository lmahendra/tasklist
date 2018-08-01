module UserExt
	def check_html_format
		request.format.html?
	end
	def set_user
		@user = params.has_key?(:token) ? User.find_by(api_key: params[:token]) : current_user
      	unless @user
        	render json: {"code":401, "error":"Not Authorised"}
      	end
	end
end