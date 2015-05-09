class PostMailer < ActionMailer::Base

	def post_created
		mail(to: "cesar.astudillo@gmail.com",
			from: "cesar@gmail.com",
			subject: "work ???",
			body:  "worcking "
			)
	end

end