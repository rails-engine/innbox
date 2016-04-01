module Innbox
  class MessagesController < ::Innbox::ApplicationController
    def index
      @items = Message.where(receiver_id: current_user.id).recent.includes(:sender).page(params[:page])

      set_seo_meta(t("innbox.nav.pm"))
    end
    
    def new
      @item = Message.new

      set_seo_meta(t("innbox.nav.new"))
    end

    def show
      @item = Message.find_by(id: params[:id], receiver_id: current_user.id)
      @item ||= Message.find_by(id: params[:id], sender_id: current_user.id)
      @item.update_attribute(:read_at, Time.now)
      
      set_seo_meta(t("innbox.nav.pm"))
    end

    def create
      @item = Message.new(message_params)
      @item.sender = current_user

      if @item.save
        redirect_to(messages_path(), notice: t('innbox.pm_created'))
      else
        render action: "new"
      end
    end

    private

    def message_params
      params.require(:message).permit(:receiver_id, :title, :body)
    end
  end
end
