class PostMailer < ActionMailer::Base

	def post_created
		mail(to: "fenriz006@gmail.com",
			from: "cesar@gmail.com",
			subject: "work ???",
			body:  "worcking "
			)
	end

end