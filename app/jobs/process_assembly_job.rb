class ProcessAssemblyJob < ActiveJob::Base
  queue_as :default

  def perform(assembly, email)
    @assembly = Assembly.where(name: params[:assembly]).take
    @hits = []
    Sequence.where(assembly_id: @assembly.id).find_each do |s|
      Gene.where(sequence_id: s.id).find_each do |g|
        g.hits.each do |h|
          @hits << h
        end
      end
    end

    @hits.sort! {|a, b| b.percent_similarity <=> a.percent_similarity}

    
  end
end