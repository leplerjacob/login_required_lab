class SessionsController < ApplicationController
  def new
  end

  def create
    return redirect_to :login if !params[:name] || params[:name].empty?
    session[:name] = params[:name]
    redirect_to 'application#index'
  end

  def destroy
    session.delete :name
    redirect_to 'application#hello'
  end

end
