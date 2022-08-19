=begin
#Bitbucket API

#Code against the Bitbucket API to automate simple tasks, embed Bitbucket data into your own site, build mobile or desktop apps, or even add custom UI add-ons into Bitbucket itself using the Connect framework.

The version of the OpenAPI document: 2.0
Contact: support@bitbucket.org
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.1.0-SNAPSHOT

=end

# Common files
require 'bitbucket/api_client'
require 'bitbucket/api_error'
require 'bitbucket/version'
require 'bitbucket/configuration'

# Models
Bitbucket.autoload :Account, 'bitbucket/models/account'
Bitbucket.autoload :AccountLinks, 'bitbucket/models/account_links'
Bitbucket.autoload :AppUser, 'bitbucket/models/app_user'
Bitbucket.autoload :ApplicationProperty, 'bitbucket/models/application_property'
Bitbucket.autoload :Author, 'bitbucket/models/author'
Bitbucket.autoload :BaseCommit, 'bitbucket/models/base_commit'
Bitbucket.autoload :Branch, 'bitbucket/models/branch'
Bitbucket.autoload :BranchRestriction, 'bitbucket/models/branch_restriction'
Bitbucket.autoload :BranchingModel, 'bitbucket/models/branching_model'
Bitbucket.autoload :BranchingModelBranchTypes, 'bitbucket/models/branching_model_branch_types'
Bitbucket.autoload :BranchingModelDevelopment, 'bitbucket/models/branching_model_development'
Bitbucket.autoload :BranchingModelSettings, 'bitbucket/models/branching_model_settings'
Bitbucket.autoload :BranchingModelSettingsBranchTypes, 'bitbucket/models/branching_model_settings_branch_types'
Bitbucket.autoload :BranchingModelSettingsDevelopment, 'bitbucket/models/branching_model_settings_development'
Bitbucket.autoload :BranchingModelSettingsProduction, 'bitbucket/models/branching_model_settings_production'
Bitbucket.autoload :Branchrestriction, 'bitbucket/models/branchrestriction'
Bitbucket.autoload :Comment, 'bitbucket/models/comment'
Bitbucket.autoload :CommentInline, 'bitbucket/models/comment_inline'
Bitbucket.autoload :CommentLinks, 'bitbucket/models/comment_links'
Bitbucket.autoload :Commit, 'bitbucket/models/commit'
Bitbucket.autoload :CommitComment, 'bitbucket/models/commit_comment'
Bitbucket.autoload :CommitFile, 'bitbucket/models/commit_file'
Bitbucket.autoload :CommitReport, 'bitbucket/models/commit_report'
Bitbucket.autoload :CommitStatus, 'bitbucket/models/commit_status'
Bitbucket.autoload :CommitStatusLinks, 'bitbucket/models/commit_status_links'
Bitbucket.autoload :Commitstatus, 'bitbucket/models/commitstatus'
Bitbucket.autoload :Component, 'bitbucket/models/component'
Bitbucket.autoload :DdevReport, 'bitbucket/models/ddev_report'
Bitbucket.autoload :DeployKey, 'bitbucket/models/deploy_key'
Bitbucket.autoload :Deployment, 'bitbucket/models/deployment'
Bitbucket.autoload :DeploymentEnvironment, 'bitbucket/models/deployment_environment'
Bitbucket.autoload :DeploymentEnvironmentLock, 'bitbucket/models/deployment_environment_lock'
Bitbucket.autoload :DeploymentRelease, 'bitbucket/models/deployment_release'
Bitbucket.autoload :DeploymentState, 'bitbucket/models/deployment_state'
Bitbucket.autoload :DeploymentStateCompleted, 'bitbucket/models/deployment_state_completed'
Bitbucket.autoload :DeploymentStateCompletedAllOf, 'bitbucket/models/deployment_state_completed_all_of'
Bitbucket.autoload :DeploymentStateCompletedStatus, 'bitbucket/models/deployment_state_completed_status'
Bitbucket.autoload :DeploymentStateCompletedStatusFailed, 'bitbucket/models/deployment_state_completed_status_failed'
Bitbucket.autoload :DeploymentStateCompletedStatusFailedAllOf, 'bitbucket/models/deployment_state_completed_status_failed_all_of'
Bitbucket.autoload :DeploymentStateCompletedStatusStopped, 'bitbucket/models/deployment_state_completed_status_stopped'
Bitbucket.autoload :DeploymentStateCompletedStatusStoppedAllOf, 'bitbucket/models/deployment_state_completed_status_stopped_all_of'
Bitbucket.autoload :DeploymentStateCompletedStatusSuccessful, 'bitbucket/models/deployment_state_completed_status_successful'
Bitbucket.autoload :DeploymentStateCompletedStatusSuccessfulAllOf, 'bitbucket/models/deployment_state_completed_status_successful_all_of'
Bitbucket.autoload :DeploymentStateInProgress, 'bitbucket/models/deployment_state_in_progress'
Bitbucket.autoload :DeploymentStateInProgressAllOf, 'bitbucket/models/deployment_state_in_progress_all_of'
Bitbucket.autoload :DeploymentStateUndeployed, 'bitbucket/models/deployment_state_undeployed'
Bitbucket.autoload :DeploymentStateUndeployedAllOf, 'bitbucket/models/deployment_state_undeployed_all_of'
Bitbucket.autoload :DeploymentVariable, 'bitbucket/models/deployment_variable'
Bitbucket.autoload :DeploymentsDdevDeploymentEnvironment, 'bitbucket/models/deployments_ddev_deployment_environment'
Bitbucket.autoload :DeploymentsDdevDeploymentEnvironmentLock, 'bitbucket/models/deployments_ddev_deployment_environment_lock'
Bitbucket.autoload :DeploymentsDdevPaginatedEnvironments, 'bitbucket/models/deployments_ddev_paginated_environments'
Bitbucket.autoload :DeploymentsStgWestDeploymentEnvironment, 'bitbucket/models/deployments_stg_west_deployment_environment'
Bitbucket.autoload :DeploymentsStgWestDeploymentEnvironmentLock, 'bitbucket/models/deployments_stg_west_deployment_environment_lock'
Bitbucket.autoload :DeploymentsStgWestPaginatedEnvironments, 'bitbucket/models/deployments_stg_west_paginated_environments'
Bitbucket.autoload :Diffstat, 'bitbucket/models/diffstat'
Bitbucket.autoload :Error, 'bitbucket/models/error'
Bitbucket.autoload :ErrorError, 'bitbucket/models/error_error'
Bitbucket.autoload :ExportOptions, 'bitbucket/models/export_options'
Bitbucket.autoload :Group, 'bitbucket/models/group'
Bitbucket.autoload :GroupLinks, 'bitbucket/models/group_links'
Bitbucket.autoload :HookEvent, 'bitbucket/models/hook_event'
Bitbucket.autoload :Issue, 'bitbucket/models/issue'
Bitbucket.autoload :IssueAttachment, 'bitbucket/models/issue_attachment'
Bitbucket.autoload :IssueChange, 'bitbucket/models/issue_change'
Bitbucket.autoload :IssueChangeChanges, 'bitbucket/models/issue_change_changes'
Bitbucket.autoload :IssueChangeChangesAssignee, 'bitbucket/models/issue_change_changes_assignee'
Bitbucket.autoload :IssueChangeLinks, 'bitbucket/models/issue_change_links'
Bitbucket.autoload :IssueChangeMessage, 'bitbucket/models/issue_change_message'
Bitbucket.autoload :IssueComment, 'bitbucket/models/issue_comment'
Bitbucket.autoload :IssueContent, 'bitbucket/models/issue_content'
Bitbucket.autoload :IssueJobStatus, 'bitbucket/models/issue_job_status'
Bitbucket.autoload :IssueLinks, 'bitbucket/models/issue_links'
Bitbucket.autoload :JiraProject, 'bitbucket/models/jira_project'
Bitbucket.autoload :JiraSite, 'bitbucket/models/jira_site'
Bitbucket.autoload :Link, 'bitbucket/models/link'
Bitbucket.autoload :Link1, 'bitbucket/models/link1'
Bitbucket.autoload :Milestone, 'bitbucket/models/milestone'
Bitbucket.autoload :Object, 'bitbucket/models/object'
Bitbucket.autoload :Page, 'bitbucket/models/page'
Bitbucket.autoload :PaginatedAccounts, 'bitbucket/models/paginated_accounts'
Bitbucket.autoload :PaginatedAnnotations, 'bitbucket/models/paginated_annotations'
Bitbucket.autoload :PaginatedBranches, 'bitbucket/models/paginated_branches'
Bitbucket.autoload :PaginatedBranchrestrictions, 'bitbucket/models/paginated_branchrestrictions'
Bitbucket.autoload :PaginatedChangeset, 'bitbucket/models/paginated_changeset'
Bitbucket.autoload :PaginatedCommitComments, 'bitbucket/models/paginated_commit_comments'
Bitbucket.autoload :PaginatedCommitstatuses, 'bitbucket/models/paginated_commitstatuses'
Bitbucket.autoload :PaginatedComponents, 'bitbucket/models/paginated_components'
Bitbucket.autoload :PaginatedDeployKeys, 'bitbucket/models/paginated_deploy_keys'
Bitbucket.autoload :PaginatedDeploymentVariable, 'bitbucket/models/paginated_deployment_variable'
Bitbucket.autoload :PaginatedDeployments, 'bitbucket/models/paginated_deployments'
Bitbucket.autoload :PaginatedDiffstats, 'bitbucket/models/paginated_diffstats'
Bitbucket.autoload :PaginatedEnvironments, 'bitbucket/models/paginated_environments'
Bitbucket.autoload :PaginatedFiles, 'bitbucket/models/paginated_files'
Bitbucket.autoload :PaginatedHookEvents, 'bitbucket/models/paginated_hook_events'
Bitbucket.autoload :PaginatedIssueAttachments, 'bitbucket/models/paginated_issue_attachments'
Bitbucket.autoload :PaginatedIssueComments, 'bitbucket/models/paginated_issue_comments'
Bitbucket.autoload :PaginatedIssues, 'bitbucket/models/paginated_issues'
Bitbucket.autoload :PaginatedLogEntries, 'bitbucket/models/paginated_log_entries'
Bitbucket.autoload :PaginatedMilestones, 'bitbucket/models/paginated_milestones'
Bitbucket.autoload :PaginatedPipelineCaches, 'bitbucket/models/paginated_pipeline_caches'
Bitbucket.autoload :PaginatedPipelineKnownHosts, 'bitbucket/models/paginated_pipeline_known_hosts'
Bitbucket.autoload :PaginatedPipelineScheduleExecutions, 'bitbucket/models/paginated_pipeline_schedule_executions'
Bitbucket.autoload :PaginatedPipelineSchedules, 'bitbucket/models/paginated_pipeline_schedules'
Bitbucket.autoload :PaginatedPipelineSteps, 'bitbucket/models/paginated_pipeline_steps'
Bitbucket.autoload :PaginatedPipelineVariables, 'bitbucket/models/paginated_pipeline_variables'
Bitbucket.autoload :PaginatedPipelines, 'bitbucket/models/paginated_pipelines'
Bitbucket.autoload :PaginatedProjects, 'bitbucket/models/paginated_projects'
Bitbucket.autoload :PaginatedPullrequestComments, 'bitbucket/models/paginated_pullrequest_comments'
Bitbucket.autoload :PaginatedPullrequests, 'bitbucket/models/paginated_pullrequests'
Bitbucket.autoload :PaginatedRefs, 'bitbucket/models/paginated_refs'
Bitbucket.autoload :PaginatedReports, 'bitbucket/models/paginated_reports'
Bitbucket.autoload :PaginatedRepositories, 'bitbucket/models/paginated_repositories'
Bitbucket.autoload :PaginatedRepositoryGroupPermissions, 'bitbucket/models/paginated_repository_group_permissions'
Bitbucket.autoload :PaginatedRepositoryPermissions, 'bitbucket/models/paginated_repository_permissions'
Bitbucket.autoload :PaginatedRepositoryUserPermissions, 'bitbucket/models/paginated_repository_user_permissions'
Bitbucket.autoload :PaginatedSnippetComments, 'bitbucket/models/paginated_snippet_comments'
Bitbucket.autoload :PaginatedSnippetCommit, 'bitbucket/models/paginated_snippet_commit'
Bitbucket.autoload :PaginatedSnippets, 'bitbucket/models/paginated_snippets'
Bitbucket.autoload :PaginatedSshUserKeys, 'bitbucket/models/paginated_ssh_user_keys'
Bitbucket.autoload :PaginatedTags, 'bitbucket/models/paginated_tags'
Bitbucket.autoload :PaginatedTreeentries, 'bitbucket/models/paginated_treeentries'
Bitbucket.autoload :PaginatedVersions, 'bitbucket/models/paginated_versions'
Bitbucket.autoload :PaginatedWebhookSubscriptions, 'bitbucket/models/paginated_webhook_subscriptions'
Bitbucket.autoload :PaginatedWorkspaceMemberships, 'bitbucket/models/paginated_workspace_memberships'
Bitbucket.autoload :PaginatedWorkspaces, 'bitbucket/models/paginated_workspaces'
Bitbucket.autoload :Participant, 'bitbucket/models/participant'
Bitbucket.autoload :Pipeline, 'bitbucket/models/pipeline'
Bitbucket.autoload :PipelineBuildNumber, 'bitbucket/models/pipeline_build_number'
Bitbucket.autoload :PipelineCache, 'bitbucket/models/pipeline_cache'
Bitbucket.autoload :PipelineCacheContentUri, 'bitbucket/models/pipeline_cache_content_uri'
Bitbucket.autoload :PipelineCommand, 'bitbucket/models/pipeline_command'
Bitbucket.autoload :PipelineCommitTarget, 'bitbucket/models/pipeline_commit_target'
Bitbucket.autoload :PipelineCompletedError, 'bitbucket/models/pipeline_completed_error'
Bitbucket.autoload :PipelineCompletedState, 'bitbucket/models/pipeline_completed_state'
Bitbucket.autoload :PipelineError, 'bitbucket/models/pipeline_error'
Bitbucket.autoload :PipelineImage, 'bitbucket/models/pipeline_image'
Bitbucket.autoload :PipelineInProgressState, 'bitbucket/models/pipeline_in_progress_state'
Bitbucket.autoload :PipelineKnownHost, 'bitbucket/models/pipeline_known_host'
Bitbucket.autoload :PipelinePendingState, 'bitbucket/models/pipeline_pending_state'
Bitbucket.autoload :PipelineRefTarget, 'bitbucket/models/pipeline_ref_target'
Bitbucket.autoload :PipelineSSHKeyPair, 'bitbucket/models/pipeline_ssh_key_pair'
Bitbucket.autoload :PipelineSSHPublicKey, 'bitbucket/models/pipeline_ssh_public_key'
Bitbucket.autoload :PipelineSchedule, 'bitbucket/models/pipeline_schedule'
Bitbucket.autoload :PipelineScheduleExecution, 'bitbucket/models/pipeline_schedule_execution'
Bitbucket.autoload :PipelineScheduleExecutionErrored, 'bitbucket/models/pipeline_schedule_execution_errored'
Bitbucket.autoload :PipelineScheduleExecutionErroredAllOf, 'bitbucket/models/pipeline_schedule_execution_errored_all_of'
Bitbucket.autoload :PipelineScheduleExecutionExecuted, 'bitbucket/models/pipeline_schedule_execution_executed'
Bitbucket.autoload :PipelineScheduleExecutionExecutedAllOf, 'bitbucket/models/pipeline_schedule_execution_executed_all_of'
Bitbucket.autoload :PipelineSelector, 'bitbucket/models/pipeline_selector'
Bitbucket.autoload :PipelineSshKeyPair, 'bitbucket/models/pipeline_ssh_key_pair'
Bitbucket.autoload :PipelineSshPublicKey, 'bitbucket/models/pipeline_ssh_public_key'
Bitbucket.autoload :PipelineState, 'bitbucket/models/pipeline_state'
Bitbucket.autoload :PipelineStateCompleted, 'bitbucket/models/pipeline_state_completed'
Bitbucket.autoload :PipelineStateCompletedError, 'bitbucket/models/pipeline_state_completed_error'
Bitbucket.autoload :PipelineStateCompletedExpired, 'bitbucket/models/pipeline_state_completed_expired'
Bitbucket.autoload :PipelineStateCompletedExpiredAllOf, 'bitbucket/models/pipeline_state_completed_expired_all_of'
Bitbucket.autoload :PipelineStateCompletedFailed, 'bitbucket/models/pipeline_state_completed_failed'
Bitbucket.autoload :PipelineStateCompletedFailedAllOf, 'bitbucket/models/pipeline_state_completed_failed_all_of'
Bitbucket.autoload :PipelineStateCompletedResult, 'bitbucket/models/pipeline_state_completed_result'
Bitbucket.autoload :PipelineStateCompletedStopped, 'bitbucket/models/pipeline_state_completed_stopped'
Bitbucket.autoload :PipelineStateCompletedStoppedAllOf, 'bitbucket/models/pipeline_state_completed_stopped_all_of'
Bitbucket.autoload :PipelineStateCompletedSuccessful, 'bitbucket/models/pipeline_state_completed_successful'
Bitbucket.autoload :PipelineStateCompletedSuccessfulAllOf, 'bitbucket/models/pipeline_state_completed_successful_all_of'
Bitbucket.autoload :PipelineStateInProgress, 'bitbucket/models/pipeline_state_in_progress'
Bitbucket.autoload :PipelineStateInProgressPaused, 'bitbucket/models/pipeline_state_in_progress_paused'
Bitbucket.autoload :PipelineStateInProgressPausedAllOf, 'bitbucket/models/pipeline_state_in_progress_paused_all_of'
Bitbucket.autoload :PipelineStateInProgressRunning, 'bitbucket/models/pipeline_state_in_progress_running'
Bitbucket.autoload :PipelineStateInProgressRunningAllOf, 'bitbucket/models/pipeline_state_in_progress_running_all_of'
Bitbucket.autoload :PipelineStateInProgressStage, 'bitbucket/models/pipeline_state_in_progress_stage'
Bitbucket.autoload :PipelineStatePending, 'bitbucket/models/pipeline_state_pending'
Bitbucket.autoload :PipelineStep, 'bitbucket/models/pipeline_step'
Bitbucket.autoload :PipelineStepError, 'bitbucket/models/pipeline_step_error'
Bitbucket.autoload :PipelineStepState, 'bitbucket/models/pipeline_step_state'
Bitbucket.autoload :PipelineStepStateCompleted, 'bitbucket/models/pipeline_step_state_completed'
Bitbucket.autoload :PipelineStepStateCompletedAllOf, 'bitbucket/models/pipeline_step_state_completed_all_of'
Bitbucket.autoload :PipelineStepStateCompletedError, 'bitbucket/models/pipeline_step_state_completed_error'
Bitbucket.autoload :PipelineStepStateCompletedErrorAllOf, 'bitbucket/models/pipeline_step_state_completed_error_all_of'
Bitbucket.autoload :PipelineStepStateCompletedExpired, 'bitbucket/models/pipeline_step_state_completed_expired'
Bitbucket.autoload :PipelineStepStateCompletedExpiredAllOf, 'bitbucket/models/pipeline_step_state_completed_expired_all_of'
Bitbucket.autoload :PipelineStepStateCompletedFailed, 'bitbucket/models/pipeline_step_state_completed_failed'
Bitbucket.autoload :PipelineStepStateCompletedFailedAllOf, 'bitbucket/models/pipeline_step_state_completed_failed_all_of'
Bitbucket.autoload :PipelineStepStateCompletedNotRun, 'bitbucket/models/pipeline_step_state_completed_not_run'
Bitbucket.autoload :PipelineStepStateCompletedNotRunAllOf, 'bitbucket/models/pipeline_step_state_completed_not_run_all_of'
Bitbucket.autoload :PipelineStepStateCompletedResult, 'bitbucket/models/pipeline_step_state_completed_result'
Bitbucket.autoload :PipelineStepStateCompletedStopped, 'bitbucket/models/pipeline_step_state_completed_stopped'
Bitbucket.autoload :PipelineStepStateCompletedStoppedAllOf, 'bitbucket/models/pipeline_step_state_completed_stopped_all_of'
Bitbucket.autoload :PipelineStepStateCompletedSuccessful, 'bitbucket/models/pipeline_step_state_completed_successful'
Bitbucket.autoload :PipelineStepStateCompletedSuccessfulAllOf, 'bitbucket/models/pipeline_step_state_completed_successful_all_of'
Bitbucket.autoload :PipelineStepStateInProgress, 'bitbucket/models/pipeline_step_state_in_progress'
Bitbucket.autoload :PipelineStepStateInProgressAllOf, 'bitbucket/models/pipeline_step_state_in_progress_all_of'
Bitbucket.autoload :PipelineStepStatePending, 'bitbucket/models/pipeline_step_state_pending'
Bitbucket.autoload :PipelineStepStatePendingAllOf, 'bitbucket/models/pipeline_step_state_pending_all_of'
Bitbucket.autoload :PipelineStepStateReady, 'bitbucket/models/pipeline_step_state_ready'
Bitbucket.autoload :PipelineStepStateReadyAllOf, 'bitbucket/models/pipeline_step_state_ready_all_of'
Bitbucket.autoload :PipelineTarget, 'bitbucket/models/pipeline_target'
Bitbucket.autoload :PipelineTrigger, 'bitbucket/models/pipeline_trigger'
Bitbucket.autoload :PipelineTriggerManual, 'bitbucket/models/pipeline_trigger_manual'
Bitbucket.autoload :PipelineTriggerPush, 'bitbucket/models/pipeline_trigger_push'
Bitbucket.autoload :PipelineVariable, 'bitbucket/models/pipeline_variable'
Bitbucket.autoload :PipelinesConfig, 'bitbucket/models/pipelines_config'
Bitbucket.autoload :PipelinesConfiguration, 'bitbucket/models/pipelines_configuration'
Bitbucket.autoload :PipelinesDdevPipelineStep, 'bitbucket/models/pipelines_ddev_pipeline_step'
Bitbucket.autoload :PipelinesStgWestPipelineStep, 'bitbucket/models/pipelines_stg_west_pipeline_step'
Bitbucket.autoload :Project, 'bitbucket/models/project'
Bitbucket.autoload :ProjectLinks, 'bitbucket/models/project_links'
Bitbucket.autoload :PullRequest, 'bitbucket/models/pull_request'
Bitbucket.autoload :PullRequestBranch, 'bitbucket/models/pull_request_branch'
Bitbucket.autoload :PullRequestComment, 'bitbucket/models/pull_request_comment'
Bitbucket.autoload :PullRequestCommit, 'bitbucket/models/pull_request_commit'
Bitbucket.autoload :PullRequestCommit1, 'bitbucket/models/pull_request_commit1'
Bitbucket.autoload :PullRequestLinks, 'bitbucket/models/pull_request_links'
Bitbucket.autoload :Pullrequest, 'bitbucket/models/pullrequest'
Bitbucket.autoload :PullrequestComment, 'bitbucket/models/pullrequest_comment'
Bitbucket.autoload :PullrequestEndpoint, 'bitbucket/models/pullrequest_endpoint'
Bitbucket.autoload :PullrequestMergeParameters, 'bitbucket/models/pullrequest_merge_parameters'
Bitbucket.autoload :Ref, 'bitbucket/models/ref'
Bitbucket.autoload :RefLinks, 'bitbucket/models/ref_links'
Bitbucket.autoload :RenderedPullRequestMarkup, 'bitbucket/models/rendered_pull_request_markup'
Bitbucket.autoload :Report, 'bitbucket/models/report'
Bitbucket.autoload :ReportAnnotation, 'bitbucket/models/report_annotation'
Bitbucket.autoload :ReportData, 'bitbucket/models/report_data'
Bitbucket.autoload :Repository, 'bitbucket/models/repository'
Bitbucket.autoload :RepositoryGroupPermission, 'bitbucket/models/repository_group_permission'
Bitbucket.autoload :RepositoryLinks, 'bitbucket/models/repository_links'
Bitbucket.autoload :RepositoryPermission, 'bitbucket/models/repository_permission'
Bitbucket.autoload :RepositoryUserPermission, 'bitbucket/models/repository_user_permission'
Bitbucket.autoload :RepositoryUserPermissionLinks, 'bitbucket/models/repository_user_permission_links'
Bitbucket.autoload :SSHAccountKey, 'bitbucket/models/ssh_account_key'
Bitbucket.autoload :SSHKey, 'bitbucket/models/ssh_key'
Bitbucket.autoload :SearchCodeSearchResult, 'bitbucket/models/search_code_search_result'
Bitbucket.autoload :SearchContentMatch, 'bitbucket/models/search_content_match'
Bitbucket.autoload :SearchLine, 'bitbucket/models/search_line'
Bitbucket.autoload :SearchResultPage, 'bitbucket/models/search_result_page'
Bitbucket.autoload :SearchSegment, 'bitbucket/models/search_segment'
Bitbucket.autoload :Snippet, 'bitbucket/models/snippet'
Bitbucket.autoload :SnippetComment, 'bitbucket/models/snippet_comment'
Bitbucket.autoload :SnippetCommit, 'bitbucket/models/snippet_commit'
Bitbucket.autoload :SnippetCommitLinks, 'bitbucket/models/snippet_commit_links'
Bitbucket.autoload :SshAccountKey, 'bitbucket/models/ssh_account_key'
Bitbucket.autoload :SshKey, 'bitbucket/models/ssh_key'
Bitbucket.autoload :StgWestReport, 'bitbucket/models/stg_west_report'
Bitbucket.autoload :SubjectTypes, 'bitbucket/models/subject_types'
Bitbucket.autoload :SubjectTypesRepository, 'bitbucket/models/subject_types_repository'
Bitbucket.autoload :Tag, 'bitbucket/models/tag'
Bitbucket.autoload :Team, 'bitbucket/models/team'
Bitbucket.autoload :TeamLinks, 'bitbucket/models/team_links'
Bitbucket.autoload :Treeentry, 'bitbucket/models/treeentry'
Bitbucket.autoload :User, 'bitbucket/models/user'
Bitbucket.autoload :UserLinks, 'bitbucket/models/user_links'
Bitbucket.autoload :Version, 'bitbucket/models/version'
Bitbucket.autoload :VersionLinks, 'bitbucket/models/version_links'
Bitbucket.autoload :WebhookSubscription, 'bitbucket/models/webhook_subscription'
Bitbucket.autoload :Workspace, 'bitbucket/models/workspace'
Bitbucket.autoload :WorkspaceLinks, 'bitbucket/models/workspace_links'
Bitbucket.autoload :WorkspaceMembership, 'bitbucket/models/workspace_membership'

