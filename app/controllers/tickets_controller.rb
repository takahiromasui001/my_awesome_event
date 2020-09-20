class TicketsController < ApplicationController
  def new
    raise ActionController::RoutingError, 'ログイン状態でTicketsController#newにアクセス'
  end

  def create
    event = Event.find(params[:event_id])
    @ticket = current_user.tickets.build do |t|
      t.event = event
      t.comment = params[:ticket][:comment]
    end

    redirect_to event, notice: 'このイベントに参加表明しました' if @ticket.save
  end

  def destroy
    # tickets = current_user.tickets.find(params[:id])
    tickets = current_user.tickets.find_by!(event_id: params[:event_id])
    tickets.destroy!
    redirect_to event_path(params[:event_id]), notice: 'このイベントをキャンセルしました'
  end
end
