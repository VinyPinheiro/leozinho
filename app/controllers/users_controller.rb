class UsersController < ApplicationController
  before_action :autenticated?

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_url, :notice => "Cadastrado com sucesso!"
    else
      ocurred_errors(@user)
      render :new
    end
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to home_path, flash: { success: 'Dados atualizados com sucesso' }
    else
      ocurred_errors(@user)
      render :edit
    end
  end

  def edit
    @user = current_user
  end

  def destroy
    can_delete?
    if current_user.destroy
      session[:user_id] = nil
      redirect_to log_in_path, flash: { success: 'Dados apagados com sucesso' }
    else
      ocurred_errors(current_user)
      redirect_to home_path
    end
  end

  private
  def user_params
    params[:user].permit(:email, :password, :password_confirmation)
  end

  def can_delete?
    if User.all.size == 1
      redirect_to home_path, flash: { notice: 'Acesso negado' }
    end
  end
end
