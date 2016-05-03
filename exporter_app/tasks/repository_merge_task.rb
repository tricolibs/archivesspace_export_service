require 'fileutils'

class RepositoryMergeTask < TaskInterface

  def initialize(task_params, job_identifier, workspace_base)
    @workspace_directory = workspace_base
    @jobs_to_merge = task_params.fetch(:jobs_to_merge)
    @git_remote = task_params.fetch(:git_remote)
  end

  def call(process)
    repositories = @jobs_to_merge.map {|id| ExporterApp.workspace_for_job(id)}

    runner = ShellRunner.new("scripts/repository_merge.sh")
    runner.call(self, *repositories)
  end

  def exported_variables
    {
      :workspace_directory => @workspace_directory,
      :exported_directory => ExportEADTask::EXPORTED_DIR,
      :git_remote => @git_remote
    }
  end

end