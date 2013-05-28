class ContentParticipationsController < ApplicationController

  # DELETE /contents/1
  # DELETE /contents/1.json
  def destroy
    @content_participation = ContentParticipation.find(params[:id])
    event_id = EventParticipation.find(@content_participation.event_participation_id).event_id

    @content_participation.destroy

    respond_to do |format|
      format.html { redirect_to entry_event_path(event_id) }
      format.json { head :no_content_participation }
    end
  end
end