# APIs
Bitbucket.autoload :AddonApi, 'bitbucket/api/addon_api'
Bitbucket.autoload :BranchRestrictionsApi, 'bitbucket/api/branch_restrictions_api'
Bitbucket.autoload :BranchingModelApi, 'bitbucket/api/branching_model_api'
Bitbucket.autoload :CommitStatusesApi, 'bitbucket/api/commit_statuses_api'
Bitbucket.autoload :CommitsApi, 'bitbucket/api/commits_api'
Bitbucket.autoload :DeploymentsApi, 'bitbucket/api/deployments_api'
Bitbucket.autoload :DownloadsApi, 'bitbucket/api/downloads_api'
Bitbucket.autoload :IssueTrackerApi, 'bitbucket/api/issue_tracker_api'
Bitbucket.autoload :PipelinesApi, 'bitbucket/api/pipelines_api'
Bitbucket.autoload :ProjectsApi, 'bitbucket/api/projects_api'
Bitbucket.autoload :PropertiesApi, 'bitbucket/api/properties_api'
Bitbucket.autoload :PullrequestsApi, 'bitbucket/api/pullrequests_api'
Bitbucket.autoload :RefsApi, 'bitbucket/api/refs_api'
Bitbucket.autoload :ReportsApi, 'bitbucket/api/reports_api'
Bitbucket.autoload :RepositoriesApi, 'bitbucket/api/repositories_api'
Bitbucket.autoload :SearchApi, 'bitbucket/api/search_api'
Bitbucket.autoload :SnippetsApi, 'bitbucket/api/snippets_api'
Bitbucket.autoload :SourceApi, 'bitbucket/api/source_api'
Bitbucket.autoload :SshApi, 'bitbucket/api/ssh_api'
Bitbucket.autoload :UsersApi, 'bitbucket/api/users_api'
Bitbucket.autoload :WebhooksApi, 'bitbucket/api/webhooks_api'
Bitbucket.autoload :WorkspacesApi, 'bitbucket/api/workspaces_api'

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
