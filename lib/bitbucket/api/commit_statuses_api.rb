=begin
#Bitbucket API

#Code against the Bitbucket API to automate simple tasks, embed Bitbucket data into your own site, build mobile or desktop apps, or even add custom UI add-ons into Bitbucket itself using the Connect framework.

The version of the OpenAPI document: 2.0
Contact: support@bitbucket.org
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.3.0

=end

require 'cgi'

module Bitbucket
  class CommitStatusesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get a build status for a commit
    # Returns the specified build status for a commit.
    # @param commit [String] The commit&#39;s SHA1.
    # @param key [String] The build status&#39; unique key
    # @param repo_slug [String] This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;. 
    # @param workspace [String] This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;. 
    # @param [Hash] opts the optional parameters
    # @return [Commitstatus]
    def repositories_workspace_repo_slug_commit_commit_statuses_build_key_get(commit, key, repo_slug, workspace, opts = {})
      data, _status_code, _headers = repositories_workspace_repo_slug_commit_commit_statuses_build_key_get_with_http_info(commit, key, repo_slug, workspace, opts)
      data
    end

    # Get a build status for a commit
    # Returns the specified build status for a commit.
    # @param commit [String] The commit&#39;s SHA1.
    # @param key [String] The build status&#39; unique key
    # @param repo_slug [String] This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;. 
    # @param workspace [String] This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Commitstatus, Integer, Hash)>] Commitstatus data, response status code and response headers
    def repositories_workspace_repo_slug_commit_commit_statuses_build_key_get_with_http_info(commit, key, repo_slug, workspace, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommitStatusesApi.repositories_workspace_repo_slug_commit_commit_statuses_build_key_get ...'
      end
      # verify the required parameter 'commit' is set
      if @api_client.config.client_side_validation && commit.nil?
        fail ArgumentError, "Missing the required parameter 'commit' when calling CommitStatusesApi.repositories_workspace_repo_slug_commit_commit_statuses_build_key_get"
      end
      # verify the required parameter 'key' is set
      if @api_client.config.client_side_validation && key.nil?
        fail ArgumentError, "Missing the required parameter 'key' when calling CommitStatusesApi.repositories_workspace_repo_slug_commit_commit_statuses_build_key_get"
      end
      # verify the required parameter 'repo_slug' is set
      if @api_client.config.client_side_validation && repo_slug.nil?
        fail ArgumentError, "Missing the required parameter 'repo_slug' when calling CommitStatusesApi.repositories_workspace_repo_slug_commit_commit_statuses_build_key_get"
      end
      # verify the required parameter 'workspace' is set
      if @api_client.config.client_side_validation && workspace.nil?
        fail ArgumentError, "Missing the required parameter 'workspace' when calling CommitStatusesApi.repositories_workspace_repo_slug_commit_commit_statuses_build_key_get"
      end
      # resource path
      local_var_path = '/repositories/{workspace}/{repo_slug}/commit/{commit}/statuses/build/{key}'.sub('{' + 'commit' + '}', CGI.escape(commit.to_s)).sub('{' + 'key' + '}', CGI.escape(key.to_s)).sub('{' + 'repo_slug' + '}', CGI.escape(repo_slug.to_s)).sub('{' + 'workspace' + '}', CGI.escape(workspace.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Commitstatus'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'basic', 'oauth2']

      new_options = opts.merge(
        :operation => :"CommitStatusesApi.repositories_workspace_repo_slug_commit_commit_statuses_build_key_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommitStatusesApi#repositories_workspace_repo_slug_commit_commit_statuses_build_key_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a build status for a commit
    # Used to update the current status of a build status object on the specific commit.  This operation can also be used to change other properties of the build status:  * `state` * `name` * `description` * `url` * `refname`  The `key` cannot be changed.
    # @param commit [String] The commit&#39;s SHA1.
    # @param key [String] The build status&#39; unique key
    # @param repo_slug [String] This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;. 
    # @param workspace [String] This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;. 
    # @param [Hash] opts the optional parameters
    # @option opts [Commitstatus] :commitstatus The updated build status object
    # @return [Commitstatus]
    def repositories_workspace_repo_slug_commit_commit_statuses_build_key_put(commit, key, repo_slug, workspace, opts = {})
      data, _status_code, _headers = repositories_workspace_repo_slug_commit_commit_statuses_build_key_put_with_http_info(commit, key, repo_slug, workspace, opts)
      data
    end

    # Update a build status for a commit
    # Used to update the current status of a build status object on the specific commit.  This operation can also be used to change other properties of the build status:  * &#x60;state&#x60; * &#x60;name&#x60; * &#x60;description&#x60; * &#x60;url&#x60; * &#x60;refname&#x60;  The &#x60;key&#x60; cannot be changed.
    # @param commit [String] The commit&#39;s SHA1.
    # @param key [String] The build status&#39; unique key
    # @param repo_slug [String] This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;. 
    # @param workspace [String] This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;. 
    # @param [Hash] opts the optional parameters
    # @option opts [Commitstatus] :commitstatus The updated build status object
    # @return [Array<(Commitstatus, Integer, Hash)>] Commitstatus data, response status code and response headers
    def repositories_workspace_repo_slug_commit_commit_statuses_build_key_put_with_http_info(commit, key, repo_slug, workspace, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommitStatusesApi.repositories_workspace_repo_slug_commit_commit_statuses_build_key_put ...'
      end
      # verify the required parameter 'commit' is set
      if @api_client.config.client_side_validation && commit.nil?
        fail ArgumentError, "Missing the required parameter 'commit' when calling CommitStatusesApi.repositories_workspace_repo_slug_commit_commit_statuses_build_key_put"
      end
      # verify the required parameter 'key' is set
      if @api_client.config.client_side_validation && key.nil?
        fail ArgumentError, "Missing the required parameter 'key' when calling CommitStatusesApi.repositories_workspace_repo_slug_commit_commit_statuses_build_key_put"
      end
      # verify the required parameter 'repo_slug' is set
      if @api_client.config.client_side_validation && repo_slug.nil?
        fail ArgumentError, "Missing the required parameter 'repo_slug' when calling CommitStatusesApi.repositories_workspace_repo_slug_commit_commit_statuses_build_key_put"
      end
      # verify the required parameter 'workspace' is set
      if @api_client.config.client_side_validation && workspace.nil?
        fail ArgumentError, "Missing the required parameter 'workspace' when calling CommitStatusesApi.repositories_workspace_repo_slug_commit_commit_statuses_build_key_put"
      end
      # resource path
      local_var_path = '/repositories/{workspace}/{repo_slug}/commit/{commit}/statuses/build/{key}'.sub('{' + 'commit' + '}', CGI.escape(commit.to_s)).sub('{' + 'key' + '}', CGI.escape(key.to_s)).sub('{' + 'repo_slug' + '}', CGI.escape(repo_slug.to_s)).sub('{' + 'workspace' + '}', CGI.escape(workspace.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'commitstatus'])

      # return_type
      return_type = opts[:debug_return_type] || 'Commitstatus'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'basic', 'oauth2']

      new_options = opts.merge(
        :operation => :"CommitStatusesApi.repositories_workspace_repo_slug_commit_commit_statuses_build_key_put",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommitStatusesApi#repositories_workspace_repo_slug_commit_commit_statuses_build_key_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a build status for a commit
    # Creates a new build status against the specified commit.  If the specified key already exists, the existing status object will be overwritten.  Example:  ``` curl https://api.bitbucket.org/2.0/repositories/my-workspace/my-repo/commit/e10dae226959c2194f2b07b077c07762d93821cf/statuses/build/           -X POST -u jdoe -H 'Content-Type: application/json'           -d '{     \"key\": \"MY-BUILD\",     \"state\": \"SUCCESSFUL\",     \"description\": \"42 tests passed\",     \"url\": \"https://www.example.org/my-build-result\"   }' ```  When creating a new commit status, you can use a URI template for the URL. Templates are URLs that contain variable names that Bitbucket will evaluate at runtime whenever the URL is displayed anywhere similar to parameter substitution in [Bitbucket Connect](https://developer.atlassian.com/bitbucket/concepts/context-parameters.html). For example, one could use `https://foo.com/builds/{repository.full_name}` which Bitbucket will turn into `https://foo.com/builds/foo/bar` at render time. The context variables available are `repository` and `commit`.
    # @param commit [String] The commit&#39;s SHA1.
    # @param repo_slug [String] This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;. 
    # @param workspace [String] This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;. 
    # @param [Hash] opts the optional parameters
    # @option opts [Commitstatus] :commitstatus The new commit status object.
    # @return [Commitstatus]
    def repositories_workspace_repo_slug_commit_commit_statuses_build_post(commit, repo_slug, workspace, opts = {})
      data, _status_code, _headers = repositories_workspace_repo_slug_commit_commit_statuses_build_post_with_http_info(commit, repo_slug, workspace, opts)
      data
    end

    # Create a build status for a commit
    # Creates a new build status against the specified commit.  If the specified key already exists, the existing status object will be overwritten.  Example:  &#x60;&#x60;&#x60; curl https://api.bitbucket.org/2.0/repositories/my-workspace/my-repo/commit/e10dae226959c2194f2b07b077c07762d93821cf/statuses/build/           -X POST -u jdoe -H &#39;Content-Type: application/json&#39;           -d &#39;{     \&quot;key\&quot;: \&quot;MY-BUILD\&quot;,     \&quot;state\&quot;: \&quot;SUCCESSFUL\&quot;,     \&quot;description\&quot;: \&quot;42 tests passed\&quot;,     \&quot;url\&quot;: \&quot;https://www.example.org/my-build-result\&quot;   }&#39; &#x60;&#x60;&#x60;  When creating a new commit status, you can use a URI template for the URL. Templates are URLs that contain variable names that Bitbucket will evaluate at runtime whenever the URL is displayed anywhere similar to parameter substitution in [Bitbucket Connect](https://developer.atlassian.com/bitbucket/concepts/context-parameters.html). For example, one could use &#x60;https://foo.com/builds/{repository.full_name}&#x60; which Bitbucket will turn into &#x60;https://foo.com/builds/foo/bar&#x60; at render time. The context variables available are &#x60;repository&#x60; and &#x60;commit&#x60;.
    # @param commit [String] The commit&#39;s SHA1.
    # @param repo_slug [String] This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;. 
    # @param workspace [String] This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;. 
    # @param [Hash] opts the optional parameters
    # @option opts [Commitstatus] :commitstatus The new commit status object.
    # @return [Array<(Commitstatus, Integer, Hash)>] Commitstatus data, response status code and response headers
    def repositories_workspace_repo_slug_commit_commit_statuses_build_post_with_http_info(commit, repo_slug, workspace, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommitStatusesApi.repositories_workspace_repo_slug_commit_commit_statuses_build_post ...'
      end
      # verify the required parameter 'commit' is set
      if @api_client.config.client_side_validation && commit.nil?
        fail ArgumentError, "Missing the required parameter 'commit' when calling CommitStatusesApi.repositories_workspace_repo_slug_commit_commit_statuses_build_post"
      end
      # verify the required parameter 'repo_slug' is set
      if @api_client.config.client_side_validation && repo_slug.nil?
        fail ArgumentError, "Missing the required parameter 'repo_slug' when calling CommitStatusesApi.repositories_workspace_repo_slug_commit_commit_statuses_build_post"
      end
      # verify the required parameter 'workspace' is set
      if @api_client.config.client_side_validation && workspace.nil?
        fail ArgumentError, "Missing the required parameter 'workspace' when calling CommitStatusesApi.repositories_workspace_repo_slug_commit_commit_statuses_build_post"
      end
      # resource path
      local_var_path = '/repositories/{workspace}/{repo_slug}/commit/{commit}/statuses/build'.sub('{' + 'commit' + '}', CGI.escape(commit.to_s)).sub('{' + 'repo_slug' + '}', CGI.escape(repo_slug.to_s)).sub('{' + 'workspace' + '}', CGI.escape(workspace.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'commitstatus'])

      # return_type
      return_type = opts[:debug_return_type] || 'Commitstatus'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'basic', 'oauth2']

      new_options = opts.merge(
        :operation => :"CommitStatusesApi.repositories_workspace_repo_slug_commit_commit_statuses_build_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommitStatusesApi#repositories_workspace_repo_slug_commit_commit_statuses_build_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List commit statuses for a commit
    # Returns all statuses (e.g. build results) for a specific commit.
    # @param commit [String] The commit&#39;s SHA1.
    # @param repo_slug [String] This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;. 
    # @param workspace [String] This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :q Query string to narrow down the response as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering). 
    # @option opts [String] :sort Field by which the results should be sorted as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering). Defaults to &#x60;created_on&#x60;. 
    # @return [PaginatedCommitstatuses]
    def repositories_workspace_repo_slug_commit_commit_statuses_get(commit, repo_slug, workspace, opts = {})
      data, _status_code, _headers = repositories_workspace_repo_slug_commit_commit_statuses_get_with_http_info(commit, repo_slug, workspace, opts)
      data
    end

    # List commit statuses for a commit
    # Returns all statuses (e.g. build results) for a specific commit.
    # @param commit [String] The commit&#39;s SHA1.
    # @param repo_slug [String] This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;. 
    # @param workspace [String] This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :q Query string to narrow down the response as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering). 
    # @option opts [String] :sort Field by which the results should be sorted as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering). Defaults to &#x60;created_on&#x60;. 
    # @return [Array<(PaginatedCommitstatuses, Integer, Hash)>] PaginatedCommitstatuses data, response status code and response headers
    def repositories_workspace_repo_slug_commit_commit_statuses_get_with_http_info(commit, repo_slug, workspace, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommitStatusesApi.repositories_workspace_repo_slug_commit_commit_statuses_get ...'
      end
      # verify the required parameter 'commit' is set
      if @api_client.config.client_side_validation && commit.nil?
        fail ArgumentError, "Missing the required parameter 'commit' when calling CommitStatusesApi.repositories_workspace_repo_slug_commit_commit_statuses_get"
      end
      # verify the required parameter 'repo_slug' is set
      if @api_client.config.client_side_validation && repo_slug.nil?
        fail ArgumentError, "Missing the required parameter 'repo_slug' when calling CommitStatusesApi.repositories_workspace_repo_slug_commit_commit_statuses_get"
      end
      # verify the required parameter 'workspace' is set
      if @api_client.config.client_side_validation && workspace.nil?
        fail ArgumentError, "Missing the required parameter 'workspace' when calling CommitStatusesApi.repositories_workspace_repo_slug_commit_commit_statuses_get"
      end
      # resource path
      local_var_path = '/repositories/{workspace}/{repo_slug}/commit/{commit}/statuses'.sub('{' + 'commit' + '}', CGI.escape(commit.to_s)).sub('{' + 'repo_slug' + '}', CGI.escape(repo_slug.to_s)).sub('{' + 'workspace' + '}', CGI.escape(workspace.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'q'] = opts[:'q'] if !opts[:'q'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PaginatedCommitstatuses'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'basic', 'oauth2']

      new_options = opts.merge(
        :operation => :"CommitStatusesApi.repositories_workspace_repo_slug_commit_commit_statuses_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommitStatusesApi#repositories_workspace_repo_slug_commit_commit_statuses_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List commit statuses for a pull request
    # Returns all statuses (e.g. build results) for the given pull request.
    # @param pull_request_id [Integer] The id of the pull request.
    # @param repo_slug [String] This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;. 
    # @param workspace [String] This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :q Query string to narrow down the response as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering). 
    # @option opts [String] :sort Field by which the results should be sorted as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering). Defaults to &#x60;created_on&#x60;. 
    # @return [PaginatedCommitstatuses]
    def repositories_workspace_repo_slug_pullrequests_pull_request_id_statuses_get(pull_request_id, repo_slug, workspace, opts = {})
      data, _status_code, _headers = repositories_workspace_repo_slug_pullrequests_pull_request_id_statuses_get_with_http_info(pull_request_id, repo_slug, workspace, opts)
      data
    end

    # List commit statuses for a pull request
    # Returns all statuses (e.g. build results) for the given pull request.
    # @param pull_request_id [Integer] The id of the pull request.
    # @param repo_slug [String] This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;. 
    # @param workspace [String] This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :q Query string to narrow down the response as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering). 
    # @option opts [String] :sort Field by which the results should be sorted as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering). Defaults to &#x60;created_on&#x60;. 
    # @return [Array<(PaginatedCommitstatuses, Integer, Hash)>] PaginatedCommitstatuses data, response status code and response headers
    def repositories_workspace_repo_slug_pullrequests_pull_request_id_statuses_get_with_http_info(pull_request_id, repo_slug, workspace, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommitStatusesApi.repositories_workspace_repo_slug_pullrequests_pull_request_id_statuses_get ...'
      end
      # verify the required parameter 'pull_request_id' is set
      if @api_client.config.client_side_validation && pull_request_id.nil?
        fail ArgumentError, "Missing the required parameter 'pull_request_id' when calling CommitStatusesApi.repositories_workspace_repo_slug_pullrequests_pull_request_id_statuses_get"
      end
      # verify the required parameter 'repo_slug' is set
      if @api_client.config.client_side_validation && repo_slug.nil?
        fail ArgumentError, "Missing the required parameter 'repo_slug' when calling CommitStatusesApi.repositories_workspace_repo_slug_pullrequests_pull_request_id_statuses_get"
      end
      # verify the required parameter 'workspace' is set
      if @api_client.config.client_side_validation && workspace.nil?
        fail ArgumentError, "Missing the required parameter 'workspace' when calling CommitStatusesApi.repositories_workspace_repo_slug_pullrequests_pull_request_id_statuses_get"
      end
      # resource path
      local_var_path = '/repositories/{workspace}/{repo_slug}/pullrequests/{pull_request_id}/statuses'.sub('{' + 'pull_request_id' + '}', CGI.escape(pull_request_id.to_s)).sub('{' + 'repo_slug' + '}', CGI.escape(repo_slug.to_s)).sub('{' + 'workspace' + '}', CGI.escape(workspace.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'q'] = opts[:'q'] if !opts[:'q'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PaginatedCommitstatuses'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'basic', 'oauth2']

      new_options = opts.merge(
        :operation => :"CommitStatusesApi.repositories_workspace_repo_slug_pullrequests_pull_request_id_statuses_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommitStatusesApi#repositories_workspace_repo_slug_pullrequests_pull_request_id_statuses_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
