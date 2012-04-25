class DataTopicsController < ApplicationController
  
  def chart
    @data_topic = DataTopic.find(params[:id])
    
    @h = LazyHighCharts::HighChart.new('chart') do |f|
      f.title({ :text => @data_topic.name })
      f.options[:chart][:defaultSeriesType] = "area"

      @data_topic.data_points.where("country_id in (8, 53, 72, 178, 206)").group_by(&:country).each do |country, country_data_points|
        
        logger.info country.name
        
        f.series(:name => country.name, :data => country_data_points.collect{|d| [d.year, d.value.to_f] })
      end        
    end

    respond_to do |format|
      format.html { render "_chart" }
      format.json { render json: @data_topic }
    end
  end
  
  
  # GET /data_topics
  # GET /data_topics.json
  def index
    @data_topics = DataTopic.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @data_topics }
    end
  end

  # GET /data_topics/1
  # GET /data_topics/1.json
  def show
    @data_topic = DataTopic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @data_topic }
    end
  end

  # GET /data_topics/new
  # GET /data_topics/new.json
  def new
    @data_topic = DataTopic.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @data_topic }
    end
  end

  # GET /data_topics/1/edit
  def edit
    @data_topic = DataTopic.find(params[:id])
  end

  # POST /data_topics
  # POST /data_topics.json
  def create
    @data_topic = DataTopic.new(params[:data_topic])

    respond_to do |format|
      if @data_topic.save
        format.html { redirect_to @data_topic, notice: 'Data topic was successfully created.' }
        format.json { render json: @data_topic, status: :created, location: @data_topic }
      else
        format.html { render action: "new" }
        format.json { render json: @data_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /data_topics/1
  # PUT /data_topics/1.json
  def update
    @data_topic = DataTopic.find(params[:id])

    respond_to do |format|
      if @data_topic.update_attributes(params[:data_topic])
        format.html { redirect_to @data_topic, notice: 'Data topic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @data_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_topics/1
  # DELETE /data_topics/1.json
  def destroy
    @data_topic = DataTopic.find(params[:id])
    @data_topic.destroy

    respond_to do |format|
      format.html { redirect_to data_topics_url }
      format.json { head :no_content }
    end
  end
end
