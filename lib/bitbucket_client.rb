=begin
#Bitbucket API

#Code against the Bitbucket API to automate simple tasks, embed Bitbucket data into your own site, build mobile or desktop apps, or even add custom UI add-ons into Bitbucket itself using the Connect framework.

The version of the OpenAPI document: 2.0
Contact: support@bitbucket.org
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.1.0-SNAPSHOT

=end

# Common files
require 'bitbucket_client/api_client'
require 'bitbucket_client/api_error'
require 'bitbucket_client/version'
require 'bitbucket_client/configuration'

# Models
Bitbucket.autoload :Account, 'bitbucket_client/models/account'
Bitbucket.autoload :AccountLinks, 'bitbucket_client/models/account_links'
Bitbucket.autoload :AppUser, 'bitbucket_client/models/app_user'
Bitbucket.autoload :ApplicationProperty, 'bitbucket_client/models/application_property'
Bitbucket.autoload :Author, 'bitbucket_client/models/author'
Bitbucket.autoload :BaseCommit, 'bitbucket_client/models/base_commit'
Bitbucket.autoload :Branch, 'bitbucket_client/models/branch'
Bitbucket.autoload :BranchRestriction, 'bitbucket_client/models/branch_restriction'
Bitbucket.autoload :BranchingModel, 'bitbucket_client/models/branching_model'
Bitbucket.autoload :BranchingModelBranchTypes, 'bitbucket_client/models/branching_model_branch_types'
Bitbucket.autoload :BranchingModelDevelopment, 'bitbucket_client/models/branching_model_development'
Bitbucket.autoload :BranchingModelSettings, 'bitbucket_client/models/branching_model_settings'
Bitbucket.autoload :BranchingModelSettingsBranchTypes, 'bitbucket_client/models/branching_model_settings_branch_types'
Bitbucket.autoload :BranchingModelSettingsDevelopment, 'bitbucket_client/models/branching_model_settings_development'
Bitbucket.autoload :BranchingModelSettingsProduction, 'bitbucket_client/models/branching_model_settings_production'
Bitbucket.autoload :Branchrestriction, 'bitbucket_client/models/branchrestriction'
Bitbucket.autoload :Comment, 'bitbucket_client/models/comment'
Bitbucket.autoload :CommentInline, 'bitbucket_client/models/comment_inline'
Bitbucket.autoload :CommentLinks, 'bitbucket_client/models/comment_links'
Bitbucket.autoload :Commit, 'bitbucket_client/models/commit'
Bitbucket.autoload :CommitComment, 'bitbucket_client/models/commit_comment'
Bitbucket.autoload :CommitFile, 'bitbucket_client/models/commit_file'
Bitbucket.autoload :CommitReport, 'bitbucket_client/models/commit_report'
Bitbucket.autoload :CommitStatus, 'bitbucket_client/models/commit_status'
Bitbucket.autoload :CommitStatusLinks, 'bitbucket_client/models/commit_status_links'
Bitbucket.autoload :Commitstatus, 'bitbucket_client/models/commitstatus'
Bitbucket.autoload :Component, 'bitbucket_client/models/component'
Bitbucket.autoload :DdevReport, 'bitbucket_client/models/ddev_report'
Bitbucket.autoload :DeployKey, 'bitbucket_client/models/deploy_key'
Bitbucket.autoload :Deployment, 'bitbucket_client/models/deployment'
Bitbucket.autoload :DeploymentEnvironment, 'bitbucket_client/models/deployment_environment'
Bitbucket.autoload :DeploymentEnvironmentLock, 'bitbucket_client/models/deployment_environment_lock'
Bitbucket.autoload :DeploymentRelease, 'bitbucket_client/models/deployment_release'
Bitbucket.autoload :DeploymentState, 'bitbucket_client/models/deployment_state'
Bitbucket.autoload :DeploymentStateCompleted, 'bitbucket_client/models/deployment_state_completed'
Bitbucket.autoload :DeploymentStateCompletedAllOf, 'bitbucket_client/models/deployment_state_completed_all_of'
Bitbucket.autoload :DeploymentStateCompletedStatus, 'bitbucket_client/models/deployment_state_completed_status'
Bitbucket.autoload :DeploymentStateCompletedStatusFailed, 'bitbucket_client/models/deployment_state_completed_status_failed'
Bitbucket.autoload :DeploymentStateCompletedStatusFailedAllOf, 'bitbucket_client/models/deployment_state_completed_status_failed_all_of'
Bitbucket.autoload :DeploymentStateCompletedStatusStopped, 'bitbucket_client/models/deployment_state_completed_status_stopped'
Bitbucket.autoload :DeploymentStateCompletedStatusStoppedAllOf, 'bitbucket_client/models/deployment_state_completed_status_stopped_all_of'
Bitbucket.autoload :DeploymentStateCompletedStatusSuccessful, 'bitbucket_client/models/deployment_state_completed_status_successful'
Bitbucket.autoload :DeploymentStateCompletedStatusSuccessfulAllOf, 'bitbucket_client/models/deployment_state_completed_status_successful_all_of'
Bitbucket.autoload :DeploymentStateInProgress, 'bitbucket_client/models/deployment_state_in_progress'
Bitbucket.autoload :DeploymentStateInProgressAllOf, 'bitbucket_client/models/deployment_state_in_progress_all_of'
Bitbucket.autoload :DeploymentStateUndeployed, 'bitbucket_client/models/deployment_state_undeployed'
Bitbucket.autoload :DeploymentStateUndeployedAllOf, 'bitbucket_client/models/deployment_state_undeployed_all_of'
Bitbucket.autoload :DeploymentVariable, 'bitbucket_client/models/deployment_variable'
Bitbucket.autoload :DeploymentsDdevDeploymentEnvironment, 'bitbucket_client/models/deployments_ddev_deployment_environment'
Bitbucket.autoload :DeploymentsDdevDeploymentEnvironmentLock, 'bitbucket_client/models/deployments_ddev_deployment_environment_lock'
Bitbucket.autoload :DeploymentsDdevPaginatedEnvironments, 'bitbucket_client/models/deployments_ddev_paginated_environments'
Bitbucket.autoload :DeploymentsStgWestDeploymentEnvironment, 'bitbucket_client/models/deployments_stg_west_deployment_environment'
Bitbucket.autoload :DeploymentsStgWestDeploymentEnvironmentLock, 'bitbucket_client/models/deployments_stg_west_deployment_environment_lock'
Bitbucket.autoload :DeploymentsStgWestPaginatedEnvironments, 'bitbucket_client/models/deployments_stg_west_paginated_environments'
Bitbucket.autoload :Diffstat, 'bitbucket_client/models/diffstat'
Bitbucket.autoload :Error, 'bitbucket_client/models/error'
Bitbucket.autoload :ErrorError, 'bitbucket_client/models/error_error'
Bitbucket.autoload :ExportOptions, 'bitbucket_client/models/export_options'
Bitbucket.autoload :Group, 'bitbucket_client/models/group'
Bitbucket.autoload :GroupLinks, 'bitbucket_client/models/group_links'
Bitbucket.autoload :HookEvent, 'bitbucket_client/models/hook_event'
Bitbucket.autoload :Issue, 'bitbucket_client/models/issue'
Bitbucket.autoload :IssueAttachment, 'bitbucket_client/models/issue_attachment'
Bitbucket.autoload :IssueChange, 'bitbucket_client/models/issue_change'
Bitbucket.autoload :IssueChangeChanges, 'bitbucket_client/models/issue_change_changes'
Bitbucket.autoload :IssueChangeChangesAssignee, 'bitbucket_client/models/issue_change_changes_assignee'
Bitbucket.autoload :IssueChangeLinks, 'bitbucket_client/models/issue_change_links'
Bitbucket.autoload :IssueChangeMessage, 'bitbucket_client/models/issue_change_message'
Bitbucket.autoload :IssueComment, 'bitbucket_client/models/issue_comment'
Bitbucket.autoload :IssueContent, 'bitbucket_client/models/issue_content'
Bitbucket.autoload :IssueJobStatus, 'bitbucket_client/models/issue_job_status'
Bitbucket.autoload :IssueLinks, 'bitbucket_client/models/issue_links'
Bitbucket.autoload :JiraProject, 'bitbucket_client/models/jira_project'
Bitbucket.autoload :JiraSite, 'bitbucket_client/models/jira_site'
Bitbucket.autoload :Link, 'bitbucket_client/models/link'
Bitbucket.autoload :Link1, 'bitbucket_client/models/link1'
Bitbucket.autoload :Milestone, 'bitbucket_client/models/milestone'
Bitbucket.autoload :Object, 'bitbucket_client/models/object'
Bitbucket.autoload :Page, 'bitbucket_client/models/page'
Bitbucket.autoload :PaginatedAccounts, 'bitbucket_client/models/paginated_accounts'
Bitbucket.autoload :PaginatedAnnotations, 'bitbucket_client/models/paginated_annotations'
Bitbucket.autoload :PaginatedBranches, 'bitbucket_client/models/paginated_branches'
Bitbucket.autoload :PaginatedBranchrestrictions, 'bitbucket_client/models/paginated_branchrestrictions'
Bitbucket.autoload :PaginatedChangeset, 'bitbucket_client/models/paginated_changeset'
Bitbucket.autoload :PaginatedCommitComments, 'bitbucket_client/models/paginated_commit_comments'
Bitbucket.autoload :PaginatedCommitstatuses, 'bitbucket_client/models/paginated_commitstatuses'
Bitbucket.autoload :PaginatedComponents, 'bitbucket_client/models/paginated_components'
Bitbucket.autoload :PaginatedDeployKeys, 'bitbucket_client/models/paginated_deploy_keys'
Bitbucket.autoload :PaginatedDeploymentVariable, 'bitbucket_client/models/paginated_deployment_variable'
Bitbucket.autoload :PaginatedDeployments, 'bitbucket_client/models/paginated_deployments'
Bitbucket.autoload :PaginatedDiffstats, 'bitbucket_client/models/paginated_diffstats'
Bitbucket.autoload :PaginatedEnvironments, 'bitbucket_client/models/paginated_environments'
Bitbucket.autoload :PaginatedFiles, 'bitbucket_client/models/paginated_files'
Bitbucket.autoload :PaginatedHookEvents, 'bitbucket_client/models/paginated_hook_events'
Bitbucket.autoload :PaginatedIssueAttachments, 'bitbucket_client/models/paginated_issue_attachments'
Bitbucket.autoload :PaginatedIssueComments, 'bitbucket_client/models/paginated_issue_comments'
Bitbucket.autoload :PaginatedIssues, 'bitbucket_client/models/paginated_issues'
Bitbucket.autoload :PaginatedLogEntries, 'bitbucket_client/models/paginated_log_entries'
Bitbucket.autoload :PaginatedMilestones, 'bitbucket_client/models/paginated_milestones'
Bitbucket.autoload :PaginatedPipelineCaches, 'bitbucket_client/models/paginated_pipeline_caches'
Bitbucket.autoload :PaginatedPipelineKnownHosts, 'bitbucket_client/models/paginated_pipeline_known_hosts'
Bitbucket.autoload :PaginatedPipelineScheduleExecutions, 'bitbucket_client/models/paginated_pipeline_schedule_executions'
Bitbucket.autoload :PaginatedPipelineSchedules, 'bitbucket_client/models/paginated_pipeline_schedules'
Bitbucket.autoload :PaginatedPipelineSteps, 'bitbucket_client/models/paginated_pipeline_steps'
Bitbucket.autoload :PaginatedPipelineVariables, 'bitbucket_client/models/paginated_pipeline_variables'
Bitbucket.autoload :PaginatedPipelines, 'bitbucket_client/models/paginated_pipelines'
Bitbucket.autoload :PaginatedProjects, 'bitbucket_client/models/paginated_projects'
Bitbucket.autoload :PaginatedPullrequestComments, 'bitbucket_client/models/paginated_pullrequest_comments'
Bitbucket.autoload :PaginatedPullrequests, 'bitbucket_client/models/paginated_pullrequests'
Bitbucket.autoload :PaginatedRefs, 'bitbucket_client/models/paginated_refs'
Bitbucket.autoload :PaginatedReports, 'bitbucket_client/models/paginated_reports'
Bitbucket.autoload :PaginatedRepositories, 'bitbucket_client/models/paginated_repositories'
Bitbucket.autoload :PaginatedRepositoryGroupPermissions, 'bitbucket_client/models/paginated_repository_group_permissions'
Bitbucket.autoload :PaginatedRepositoryPermissions, 'bitbucket_client/models/paginated_repository_permissions'
Bitbucket.autoload :PaginatedRepositoryUserPermissions, 'bitbucket_client/models/paginated_repository_user_permissions'
Bitbucket.autoload :PaginatedSnippetComments, 'bitbucket_client/models/paginated_snippet_comments'
Bitbucket.autoload :PaginatedSnippetCommit, 'bitbucket_client/models/paginated_snippet_commit'
Bitbucket.autoload :PaginatedSnippets, 'bitbucket_client/models/paginated_snippets'
Bitbucket.autoload :PaginatedSshUserKeys, 'bitbucket_client/models/paginated_ssh_user_keys'
Bitbucket.autoload :PaginatedTags, 'bitbucket_client/models/paginated_tags'
Bitbucket.autoload :PaginatedTreeentries, 'bitbucket_client/models/paginated_treeentries'
Bitbucket.autoload :PaginatedVersions, 'bitbucket_client/models/paginated_versions'
Bitbucket.autoload :PaginatedWebhookSubscriptions, 'bitbucket_client/models/paginated_webhook_subscriptions'
Bitbucket.autoload :PaginatedWorkspaceMemberships, 'bitbucket_client/models/paginated_workspace_memberships'
Bitbucket.autoload :PaginatedWorkspaces, 'bitbucket_client/models/paginated_workspaces'
Bitbucket.autoload :Participant, 'bitbucket_client/models/participant'
Bitbucket.autoload :Pipeline, 'bitbucket_client/models/pipeline'
Bitbucket.autoload :PipelineBuildNumber, 'bitbucket_client/models/pipeline_build_number'
Bitbucket.autoload :PipelineCache, 'bitbucket_client/models/pipeline_cache'
Bitbucket.autoload :PipelineCacheContentUri, 'bitbucket_client/models/pipeline_cache_content_uri'
Bitbucket.autoload :PipelineCommand, 'bitbucket_client/models/pipeline_command'
Bitbucket.autoload :PipelineCommitTarget, 'bitbucket_client/models/pipeline_commit_target'
Bitbucket.autoload :PipelineCompletedError, 'bitbucket_client/models/pipeline_completed_error'
Bitbucket.autoload :PipelineCompletedState, 'bitbucket_client/models/pipeline_completed_state'
Bitbucket.autoload :PipelineError, 'bitbucket_client/models/pipeline_error'
Bitbucket.autoload :PipelineImage, 'bitbucket_client/models/pipeline_image'
Bitbucket.autoload :PipelineInProgressState, 'bitbucket_client/models/pipeline_in_progress_state'
Bitbucket.autoload :PipelineKnownHost, 'bitbucket_client/models/pipeline_known_host'
Bitbucket.autoload :PipelinePendingState, 'bitbucket_client/models/pipeline_pending_state'
Bitbucket.autoload :PipelineRefTarget, 'bitbucket_client/models/pipeline_ref_target'
Bitbucket.autoload :PipelineSSHKeyPair, 'bitbucket_client/models/pipeline_ssh_key_pair'
Bitbucket.autoload :PipelineSSHPublicKey, 'bitbucket_client/models/pipeline_ssh_public_key'
Bitbucket.autoload :PipelineSchedule, 'bitbucket_client/models/pipeline_schedule'
Bitbucket.autoload :PipelineScheduleExecution, 'bitbucket_client/models/pipeline_schedule_execution'
Bitbucket.autoload :PipelineScheduleExecutionErrored, 'bitbucket_client/models/pipeline_schedule_execution_errored'
Bitbucket.autoload :PipelineScheduleExecutionErroredAllOf, 'bitbucket_client/models/pipeline_schedule_execution_errored_all_of'
Bitbucket.autoload :PipelineScheduleExecutionExecuted, 'bitbucket_client/models/pipeline_schedule_execution_executed'
Bitbucket.autoload :PipelineScheduleExecutionExecutedAllOf, 'bitbucket_client/models/pipeline_schedule_execution_executed_all_of'
Bitbucket.autoload :PipelineSelector, 'bitbucket_client/models/pipeline_selector'
Bitbucket.autoload :PipelineSshKeyPair, 'bitbucket_client/models/pipeline_ssh_key_pair'
Bitbucket.autoload :PipelineSshPublicKey, 'bitbucket_client/models/pipeline_ssh_public_key'
Bitbucket.autoload :PipelineState, 'bitbucket_client/models/pipeline_state'
Bitbucket.autoload :PipelineStateCompleted, 'bitbucket_client/models/pipeline_state_completed'
Bitbucket.autoload :PipelineStateCompletedError, 'bitbucket_client/models/pipeline_state_completed_error'
Bitbucket.autoload :PipelineStateCompletedExpired, 'bitbucket_client/models/pipeline_state_completed_expired'
Bitbucket.autoload :PipelineStateCompletedExpiredAllOf, 'bitbucket_client/models/pipeline_state_completed_expired_all_of'
Bitbucket.autoload :PipelineStateCompletedFailed, 'bitbucket_client/models/pipeline_state_completed_failed'
Bitbucket.autoload :PipelineStateCompletedFailedAllOf, 'bitbucket_client/models/pipeline_state_completed_failed_all_of'
Bitbucket.autoload :PipelineStateCompletedResult, 'bitbucket_client/models/pipeline_state_completed_result'
Bitbucket.autoload :PipelineStateCompletedStopped, 'bitbucket_client/models/pipeline_state_completed_stopped'
Bitbucket.autoload :PipelineStateCompletedStoppedAllOf, 'bitbucket_client/models/pipeline_state_completed_stopped_all_of'
Bitbucket.autoload :PipelineStateCompletedSuccessful, 'bitbucket_client/models/pipeline_state_completed_successful'
Bitbucket.autoload :PipelineStateCompletedSuccessfulAllOf, 'bitbucket_client/models/pipeline_state_completed_successful_all_of'
Bitbucket.autoload :PipelineStateInProgress, 'bitbucket_client/models/pipeline_state_in_progress'
Bitbucket.autoload :PipelineStateInProgressPaused, 'bitbucket_client/models/pipeline_state_in_progress_paused'
Bitbucket.autoload :PipelineStateInProgressPausedAllOf, 'bitbucket_client/models/pipeline_state_in_progress_paused_all_of'
Bitbucket.autoload :PipelineStateInProgressRunning, 'bitbucket_client/models/pipeline_state_in_progress_running'
Bitbucket.autoload :PipelineStateInProgressRunningAllOf, 'bitbucket_client/models/pipeline_state_in_progress_running_all_of'
Bitbucket.autoload :PipelineStateInProgressStage, 'bitbucket_client/models/pipeline_state_in_progress_stage'
Bitbucket.autoload :PipelineStatePending, 'bitbucket_client/models/pipeline_state_pending'
Bitbucket.autoload :PipelineStep, 'bitbucket_client/models/pipeline_step'
Bitbucket.autoload :PipelineStepError, 'bitbucket_client/models/pipeline_step_error'
Bitbucket.autoload :PipelineStepState, 'bitbucket_client/models/pipeline_step_state'
Bitbucket.autoload :PipelineStepStateCompleted, 'bitbucket_client/models/pipeline_step_state_completed'
Bitbucket.autoload :PipelineStepStateCompletedAllOf, 'bitbucket_client/models/pipeline_step_state_completed_all_of'
Bitbucket.autoload :PipelineStepStateCompletedError, 'bitbucket_client/models/pipeline_step_state_completed_error'
Bitbucket.autoload :PipelineStepStateCompletedErrorAllOf, 'bitbucket_client/models/pipeline_step_state_completed_error_all_of'
Bitbucket.autoload :PipelineStepStateCompletedExpired, 'bitbucket_client/models/pipeline_step_state_completed_expired'
Bitbucket.autoload :PipelineStepStateCompletedExpiredAllOf, 'bitbucket_client/models/pipeline_step_state_completed_expired_all_of'
Bitbucket.autoload :PipelineStepStateCompletedFailed, 'bitbucket_client/models/pipeline_step_state_completed_failed'
Bitbucket.autoload :PipelineStepStateCompletedFailedAllOf, 'bitbucket_client/models/pipeline_step_state_completed_failed_all_of'
Bitbucket.autoload :PipelineStepStateCompletedNotRun, 'bitbucket_client/models/pipeline_step_state_completed_not_run'
Bitbucket.autoload :PipelineStepStateCompletedNotRunAllOf, 'bitbucket_client/models/pipeline_step_state_completed_not_run_all_of'
Bitbucket.autoload :PipelineStepStateCompletedResult, 'bitbucket_client/models/pipeline_step_state_completed_result'
Bitbucket.autoload :PipelineStepStateCompletedStopped, 'bitbucket_client/models/pipeline_step_state_completed_stopped'
Bitbucket.autoload :PipelineStepStateCompletedStoppedAllOf, 'bitbucket_client/models/pipeline_step_state_completed_stopped_all_of'
Bitbucket.autoload :PipelineStepStateCompletedSuccessful, 'bitbucket_client/models/pipeline_step_state_completed_successful'
Bitbucket.autoload :PipelineStepStateCompletedSuccessfulAllOf, 'bitbucket_client/models/pipeline_step_state_completed_successful_all_of'
Bitbucket.autoload :PipelineStepStateInProgress, 'bitbucket_client/models/pipeline_step_state_in_progress'
Bitbucket.autoload :PipelineStepStateInProgressAllOf, 'bitbucket_client/models/pipeline_step_state_in_progress_all_of'
Bitbucket.autoload :PipelineStepStatePending, 'bitbucket_client/models/pipeline_step_state_pending'
Bitbucket.autoload :PipelineStepStatePendingAllOf, 'bitbucket_client/models/pipeline_step_state_pending_all_of'
Bitbucket.autoload :PipelineStepStateReady, 'bitbucket_client/models/pipeline_step_state_ready'
Bitbucket.autoload :PipelineStepStateReadyAllOf, 'bitbucket_client/models/pipeline_step_state_ready_all_of'
Bitbucket.autoload :PipelineTarget, 'bitbucket_client/models/pipeline_target'
Bitbucket.autoload :PipelineTrigger, 'bitbucket_client/models/pipeline_trigger'
Bitbucket.autoload :PipelineTriggerManual, 'bitbucket_client/models/pipeline_trigger_manual'
Bitbucket.autoload :PipelineTriggerPush, 'bitbucket_client/models/pipeline_trigger_push'
Bitbucket.autoload :PipelineVariable, 'bitbucket_client/models/pipeline_variable'
Bitbucket.autoload :PipelinesConfig, 'bitbucket_client/models/pipelines_config'
Bitbucket.autoload :PipelinesConfiguration, 'bitbucket_client/models/pipelines_configuration'
Bitbucket.autoload :PipelinesDdevPipelineStep, 'bitbucket_client/models/pipelines_ddev_pipeline_step'
Bitbucket.autoload :PipelinesStgWestPipelineStep, 'bitbucket_client/models/pipelines_stg_west_pipeline_step'
Bitbucket.autoload :Project, 'bitbucket_client/models/project'
Bitbucket.autoload :ProjectLinks, 'bitbucket_client/models/project_links'
Bitbucket.autoload :PullRequest, 'bitbucket_client/models/pull_request'
Bitbucket.autoload :PullRequestBranch, 'bitbucket_client/models/pull_request_branch'
Bitbucket.autoload :PullRequestComment, 'bitbucket_client/models/pull_request_comment'
Bitbucket.autoload :PullRequestCommit, 'bitbucket_client/models/pull_request_commit'
Bitbucket.autoload :PullRequestCommit1, 'bitbucket_client/models/pull_request_commit1'
Bitbucket.autoload :PullRequestLinks, 'bitbucket_client/models/pull_request_links'
Bitbucket.autoload :Pullrequest, 'bitbucket_client/models/pullrequest'
Bitbucket.autoload :PullrequestComment, 'bitbucket_client/models/pullrequest_comment'
Bitbucket.autoload :PullrequestEndpoint, 'bitbucket_client/models/pullrequest_endpoint'
Bitbucket.autoload :PullrequestMergeParameters, 'bitbucket_client/models/pullrequest_merge_parameters'
Bitbucket.autoload :Ref, 'bitbucket_client/models/ref'
Bitbucket.autoload :RefLinks, 'bitbucket_client/models/ref_links'
Bitbucket.autoload :RenderedPullRequestMarkup, 'bitbucket_client/models/rendered_pull_request_markup'
Bitbucket.autoload :Report, 'bitbucket_client/models/report'
Bitbucket.autoload :ReportAnnotation, 'bitbucket_client/models/report_annotation'
Bitbucket.autoload :ReportData, 'bitbucket_client/models/report_data'
Bitbucket.autoload :Repository, 'bitbucket_client/models/repository'
Bitbucket.autoload :RepositoryGroupPermission, 'bitbucket_client/models/repository_group_permission'
Bitbucket.autoload :RepositoryLinks, 'bitbucket_client/models/repository_links'
Bitbucket.autoload :RepositoryPermission, 'bitbucket_client/models/repository_permission'
Bitbucket.autoload :RepositoryUserPermission, 'bitbucket_client/models/repository_user_permission'
Bitbucket.autoload :RepositoryUserPermissionLinks, 'bitbucket_client/models/repository_user_permission_links'
Bitbucket.autoload :SSHAccountKey, 'bitbucket_client/models/ssh_account_key'
Bitbucket.autoload :SSHKey, 'bitbucket_client/models/ssh_key'
Bitbucket.autoload :SearchCodeSearchResult, 'bitbucket_client/models/search_code_search_result'
Bitbucket.autoload :SearchContentMatch, 'bitbucket_client/models/search_content_match'
Bitbucket.autoload :SearchLine, 'bitbucket_client/models/search_line'
Bitbucket.autoload :SearchResultPage, 'bitbucket_client/models/search_result_page'
Bitbucket.autoload :SearchSegment, 'bitbucket_client/models/search_segment'
Bitbucket.autoload :Snippet, 'bitbucket_client/models/snippet'
Bitbucket.autoload :SnippetComment, 'bitbucket_client/models/snippet_comment'
Bitbucket.autoload :SnippetCommit, 'bitbucket_client/models/snippet_commit'
Bitbucket.autoload :SnippetCommitLinks, 'bitbucket_client/models/snippet_commit_links'
Bitbucket.autoload :SshAccountKey, 'bitbucket_client/models/ssh_account_key'
Bitbucket.autoload :SshKey, 'bitbucket_client/models/ssh_key'
Bitbucket.autoload :StgWestReport, 'bitbucket_client/models/stg_west_report'
Bitbucket.autoload :SubjectTypes, 'bitbucket_client/models/subject_types'
Bitbucket.autoload :SubjectTypesRepository, 'bitbucket_client/models/subject_types_repository'
Bitbucket.autoload :Tag, 'bitbucket_client/models/tag'
Bitbucket.autoload :Team, 'bitbucket_client/models/team'
Bitbucket.autoload :TeamLinks, 'bitbucket_client/models/team_links'
Bitbucket.autoload :Treeentry, 'bitbucket_client/models/treeentry'
Bitbucket.autoload :User, 'bitbucket_client/models/user'
Bitbucket.autoload :UserLinks, 'bitbucket_client/models/user_links'
Bitbucket.autoload :Version, 'bitbucket_client/models/version'
Bitbucket.autoload :VersionLinks, 'bitbucket_client/models/version_links'
Bitbucket.autoload :WebhookSubscription, 'bitbucket_client/models/webhook_subscription'
Bitbucket.autoload :Workspace, 'bitbucket_client/models/workspace'
Bitbucket.autoload :WorkspaceLinks, 'bitbucket_client/models/workspace_links'
Bitbucket.autoload :WorkspaceMembership, 'bitbucket_client/models/workspace_membership'

