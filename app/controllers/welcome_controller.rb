class WelcomeController < ApplicationController
  def index
    flash[:notice]="早安@您好！"
    flash[:alert]="这是alert信息"
    flash[:warning]="这是warning信息"
  end
end
