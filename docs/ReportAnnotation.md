# Bitbucket::ReportAnnotation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_id** | **String** | ID of the annotation provided by the annotation creator. It can be used to identify the annotation as an alternative to it&#39;s generated uuid. It is not used by Bitbucket, but only by the annotation creator for updating or deleting this specific annotation. Needs to be unique. | [optional] |
| **uuid** | **String** | The UUID that can be used to identify the annotation. | [optional] |
| **annotation_type** | **String** | The type of the report. | [optional] |
| **path** | **String** | The path of the file on which this annotation should be placed. This is the path of the file relative to the git repository. If no path is provided, then it will appear in the overview modal on all pull requests where the tip of the branch is the given commit, regardless of which files were modified. | [optional] |
| **line** | **Integer** | The line number that the annotation should belong to. If no line number is provided, then it will default to 0 and in a pull request it will appear at the top of the file specified by the path field. | [optional] |
| **summary** | **String** | The message to display to users. | [optional] |
| **details** | **String** | The details to show to users when clicking on the annotation. | [optional] |
| **result** | **String** | The state of the report. May be set to PENDING and later updated. | [optional] |
| **severity** | **String** | The severity of the annotation. | [optional] |
| **link** | **String** | A URL linking to the annotation in an external tool. | [optional] |
| **created_on** | **Time** | The timestamp when the report was created. | [optional] |
| **updated_on** | **Time** | The timestamp when the report was updated. | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::ReportAnnotation.new(
  external_id: null,
  uuid: null,
  annotation_type: null,
  path: null,
  line: null,
  summary: null,
  details: null,
  result: null,
  severity: null,
  link: null,
  created_on: null,
  updated_on: null
)
```

