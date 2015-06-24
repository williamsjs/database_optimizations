class ProcessAssemblyJob < ActiveJob::Base
  queue_as :default

  def perform(assembly, email)
    @assembly = Assembly.where(name: assembly)
    @hits = Hit.where(subject_id: Gene.where(
      sequence_id: Sequence.where(
      assembly_id: Assembly.where(name: name)))).order(:percent_similarity)
    AssemblyMailer.report(@email, @hits, @assembly).deliver_now
  end

end