# APIs
Bitbucket.autoload :AddonApi, 'bitbucket_client/api/addon_api'
Bitbucket.autoload :BranchRestrictionsApi, 'bitbucket_client/api/branch_restrictions_api'
Bitbucket.autoload :BranchingModelApi, 'bitbucket_client/api/branching_model_api'
Bitbucket.autoload :CommitStatusesApi, 'bitbucket_client/api/commit_statuses_api'
Bitbucket.autoload :CommitsApi, 'bitbucket_client/api/commits_api'
Bitbucket.autoload :DeploymentsApi, 'bitbucket_client/api/deployments_api'
Bitbucket.autoload :DownloadsApi, 'bitbucket_client/api/downloads_api'
Bitbucket.autoload :IssueTrackerApi, 'bitbucket_client/api/issue_tracker_api'
Bitbucket.autoload :PipelinesApi, 'bitbucket_client/api/pipelines_api'
Bitbucket.autoload :ProjectsApi, 'bitbucket_client/api/projects_api'
Bitbucket.autoload :PropertiesApi, 'bitbucket_client/api/properties_api'
Bitbucket.autoload :PullrequestsApi, 'bitbucket_client/api/pullrequests_api'
Bitbucket.autoload :RefsApi, 'bitbucket_client/api/refs_api'
Bitbucket.autoload :ReportsApi, 'bitbucket_client/api/reports_api'
Bitbucket.autoload :RepositoriesApi, 'bitbucket_client/api/repositories_api'
Bitbucket.autoload :SearchApi, 'bitbucket_client/api/search_api'
Bitbucket.autoload :SnippetsApi, 'bitbucket_client/api/snippets_api'
Bitbucket.autoload :SourceApi, 'bitbucket_client/api/source_api'
Bitbucket.autoload :SshApi, 'bitbucket_client/api/ssh_api'
Bitbucket.autoload :UsersApi, 'bitbucket_client/api/users_api'
Bitbucket.autoload :WebhooksApi, 'bitbucket_client/api/webhooks_api'
Bitbucket.autoload :WorkspacesApi, 'bitbucket_client/api/workspaces_api'

module Bitbucket
  class << self
    # Customize default settings for the SDK using block.
    #   Bitbucket.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end