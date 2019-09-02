class MessagesController < ApplicationController
  def index
    # @user=User.find(params[:user_id])
    @messages=Message.all.limit(10)
    respond_to do |format|
      format.json
      format.html

    end
  end


  def new
    @user=User.find(params[:user_id])
    @message=Message.new
  end

  def create
    @message= Message.create(message_params)
    redirect_to root_path
  end

  def edit

  end

  def update
  end

  def destroy
  end

  def message_params
    params.require(:message).permit(:title,:text,:image).merge(user_id:params[:user_id])
  end

  def set_user
    @user=User.find(params[:user_id])
  end
end
