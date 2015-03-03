class Pdf < ActiveRecord::Base
	has_attached_file :pdfFile
	validates_attachment :pdfFile, content_type: { content_type: "application/pdf" }

end
