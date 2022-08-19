=begin
#Bitbucket API

#Code against the Bitbucket API to automate simple tasks, embed Bitbucket data into your own site, build mobile or desktop apps, or even add custom UI add-ons into Bitbucket itself using the Connect framework.

The version of the OpenAPI document: 2.0
Contact: support@bitbucket.org
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.1.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for Bitbucket::DeploymentsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DeploymentsApi' do
  before do
    # run before each test
    @api_instance = Bitbucket::DeploymentsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DeploymentsApi' do
    it 'should create an instance of DeploymentsApi' do
      expect(@api_instance).to be_instance_of(Bitbucket::DeploymentsApi)
    end
  end

  # unit tests for create_environment
  # Create an environment
  # Create an environment.
  # @param workspace This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;.
  # @param repo_slug The repository.
  # @param deployment_environment The environment to create.
  # @param [Hash] opts the optional parameters
  # @return [DeploymentEnvironment]
  describe 'create_environment test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_environment_for_repository
  # Delete an environment
  # Delete an environment
  # @param workspace This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;.
  # @param repo_slug The repository.
  # @param environment_uuid The environment UUID.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_environment_for_repository test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_deployment_for_repository
  # Get a deployment
  # Retrieve a deployment
  # @param workspace This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;.
  # @param repo_slug The repository.
  # @param deployment_uuid The deployment UUID.
  # @param [Hash] opts the optional parameters
  # @return [Deployment]
  describe 'get_deployment_for_repository test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_deployments_for_repository
  # List deployments
  # Find deployments
  # @param workspace This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;.
  # @param repo_slug The repository.
  # @param [Hash] opts the optional parameters
  # @return [PaginatedDeployments]
  describe 'get_deployments_for_repository test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_environment_for_repository
  # Get an environment
  # Retrieve an environment
  # @param workspace This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;.
  # @param repo_slug The repository.
  # @param environment_uuid The environment UUID.
  # @param [Hash] opts the optional parameters
  # @return [DeploymentEnvironment]
  describe 'get_environment_for_repository test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_environments_for_repository
  # List environments
  # Find environments
  # @param workspace This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;.
  # @param repo_slug The repository.
  # @param [Hash] opts the optional parameters
  # @return [PaginatedEnvironments]
  describe 'get_environments_for_repository test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for repositories_workspace_repo_slug_deploy_keys_get
  # List deploy keys
  # Returns all deploy-keys belonging to a repository.  Example: &#x60;&#x60;&#x60; $ curl -H \&quot;Authorization &lt;auth header&gt;\&quot; \\ https://api.bitbucket.org/2.0/repositories/mleu/test/deploy-keys  Output: {     \&quot;pagelen\&quot;: 10,     \&quot;values\&quot;: [         {             \&quot;id\&quot;: 123,             \&quot;key\&quot;: \&quot;ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDAK/b1cHHDr/TEV1JGQl+WjCwStKG6Bhrv0rFpEsYlyTBm1fzN0VOJJYn4ZOPCPJwqse6fGbXntEs+BbXiptR+++HycVgl65TMR0b5ul5AgwrVdZdT7qjCOCgaSV74/9xlHDK8oqgGnfA7ZoBBU+qpVyaloSjBdJfLtPY/xqj4yHnXKYzrtn/uFc4Kp9Tb7PUg9Io3qohSTGJGVHnsVblq/rToJG7L5xIo0OxK0SJSQ5vuId93ZuFZrCNMXj8JDHZeSEtjJzpRCBEXHxpOPhAcbm4MzULgkFHhAVgp4JbkrT99/wpvZ7r9AdkTg7HGqL3rlaDrEcWfL7Lu6TnhBdq5\&quot;,             \&quot;label\&quot;: \&quot;mykey\&quot;,             \&quot;type\&quot;: \&quot;deploy_key\&quot;,             \&quot;created_on\&quot;: \&quot;2018-08-15T23:50:59.993890+00:00\&quot;,             \&quot;repository\&quot;: {                 \&quot;full_name\&quot;: \&quot;mleu/test\&quot;,                 \&quot;name\&quot;: \&quot;test\&quot;,                 \&quot;type\&quot;: \&quot;repository\&quot;,                 \&quot;uuid\&quot;: \&quot;{85d08b4e-571d-44e9-a507-fa476535aa98}\&quot;             },             \&quot;links\&quot;:{                 \&quot;self\&quot;:{                     \&quot;href\&quot;: \&quot;https://api.bitbucket.org/2.0/repositories/mleu/test/deploy-keys/123\&quot;                 }             }             \&quot;last_used\&quot;: null,             \&quot;comment\&quot;: \&quot;mleu@C02W454JHTD8\&quot;         }     ],     \&quot;page\&quot;: 1,     \&quot;size\&quot;: 1 } &#x60;&#x60;&#x60;
  # @param repo_slug This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;. 
  # @param workspace This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;. 
  # @param [Hash] opts the optional parameters
  # @return [PaginatedDeployKeys]
  describe 'repositories_workspace_repo_slug_deploy_keys_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for repositories_workspace_repo_slug_deploy_keys_key_id_delete
  # Delete a deploy key
  # This deletes a deploy key from a repository.  Example: &#x60;&#x60;&#x60; $ curl -XDELETE \\ -H \&quot;Authorization &lt;auth header&gt;\&quot; \\ https://api.bitbucket.org/2.0/repositories/mleu/test/deploy-keys/1234 &#x60;&#x60;&#x60;
  # @param key_id The key ID matching the deploy key.
  # @param repo_slug This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;. 
  # @param workspace This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;. 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'repositories_workspace_repo_slug_deploy_keys_key_id_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for repositories_workspace_repo_slug_deploy_keys_key_id_get
  # Get a deploy key
  # Returns the deploy key belonging to a specific key.  Example: &#x60;&#x60;&#x60; $ curl -H \&quot;Authorization &lt;auth header&gt;\&quot; \\ https://api.bitbucket.org/2.0/repositories/mleu/test/deploy-key/1234  Output: {     \&quot;comment\&quot;: \&quot;mleu@C02W454JHTD8\&quot;,     \&quot;last_used\&quot;: null,     \&quot;links\&quot;: {         \&quot;self\&quot;: {             \&quot;href\&quot;: https://api.bitbucket.org/2.0/repositories/mleu/test/deploy-key/1234\&quot;         }     },     \&quot;repository\&quot;: {         \&quot;full_name\&quot;: \&quot;mleu/test\&quot;,         \&quot;name\&quot;: \&quot;test\&quot;,         \&quot;type\&quot;: \&quot;repository\&quot;,         \&quot;uuid\&quot;: \&quot;{85d08b4e-571d-44e9-a507-fa476535aa98}\&quot;     },     \&quot;label\&quot;: \&quot;mykey\&quot;,     \&quot;created_on\&quot;: \&quot;2018-08-15T23:50:59.993890+00:00\&quot;,     \&quot;key\&quot;: \&quot;ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDAK/b1cHHDr/TEV1JGQl+WjCwStKG6Bhrv0rFpEsYlyTBm1fzN0VOJJYn4ZOPCPJwqse6fGbXntEs+BbXiptR+++HycVgl65TMR0b5ul5AgwrVdZdT7qjCOCgaSV74/9xlHDK8oqgGnfA7ZoBBU+qpVyaloSjBdJfLtPY/xqj4yHnXKYzrtn/uFc4Kp9Tb7PUg9Io3qohSTGJGVHnsVblq/rToJG7L5xIo0OxK0SJSQ5vuId93ZuFZrCNMXj8JDHZeSEtjJzpRCBEXHxpOPhAcbm4MzULgkFHhAVgp4JbkrT99/wpvZ7r9AdkTg7HGqL3rlaDrEcWfL7Lu6TnhBdq5\&quot;,     \&quot;id\&quot;: 1234,     \&quot;type\&quot;: \&quot;deploy_key\&quot; } &#x60;&#x60;&#x60;
  # @param key_id The key ID matching the deploy key.
  # @param repo_slug This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;. 
  # @param workspace This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;. 
  # @param [Hash] opts the optional parameters
  # @return [DeployKey]
  describe 'repositories_workspace_repo_slug_deploy_keys_key_id_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for repositories_workspace_repo_slug_deploy_keys_key_id_put
  # Update a deploy key
  # Create a new deploy key in a repository.  The same key needs to be passed in but the comment and label can change.  Example: &#x60;&#x60;&#x60; $ curl -XPUT \\ -H \&quot;Authorization &lt;auth header&gt;\&quot; \\ -H \&quot;Content-type: application/json\&quot; \\ https://api.bitbucket.org/2.0/repositories/mleu/test/deploy-keys/1234 -d \\ &#39;{     \&quot;label\&quot;: \&quot;newlabel\&quot;,     \&quot;key\&quot;: \&quot;ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDAK/b1cHHDr/TEV1JGQl+WjCwStKG6Bhrv0rFpEsYlyTBm1fzN0VOJJYn4ZOPCPJwqse6fGbXntEs+BbXiptR+++HycVgl65TMR0b5ul5AgwrVdZdT7qjCOCgaSV74/9xlHDK8oqgGnfA7ZoBBU+qpVyaloSjBdJfLtPY/xqj4yHnXKYzrtn/uFc4Kp9Tb7PUg9Io3qohSTGJGVHnsVblq/rToJG7L5xIo0OxK0SJSQ5vuId93ZuFZrCNMXj8JDHZeSEtjJzpRCBEXHxpOPhAcbm4MzULgkFHhAVgp4JbkrT99/wpvZ7r9AdkTg7HGqL3rlaDrEcWfL7Lu6TnhBdq5 newcomment\&quot;, }&#39;  Output: {     \&quot;comment\&quot;: \&quot;newcomment\&quot;,     \&quot;last_used\&quot;: null,     \&quot;links\&quot;: {         \&quot;self\&quot;: {             \&quot;href\&quot;: \&quot;https://api.bitbucket.org/2.0/repositories/mleu/test/deploy-keys/1234\&quot;         }     },     \&quot;repository\&quot;: {         \&quot;full_name\&quot;: \&quot;mleu/test\&quot;,         \&quot;name\&quot;: \&quot;test\&quot;,         \&quot;type\&quot;: \&quot;repository\&quot;,         \&quot;uuid\&quot;: \&quot;{85d08b4e-571d-44e9-a507-fa476535aa98}\&quot;     },     \&quot;label\&quot;: \&quot;newlabel\&quot;,     \&quot;created_on\&quot;: \&quot;2018-08-15T23:50:59.993890+00:00\&quot;,     \&quot;key\&quot;: \&quot;ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDAK/b1cHHDr/TEV1JGQl+WjCwStKG6Bhrv0rFpEsYlyTBm1fzN0VOJJYn4ZOPCPJwqse6fGbXntEs+BbXiptR+++HycVgl65TMR0b5ul5AgwrVdZdT7qjCOCgaSV74/9xlHDK8oqgGnfA7ZoBBU+qpVyaloSjBdJfLtPY/xqj4yHnXKYzrtn/uFc4Kp9Tb7PUg9Io3qohSTGJGVHnsVblq/rToJG7L5xIo0OxK0SJSQ5vuId93ZuFZrCNMXj8JDHZeSEtjJzpRCBEXHxpOPhAcbm4MzULgkFHhAVgp4JbkrT99/wpvZ7r9AdkTg7HGqL3rlaDrEcWfL7Lu6TnhBdq5\&quot;,     \&quot;id\&quot;: 1234,     \&quot;type\&quot;: \&quot;deploy_key\&quot; } &#x60;&#x60;&#x60;
  # @param key_id The key ID matching the deploy key.
  # @param repo_slug This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;. 
  # @param workspace This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;. 
  # @param [Hash] opts the optional parameters
  # @return [DeployKey]
  describe 'repositories_workspace_repo_slug_deploy_keys_key_id_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for repositories_workspace_repo_slug_deploy_keys_post
  # Add a deploy key
  # Create a new deploy key in a repository. Note: If authenticating a deploy key with an OAuth consumer, any changes to the OAuth consumer will subsequently invalidate the deploy key.   Example: &#x60;&#x60;&#x60; $ curl -XPOST \\ -H \&quot;Authorization &lt;auth header&gt;\&quot; \\ -H \&quot;Content-type: application/json\&quot; \\ https://api.bitbucket.org/2.0/repositories/mleu/test/deploy-keys -d \\ &#39;{     \&quot;key\&quot;: \&quot;ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDAK/b1cHHDr/TEV1JGQl+WjCwStKG6Bhrv0rFpEsYlyTBm1fzN0VOJJYn4ZOPCPJwqse6fGbXntEs+BbXiptR+++HycVgl65TMR0b5ul5AgwrVdZdT7qjCOCgaSV74/9xlHDK8oqgGnfA7ZoBBU+qpVyaloSjBdJfLtPY/xqj4yHnXKYzrtn/uFc4Kp9Tb7PUg9Io3qohSTGJGVHnsVblq/rToJG7L5xIo0OxK0SJSQ5vuId93ZuFZrCNMXj8JDHZeSEtjJzpRCBEXHxpOPhAcbm4MzULgkFHhAVgp4JbkrT99/wpvZ7r9AdkTg7HGqL3rlaDrEcWfL7Lu6TnhBdq5 mleu@C02W454JHTD8\&quot;,     \&quot;label\&quot;: \&quot;mydeploykey\&quot; }&#39;  Output: {     \&quot;id\&quot;: 123,     \&quot;key\&quot;: \&quot;ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDAK/b1cHHDr/TEV1JGQl+WjCwStKG6Bhrv0rFpEsYlyTBm1fzN0VOJJYn4ZOPCPJwqse6fGbXntEs+BbXiptR+++HycVgl65TMR0b5ul5AgwrVdZdT7qjCOCgaSV74/9xlHDK8oqgGnfA7ZoBBU+qpVyaloSjBdJfLtPY/xqj4yHnXKYzrtn/uFc4Kp9Tb7PUg9Io3qohSTGJGVHnsVblq/rToJG7L5xIo0OxK0SJSQ5vuId93ZuFZrCNMXj8JDHZeSEtjJzpRCBEXHxpOPhAcbm4MzULgkFHhAVgp4JbkrT99/wpvZ7r9AdkTg7HGqL3rlaDrEcWfL7Lu6TnhBdq5\&quot;,     \&quot;label\&quot;: \&quot;mydeploykey\&quot;,     \&quot;type\&quot;: \&quot;deploy_key\&quot;,     \&quot;created_on\&quot;: \&quot;2018-08-15T23:50:59.993890+00:00\&quot;,     \&quot;repository\&quot;: {         \&quot;full_name\&quot;: \&quot;mleu/test\&quot;,         \&quot;name\&quot;: \&quot;test\&quot;,         \&quot;type\&quot;: \&quot;repository\&quot;,         \&quot;uuid\&quot;: \&quot;{85d08b4e-571d-44e9-a507-fa476535aa98}\&quot;     },     \&quot;links\&quot;:{         \&quot;self\&quot;:{             \&quot;href\&quot;: \&quot;https://api.bitbucket.org/2.0/repositories/mleu/test/deploy-keys/123\&quot;         }     }     \&quot;last_used\&quot;: null,     \&quot;comment\&quot;: \&quot;mleu@C02W454JHTD8\&quot; } &#x60;&#x60;&#x60;
  # @param repo_slug This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;. 
  # @param workspace This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;. 
  # @param [Hash] opts the optional parameters
  # @return [DeployKey]
  describe 'repositories_workspace_repo_slug_deploy_keys_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_environment_for_repository
  # Update an environment
  # Update an environment
  # @param workspace This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;.
  # @param repo_slug The repository.
  # @param environment_uuid The environment UUID.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_environment_for_repository test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end