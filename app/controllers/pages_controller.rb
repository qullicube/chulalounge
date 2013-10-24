class PagesController < ApplicationController

  def index
  end

  def nav
  	@id = params[:id]
  	@back = false

  	if(params.has_key?(:back))
  		@back = true
  	end
  end

  def course_index
  	@id = params[:id]
  end
  
  def course_register
  end
end
