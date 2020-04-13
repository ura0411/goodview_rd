class FormsController < ApplicationController

  def index
    @forms = Forms.new forms_params
  end

  def add
    @forms = Forms.new forms_params
    if @forms.save then
      redirect_to '/forms/thanks'
    else
      render 'forms/index'
    end
  end

  def thanks
    
  end

  # def add
  #   p "mu- this is add!!!!"
  #   if request.post? then
  #     Forms.create(forms_params)
  #     gothanks
  #   else
  #     @form = Form.new
  #   end 
  # end

  def show
    @forms = Forms.all()
  end

  def edit
    @forms = Forms.find(params[:id])
    if request.patch? then
      p @forms
      @forms.update(forms_params_with_require)
      goshow
    end
  end

  def delete
    Forms.find(params[:id]).destroy
    goshow
  end

  private
  def forms_params
    p params
    params.permit(:name, :mail, :content)
  end

  def forms_params_with_require
    p params
    params.require(:forms).permit(:name, :mail, :content)
  end

  def gothanks
    redirect_to '/forms/thanks'
  end

  def goshow
    redirect_to '/forms/show'
  end

end
