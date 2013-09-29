class AccountsController < ApplicationController
    before_action :authenticate_admin!, only: [:index]
    before_action :can_create, only: [:new, :create, :destroy]
    before_action :can_update, only: [:edit, :update]

  before_action :set_account, only: [:change_account_holder, :update_account_holder, :show, :edit, :update, :destroy]

  def change_account_holder
  end

  def update_account_holder
      if ChangeLog.change_account_holder(@account, current_admin, account_holder_params)
          redirect_to @account
      else
          redirect_to @account
      end
  end

  # GET /accounts
  # GET /accounts.json
  def index
    @accounts = Account.all
  end

  # GET /accounts/1
  # GET /accounts/1.json
  def show
  end

  # GET /accounts/new
  def new
    @account = Account.new
  end

  # GET /accounts/1/edit
  def edit
  end

  # POST /accounts
  # POST /accounts.json
  def create
    @account = Account.new(account_params)

    respond_to do |format|
      if @account.save
          ChangeLog.account_created(@account.id, current_admin.id)
        format.html { redirect_to @account, notice: 'Account was successfully created.' }
        format.json { render action: 'show', status: :created, location: @account }
      else
        format.html { render action: 'new' }
        format.json { render json: @account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accounts/1
  # PATCH/PUT /accounts/1.json
  def update
    respond_to do |format|
      if @account.update(account_params)
        format.html { redirect_to @account, notice: 'Account was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accounts/1
  # DELETE /accounts/1.json
  def destroy
    @account.destroy
    respond_to do |format|
      format.html { redirect_to accounts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account
      @account = Account.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def account_params
      params.require(:account).permit(:accno, :plotno, :address, :area_id, :catagory_id, :property_value, :hecter, :description, :land_value, :improved, :TRV)
    end

    def account_holder_params
        params.permit(:account_holder_id, :comments, :supporting_documents)
    end
end
