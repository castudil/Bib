class PdfsController < ApplicationController

	def new
		@pdf = Pdf.new
		@bibId = params[:id]
	end

	def create

		fileName = params[:upload][:pdf].original_filename
		pdf = Pdf.new(:pdfFile => params[:upload][:pdf] , :fileName => fileName ,:bib_id => params[:bib_id])
		pdf.save

		redirect_to allbibs_path

	end


	private
	def pdf_params

		params.require(:pdf).permit(:pdfFile,:fileName,:bib_id)
	end



end
