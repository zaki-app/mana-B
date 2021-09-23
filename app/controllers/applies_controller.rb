class AppliesController < ApplicationController
  def index
    @applies = Apply.where(admin_id: params[:admin_id])
  end

  # 申請
  def create
    current_user.applies.create(admin_id: apply_params[:admin_id])
    redirect_to admin_url(apply_params[:admin_id]),
                          data: { confirm: "申請を提出しました" }
  end

  def destroy
    @apply = Apply.find(params[:id])
    @apply.destroy!
    @admin = Admin.find(params[:admin_id])
    redirect_to admin_url(@admin), notice: "申請が否決されました"
  end

  private
    
    def apply_params
      params.permit(:admin_id, :user_id)
    end
end
