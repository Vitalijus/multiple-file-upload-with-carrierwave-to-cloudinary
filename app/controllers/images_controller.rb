class ImagesController < ApplicationController
  def destroy
  	@image = Image.find(params[:id])
	  @image.destroy
		
	  respond_to do |format|
      format.html { redirect_to :back, notice: 'Image has been deleted' } 
      format.json { head :no_content }
      format.js   { render layout: false}
    end
  end
end
