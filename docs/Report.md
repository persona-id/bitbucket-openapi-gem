# Bitbucket::Report

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | The UUID that can be used to identify the report. | [optional] |
| **title** | **String** | The title of the report. | [optional] |
| **details** | **String** | A string to describe the purpose of the report. | [optional] |
| **external_id** | **String** | ID of the report provided by the report creator. It can be used to identify the report as an alternative to it&#39;s generated uuid. It is not used by Bitbucket, but only by the report creator for updating or deleting this specific report. Needs to be unique. | [optional] |
| **reporter** | **String** | A string to describe the tool or company who created the report. | [optional] |
| **link** | **String** | A URL linking to the results of the report in an external tool. | [optional] |
| **remote_link_enabled** | **Boolean** | If enabled, a remote link is created in Jira for the issue associated with the commit the report belongs to. | [optional] |
| **logo_url** | **String** | A URL to the report logo. If none is provided, the default insights logo will be used. | [optional] |
| **report_type** | **String** | The type of the report. | [optional] |
| **result** | **String** | The state of the report. May be set to PENDING and later updated. | [optional] |
| **data** | [**Array&lt;ReportData&gt;**](ReportData.md) | An array of data fields to display information on the report. Maximum 10. | [optional] |
| **created_on** | **Time** | The timestamp when the report was created. | [optional] |
| **updated_on** | **Time** | The timestamp when the report was updated. | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::Report.new(
  uuid: null,
  title: null,
  details: null,
  external_id: null,
  reporter: null,
  link: null,
  remote_link_enabled: null,
  logo_url: null,
  report_type: null,
  result: null,
  data: null,
  created_on: null,
  updated_on: null
)
```

