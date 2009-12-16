class TransactionsController < ApplicationController
  filter_resource_access
  def formatted_created_at
    created_at.strftime("%Y-%m-%d")
  end

  def index
    transactions = Transaction.find(:all) do
      if params[:_search] == "true"
        user_id        =~ "%#{params[:user_id]}%" if params[:user_id].present?
        character_id   =~ "%#{params[:character_id]}%" if params[:character_id].present?
        amount         =~ "%#{params[:amount]}%" if params[:amount].present?
        category       =~ "%#{params[:category]}%" if params[:category].present?                
        reason         =~ "%#{params[:reason]}%" if params[:reason].present?
        created_at     =~ "%#{params[:created_at]}%" if params[:created_at].present?        
      end
      paginate :page => params[:page], :per_page => params[:rows]      
      order_by "#{params[:sidx]} #{params[:sord]}"
    end

    respond_to do |format|
      format.html
      format.json { render :json => transactions.to_jqgrid_json([:id,"user.name","character.name",:amount,:category,:reason,"created_at.to_s"], 
                                                         params[:page], params[:rows], transactions.total_entries) }
    end
  end
  
  
  def show
    @transaction = Transaction.find(params[:id])
  end
  
  def new
    @transaction = Transaction.new
  end
  
  def create
    @transaction = Transaction.new(params[:transaction])
    if @transaction.save
      transnum = @transaction.id.-1
      flash[:notice] = "Successfully created, this will be editable for one month by visiting " + request.request_uri + "/" + @transaction.id.to_s + "/edit"
      redirect_to transactions_url
    else
      render :action => 'new'
    end
  end
  
  def edit
    @transaction = Transaction.find(params[:id])
  end
  
  def update
    @transaction = Transaction.find(params[:id])
    if @transaction.update_attributes(params[:transaction])
      flash[:notice] = "Successfully updated transaction."
      redirect_to @transaction
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @transaction = Transaction.find(params[:id])
    @transaction.destroy
    flash[:notice] = "Successfully destroyed transaction."
    redirect_to transactions_url
  end
end
